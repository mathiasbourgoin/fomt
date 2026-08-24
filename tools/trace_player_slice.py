#!/usr/bin/env python3
"""Compare instruction-level player-slice traces from one deterministic state.

The tool boots through the same recorded path as ``replay_player_slice.py``,
clones the resulting emulator state, then steps an idle and a Right-held
window instruction by instruction. It records the still-assembled
``sub_080D8178`` dispatcher together with the script, directional-input,
movement, and bounded EWRAM-write boundaries reached from it. The report is
evidence for selecting the next movement-path decompilation target; it does
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

from replay_player_slice import KEY_DOWN, KEY_LEFT, KEY_RIGHT, boot_to_controllable_scene


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
SCRIPT_NEXT_INSTRUCTION = 0x0803F0E0
TRANSITION_START = 0x0804F7A4
TRANSITION_END = 0x08050342
MOVEMENT_START = 0x0803C7C8
MOVEMENT_END = 0x0803CD4C
MOVEMENT_CONTROLLER = 0x0803D4D8
PLAYER_UPDATE_START = 0x0802CDCC
PLAYER_UPDATE_END = 0x0802D158
ACTOR_UPDATE_START = 0x08024CD0
ACTOR_UPDATE_END = 0x08025018
WATCHED_HALFWORDS = (
    0x0203904A,
    0x0203904E,
    0x02039052,
    0x0203905E,
    0x02039064,
    0x02039066,
    0x02039068,
    0x0203906A,
    0x02039104,
    0x02039108,
    0x02039150,
    0x02039154,
    0x02039156,
    0x02039158,
    0x0203915A,
)


def clone_core(rom: Path, state: object) -> mgba.core.Core:
    core = mgba.core.load_path(str(rom))
    screen = Image(*core.desired_video_dimensions())
    core.set_video_buffer(screen)
    core.reset()
    core.load_raw_state(state)
    return core


def advance_window(core: mgba.core.Core, frames: int, raw_keys: int) -> None:
    """Advance quickly to a later differential checkpoint without tracing."""

    core.set_keys(raw=raw_keys)
    for _ in range(frames):
        core.run_frame()


def advance_door_route(core: mgba.core.Core) -> None:
    """Reach the verified farmhouse doorway from the replay checkpoint."""

    for key, frames in ((KEY_DOWN, 60), (KEY_LEFT, 30), (KEY_RIGHT, 8)):
        advance_window(core, frames, 1 << key)


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
    script_dispatches: collections.Counter[tuple[int, int, int, int, int]] = collections.Counter()
    transition_calls: collections.Counter[tuple[int, int, int, int, int, int]] = collections.Counter()
    movement_calls: collections.Counter[tuple[int, int, int, int, int, int]] = collections.Counter()
    movement_entries: collections.Counter[tuple[int, int, int, int, int]] = collections.Counter()
    controller_entries: collections.Counter[tuple[int, int, int, int, int]] = collections.Counter()
    player_calls: collections.Counter[tuple[int, int, int, int, int, int]] = collections.Counter()
    player_entries: collections.Counter[tuple[int, int, int, int, int]] = collections.Counter()
    actor_calls: collections.Counter[tuple[int, int, int, int, int, int]] = collections.Counter()
    watched_writes: collections.Counter[tuple[int, int, int, int]] = collections.Counter()
    watched_values = {
        address: int(core.memory.u16[address]) for address in WATCHED_HALFWORDS
    }
    instruction_count = 0

    while core.frame_counter < end_frame:
        source = executing_pc(core)
        source_in_slice = SLICE_START <= source < SLICE_END
        registers = tuple(int(core.cpu.gprs[index]) & 0xFFFFFFFF for index in range(5))
        stack_argument = int(core.memory.u32[int(core.cpu.gprs[13])]) & 0xFFFFFFFF
        if source_in_slice:
            visits[source] += 1
        if source == MOVEMENT_CONTROLLER:
            controller_entries[(*registers[:4], stack_argument)] += 1
        if source == MOVEMENT_START:
            movement_entries[(*registers[:4], stack_argument)] += 1
        if source == PLAYER_UPDATE_START:
            player_entries[(*registers[:4], stack_argument)] += 1
        if source == SCRIPT_NEXT_INSTRUCTION:
            engine = registers[0]
            code = int(core.memory.u32[engine + 4]) & 0xFFFFFFFF
            script_pc = int(core.memory.u32[engine + 8]) & 0xFFFFFFFF
            encoded_opcode = int(core.memory.u8[code + script_pc])
            operand = sum(
                int(core.memory.u8[code + script_pc + 1 + index]) << (8 * index)
                for index in range(4)
            )
            script_dispatches[(engine, code, script_pc, encoded_opcode, operand)] += 1
        core.step()
        instruction_count += 1
        for address, before in watched_values.items():
            after = int(core.memory.u16[address])
            if after != before:
                watched_writes[(source, address, before, after)] += 1
                watched_values[address] = after
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
        if TRANSITION_START <= source < TRANSITION_END and not (
            TRANSITION_START <= target < TRANSITION_END
        ):
            transition_calls[(source, target, *registers[:4])] += 1
        if MOVEMENT_START <= source < MOVEMENT_END and not (
            MOVEMENT_START <= target < MOVEMENT_END
        ):
            movement_calls[(source, target, *registers[:4])] += 1
        if PLAYER_UPDATE_START <= source < PLAYER_UPDATE_END and not (
            PLAYER_UPDATE_START <= target < PLAYER_UPDATE_END
        ):
            player_calls[(source, target, *registers[:4])] += 1
        if ACTOR_UPDATE_START <= source < ACTOR_UPDATE_END and not (
            ACTOR_UPDATE_START <= target < ACTOR_UPDATE_END
        ):
            actor_calls[(source, target, *registers[:4])] += 1

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
        "script_dispatches": [
            {
                "engine": f"0x{engine:08X}",
                "code": f"0x{code:08X}",
                "script_pc": f"0x{script_pc:08X}",
                "encoded_opcode": f"0x{encoded_opcode:02X}",
                "opcode": f"0x{encoded_opcode & 0x7F:02X}",
                "operand": f"0x{operand:08X}",
                "count": count,
            }
            for (engine, code, script_pc, encoded_opcode, operand), count
            in sorted(script_dispatches.items())
        ],
        "transition_calls": [
            {
                "source": f"0x{source:08X}",
                "target": f"0x{target:08X}",
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for (source, target, *arguments), count in sorted(transition_calls.items())
        ],
        "movement_calls": [
            {
                "source": f"0x{source:08X}",
                "target": f"0x{target:08X}",
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for (source, target, *arguments), count in sorted(movement_calls.items())
        ],
        "controller_entries": [
            {
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for arguments, count in sorted(controller_entries.items())
        ],
        "movement_entries": [
            {
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for arguments, count in sorted(movement_entries.items())
        ],
        "watched_writes": [
            {
                "source": f"0x{source:08X}",
                "address": f"0x{address:08X}",
                "before": f"0x{before:04X}",
                "after": f"0x{after:04X}",
                "count": count,
            }
            for (source, address, before, after), count in sorted(watched_writes.items())
        ],
        "player_entries": [
            {
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for arguments, count in sorted(player_entries.items())
        ],
        "player_calls": [
            {
                "source": f"0x{source:08X}",
                "target": f"0x{target:08X}",
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for (source, target, *arguments), count in sorted(player_calls.items())
        ],
        "actor_calls": [
            {
                "source": f"0x{source:08X}",
                "target": f"0x{target:08X}",
                "arguments": [f"0x{argument:08X}" for argument in arguments],
                "count": count,
            }
            for (source, target, *arguments), count in sorted(actor_calls.items())
        ],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--advance-dialogues", type=int, default=100)
    parser.add_argument("--frames", type=int, default=4)
    parser.add_argument("--pre-frames", type=int, default=0)
    parser.add_argument("--scenario", choices=("right", "door"), default="right")
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()

    baseline = boot_to_controllable_scene(args.rom, args.advance_dialogues)
    state = baseline.core.save_raw_state()
    active_key = KEY_RIGHT if args.scenario == "right" else KEY_DOWN
    idle_core = clone_core(args.rom, state)
    if args.scenario == "door":
        advance_door_route(idle_core)
    advance_window(idle_core, args.pre_frames, 0)
    idle = trace_window(idle_core, args.frames, 0)
    del idle_core
    right_core = clone_core(args.rom, state)
    if args.scenario == "door":
        advance_door_route(right_core)
    advance_window(right_core, args.pre_frames, 1 << active_key)
    right = trace_window(right_core, args.frames, 1 << active_key)

    idle_pcs = set(idle["visited_pcs"])
    right_pcs = set(right["visited_pcs"])
    idle_edges = {(edge["source"], edge["target"]) for edge in idle["outbound_edges"]}
    right_edges = {(edge["source"], edge["target"]) for edge in right["outbound_edges"]}
    idle_dynamic = {(edge["source"], edge["target"]) for edge in idle["dynamic_calls"]}
    right_dynamic = {(edge["source"], edge["target"]) for edge in right["dynamic_calls"]}
    report = {
        "format": "fomt-player-slice-trace-v2",
        "checkpoint_frame": baseline.frame,
        "scenario": args.scenario,
        "active_key": "Right" if active_key == KEY_RIGHT else "Down",
        "pre_frames": args.pre_frames,
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
        f"scenario={args.scenario} pre_frames={args.pre_frames} "
        f"right_only_pcs={len(report['right_only_pcs'])} "
        f"right_only_edges={len(report['right_only_outbound_edges'])} "
        f"right_only_dynamic={len(report['right_only_dynamic_calls'])}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
