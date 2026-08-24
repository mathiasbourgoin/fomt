#!/usr/bin/env python3
"""Regression-test the native farmhouse door event and an ordinary wall.

The test deliberately holds only a movement direction. It verifies that the
farmhouse doorway dispatches the existing transition event exactly once and
that walking into the ordinary right-hand wall does not dispatch a door event.
No destination or teleport behavior is reproduced in the harness.
"""

from __future__ import annotations

import argparse
from pathlib import Path

from replay_player_slice import KEY_DOWN, KEY_RIGHT, boot_to_controllable_scene
from trace_player_slice import advance_door_route, advance_window, clone_core


GAME_STATE_POINTER = 0x0300040C
PENDING_EVENT_QUEUE_OFFSET = 0x378
FARMHOUSE_EVENT_ID = 0x166


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def pending_event(core: object) -> tuple[int, int, int]:
    state = int(core.memory.u32[GAME_STATE_POINTER])
    queue = state + PENDING_EVENT_QUEUE_OFFSET
    return (
        int(core.memory.u32[queue]),
        int(core.memory.u32[queue + 4]),
        int(core.memory.u32[queue + 8]),
    )


def run_regressions(rom: Path, advance_dialogues: int) -> None:
    baseline = boot_to_controllable_scene(rom, advance_dialogues)
    state = baseline.core.save_raw_state()

    door_core = clone_core(rom, state)
    advance_door_route(door_core)
    advance_window(door_core, 52, 1 << KEY_DOWN)
    door_before = pending_event(door_core)
    door_core.set_keys(raw=1 << KEY_DOWN)
    door_core.run_frame()
    door_after = pending_event(door_core)
    require(door_before[1] != FARMHOUSE_EVENT_ID, "farmhouse event was already queued")
    require(door_after[0] == 0, "native consumer must drain the farmhouse event")
    require(door_after[1] == FARMHOUSE_EVENT_ID, "unexpected farmhouse event id")
    require(door_after[2] == 0, "unexpected farmhouse event argument")

    wall_core = clone_core(rom, state)
    advance_window(wall_core, 100, 1 << KEY_RIGHT)
    wall_before = pending_event(wall_core)
    wall_core.set_keys(raw=1 << KEY_RIGHT)
    wall_core.run_frame()
    wall_after = pending_event(wall_core)
    require(
        wall_after == wall_before,
        "ordinary blocked tile must not dispatch a door event",
    )

    print(
        "OK farmhouse door: native queue event=0x166; "
        "ordinary wall: no door event"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--advance-dialogues", type=int, default=100)
    args = parser.parse_args()
    run_regressions(args.rom, args.advance_dialogues)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
