#!/usr/bin/env python3
"""Regression-test the vanilla A-button farmhouse entrance.

The deterministic clean-boot route finishes the first-day introduction, walks
back to the farmhouse entrance, and clones that exact state.  An idle clone
must leave the native event queue unchanged.  A press/release clone must
dispatch the existing entrance event exactly once through the normal player
interaction path.
"""

from __future__ import annotations

import argparse
from pathlib import Path

from replay_player_slice import KEY_A, KEY_DOWN, KEY_RIGHT, boot_to_controllable_scene
from trace_player_slice import advance_door_route, advance_window, clone_core


FARMHOUSE_ENTRANCE_EVENT_ID = 0xAA
GAME_STATE_PTR = 0x0300040C
QUEUE0_OFFSET = 0x378
PLAYER_MAP = 0x02039048
PLAYER_X = 0x0203904E
PLAYER_Y = 0x02039052
PLAYER_FACING = 0x02039064
FACING_UP = 1


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def tap(core, key: int, *, gap: int = 80) -> None:
    advance_window(core, 2, 1 << key)
    advance_window(core, gap, 0)


def finish_first_day_introduction(core) -> None:
    """Advance the optional tour and Zack dialogue to real exterior control."""

    advance_door_route(core)
    advance_window(core, 160, 1 << KEY_DOWN)
    advance_window(core, 180, 0)
    for _ in range(12):
        tap(core, KEY_A)
    tap(core, KEY_DOWN)
    tap(core, KEY_RIGHT)
    tap(core, KEY_A)
    for _ in range(100):
        tap(core, KEY_A)
    tap(core, KEY_A, gap=30)


def reach_farmhouse_entrance(core) -> None:
    finish_first_day_introduction(core)
    advance_window(core, 80, 1 << 6)  # Up
    advance_window(core, 1, 0)
    require(int(core.memory.u16[PLAYER_MAP]) == 2, "unexpected exterior map")
    require(int(core.memory.u16[PLAYER_X]) == 228, "unexpected entrance X")
    require(int(core.memory.u16[PLAYER_Y]) == 116, "unexpected entrance Y")
    require(int(core.memory.u8[PLAYER_FACING]) == FACING_UP, "player is not facing the door")


def pending_event(core) -> tuple[int, int, int]:
    state = int(core.memory.u32[GAME_STATE_PTR])
    return (
        int(core.memory.u32[state + QUEUE0_OFFSET]),
        int(core.memory.u32[state + QUEUE0_OFFSET + 4]),
        int(core.memory.u32[state + QUEUE0_OFFSET + 8]),
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--advance-dialogues", type=int, default=100)
    args = parser.parse_args()

    baseline = boot_to_controllable_scene(args.rom, args.advance_dialogues)
    reach_farmhouse_entrance(baseline.core)
    state = baseline.core.save_raw_state()

    idle = clone_core(args.rom, state)
    idle_before = pending_event(idle)
    advance_window(idle, 2, 0)
    require(pending_event(idle) == idle_before, "idle unexpectedly dispatched an entrance event")
    del idle

    action = clone_core(args.rom, state)
    action_before = pending_event(action)
    advance_window(action, 1, 1 << KEY_A)
    advance_window(action, 1, 0)
    action_after = pending_event(action)
    require(action_before[1] != FARMHOUSE_ENTRANCE_EVENT_ID, "entrance event was already queued")
    require(action_after[0] == 0, "native consumer must drain the entrance event")
    require(action_after[1] == FARMHOUSE_ENTRANCE_EVENT_ID, "unexpected farmhouse entrance event id")
    require(action_after[2] == 0, "unexpected farmhouse entrance event argument")

    print("OK farmhouse entrance: A release dispatches native event=0xAA; idle dispatches nothing")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
