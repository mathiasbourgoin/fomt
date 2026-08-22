#!/usr/bin/env python3
"""Observe the legacy transition wrapper during a bounded fresh boot.

Usage::

    python3 tools/test_franglais_transition_boot_phases.py fomt.gba

The test deliberately does not load a save state or patch the ROM.  It drives
the same unattended fresh-boot recipe used by the Franglais runtime tests,
then instruction-steps a short, explicit window.  At each entry to the
conventional owner wrapper ``func_08050D3C`` it reads the phase selector from
the dereferenced state object (``state + 0x08``).  This is the engine value
returned by the legacy tick, rather than a guessed UI state.

By default this is an observation test: it fails when the wrapper is not
reached or exposes a value outside the documented 0..6 dispatch domain, and
prints every reached phase.  ``--require-all`` is intentionally opt-in: a
single real boot path is not entitled to claim coverage of every branch.
It turns missing phases into an explicit failure when a test recipe is known
to exercise them.
"""

from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

try:
    import mgba.core
    import mgba.log
except ModuleNotFoundError as exc:  # pragma: no cover - workstation dependency
    raise SystemExit("mGBA Python bindings are required for this runtime test") from exc


mgba.log.silence()

WRAPPER_ENTRY = 0x08050D3C
PHASE_OFFSET = 0x08
PHASES = tuple(range(7))

# These two Franglais-reserve addresses are established by the existing fresh
# boot harness.  They are only used to reproduce its input cadence; neither is
# part of the transition observation itself.
G_SETTING = 0x02001F11
G_STATE = 0x02001F14
KEY_A = 1
PERIOD = 40


def drive_frame(core: mgba.core.Core) -> None:
    """Advance the stock unattended fresh-boot recipe by one frame."""

    state = core.memory.u32[G_STATE]
    if state:
        core.memory.u8[state] = 1
        core.memory.u8[state + 1] = 0
    core.set_keys(KEY_A if (core.frame_counter % PERIOD) < 4 else 0)
    core.run_frame()


def observe(rom: Path, *, fast_frames: int, trace_frames: int) -> Counter[int]:
    core = mgba.core.load_path(str(rom))
    core.reset()  # No autoload_save(): this must remain a fresh boot.
    core.memory.u8[G_SETTING] = 0

    for _ in range(fast_frames):
        drive_frame(core)

    start_frame = core.frame_counter
    phases: Counter[int] = Counter()
    calls = 0
    while core.frame_counter - start_frame < trace_frames:
        state = core.memory.u32[G_STATE]
        if state:
            core.memory.u8[state] = 1
            core.memory.u8[state + 1] = 0
        core.set_keys(KEY_A if (core.frame_counter % PERIOD) < 4 else 0)
        core.step()
        if core.cpu.pc != WRAPPER_ENTRY:
            continue

        handle = core.cpu.gprs[0]
        transition = core.memory.u32[handle]
        phase = core.memory.u32[transition + PHASE_OFFSET]
        phases[phase] += 1
        calls += 1

    print(
        f"fresh_boot_frames={fast_frames}+{trace_frames} "
        f"wrapper_calls={calls} phase_counts="
        + ", ".join(f"{phase}:{phases[phase]}" for phase in sorted(phases))
    )
    return phases


def main(argv: list[str]) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--fast-frames", type=int, default=820)
    parser.add_argument("--trace-frames", type=int, default=120)
    parser.add_argument("--require-all", action="store_true")
    args = parser.parse_args(argv)
    if args.fast_frames < 0 or args.trace_frames <= 0:
        parser.error("frame bounds must be non-negative, with a positive trace window")

    phases = observe(args.rom, fast_frames=args.fast_frames,
                     trace_frames=args.trace_frames)
    failures: list[str] = []
    if not phases:
        failures.append("func_08050D3C was not reached in the bounded fresh boot")
    invalid = sorted(set(phases) - set(PHASES))
    if invalid:
        failures.append("invalid transition phase(s): "
                        + ", ".join(map(str, invalid)))
    missing = [phase for phase in PHASES if phase not in phases]
    for phase in PHASES:
        state = "reached" if phase in phases else "not reached"
        print(f"phase {phase}: {state}")
    if args.require_all and missing:
        failures.append("required transition phase(s) not reached: "
                        + ", ".join(map(str, missing)))

    if failures:
        for failure in failures:
            print(f"FAIL: {failure}", file=sys.stderr)
        return 1
    print("OK: func_08050D3C observed without changing the legacy renderer")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
