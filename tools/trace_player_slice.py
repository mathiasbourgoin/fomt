#!/usr/bin/env python3
"""Compare instruction-level player-slice traces from one deterministic state.

The tool boots through the same recorded path as ``replay_player_slice.py``,
clones the resulting emulator state, then steps an idle and a Right-held
window instruction by instruction.  It records only visits to, and calls out
of, the still-assembled ``sub_080D8178`` script-loop dispatcher.  The report
is evidence for selecting the next movement-path decompilation target; it does
not assign gameplay semantics to an address by itself.
"""

from __future__ import annotations

import argparse
import collections
import json
from pathlib import Path

import mgba.core
import mgba.log
from mgba.image import Image

from replay_player_slice import KEY_RIGHT, boot_to_controllable_scene


mgba.log.silence()

SLICE_START = 0x080D8178
SLICE_END = 0x080DA76C
CALL_VIA_REGISTER = {
    0x080D390C: 0,
    0x080D3910: 1,
    0x080D3914: 2,
    0x080D3918: 3,
    0x080D391C: 4,
}
INPUT_DISPATCH = 0x08050D3C


def clone_core(rom: Path, state: object) -> mgba.core.Core:
    core = mgba.core.load_path(str(rom))
    screen = Image(*core.desired_video_dimensions())
    core.set_video_buffer(screen)
    core.reset()
    core.load_raw_state(state)
    return core


def executing_pc(core: mgba.core.Core) -> int:
    """Return the address being executed, compensating for the ARM pipeline."""

    pipeline = 4 if core.cpu.cpsr.t else 8
    return (core.cpu.pc - pipeline) & 0xFFFFFFFF


def trace_window(core: mgba.core.Core, frames: int, raw_keys: int) -> dict:
    core.set_keys(raw=raw_keys)
    end_frame = core.frame_counter + frames
    visits: collections.Counter[int] = collections.Counter()
    outbound: collections.Counter[tuple[int, int]] = collections.Counter()
    dynamic_calls: collections.Counter[tuple[int, int]] = collections.Counter()
    input_dispatches: collections.Counter[tuple[int, int, int, int, int, int, int]] = collections.Counter()
    instruction_count = 0

    while core.frame_counter < end_frame:
        source = executing_pc(core)
        source_in_slice = SLICE_START <= source < SLICE_END
        registers = tuple(int(core.cpu.gprs[index]) & 0xFFFFFFFF for index in range(5))
        if source_in_slice:
            visits[source] += 1
        core.step()
        instruction_count += 1
        target = executing_pc(core)
        if core.cpu.cpsr.t:
            # Immediately after a taken Thumb branch mGBA exposes a two-byte
            # rather than four-byte pipeline lead.  Correct the destination;
            # the pre-step source above already uses the stable pipeline.
            target = (target + 2) & 0xFFFFFFFF
        if source_in_slice and not (SLICE_START <= target < SLICE_END):
            outbound[(source, target)] += 1
            target_register = CALL_VIA_REGISTER.get(target)
            if target_register is not None:
                dynamic_calls[(source, registers[target_register] & ~1)] += 1
            if target == INPUT_DISPATCH:
                slot = registers[0]
                input_state = registers[1]
                obj = int(core.memory.u32[slot]) & 0xFFFFFFFF
                word0 = int(core.memory.u32[obj]) & 0xFFFFFFFF
                held = int(core.memory.u16[input_state])
                pressed = int(core.memory.u16[input_state + 4])
                input_dispatches[(source, slot, obj, word0, input_state, held, pressed)] += 1

    core.set_keys(raw=0)
    return {
        "frames": frames,
        "instructions": instruction_count,
        "slice_instruction_visits": sum(visits.values()),
        "visited_pcs": {f"0x{pc:08X}": count for pc, count in sorted(visits.items())},
        "outbound_edges": [
            {"source": f"0x{source:08X}", "target": f"0x{target:08X}", "count": count}
            for (source, target), count in sorted(outbound.items())
        ],
        "dynamic_calls": [
            {"source": f"0x{source:08X}", "target": f"0x{target:08X}", "count": count}
            for (source, target), count in sorted(dynamic_calls.items())
        ],
        "input_dispatches": [
            {
                "source": f"0x{source:08X}",
                "slot": f"0x{slot:08X}",
                "object": f"0x{obj:08X}",
                "object_word0": f"0x{word0:08X}",
                "input_state": f"0x{input_state:08X}",
                "held": f"0x{held:04X}",
                "pressed": f"0x{pressed:04X}",
                "count": count,
            }
            for (source, slot, obj, word0, input_state, held, pressed), count
            in sorted(input_dispatches.items())
        ],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--advance-dialogues", type=int, default=100)
    parser.add_argument("--frames", type=int, default=4)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()

    baseline = boot_to_controllable_scene(args.rom, args.advance_dialogues)
    state = baseline.core.save_raw_state()
    idle = trace_window(clone_core(args.rom, state), args.frames, 0)
    right = trace_window(clone_core(args.rom, state), args.frames, 1 << KEY_RIGHT)

    idle_pcs = set(idle["visited_pcs"])
    right_pcs = set(right["visited_pcs"])
    idle_edges = {(edge["source"], edge["target"]) for edge in idle["outbound_edges"]}
    right_edges = {(edge["source"], edge["target"]) for edge in right["outbound_edges"]}
    idle_dynamic = {(edge["source"], edge["target"]) for edge in idle["dynamic_calls"]}
    right_dynamic = {(edge["source"], edge["target"]) for edge in right["dynamic_calls"]}
    report = {
        "format": "fomt-player-slice-trace-v1",
        "checkpoint_frame": baseline.frame,
        "slice": {"start": f"0x{SLICE_START:08X}", "end": f"0x{SLICE_END:08X}"},
        "idle": idle,
        "right": right,
        "right_only_pcs": sorted(right_pcs - idle_pcs),
        "right_only_outbound_edges": [
            {"source": source, "target": target}
            for source, target in sorted(right_edges - idle_edges)
        ],
        "right_only_dynamic_calls": [
            {"source": source, "target": target}
            for source, target in sorted(right_dynamic - idle_dynamic)
        ],
    }
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(
        f"trace={args.out} checkpoint={baseline.frame} frames={args.frames} "
        f"right_only_pcs={len(report['right_only_pcs'])} "
        f"right_only_edges={len(report['right_only_outbound_edges'])} "
        f"right_only_dynamic={len(report['right_only_dynamic_calls'])}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
