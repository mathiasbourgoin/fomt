#!/usr/bin/env python3
"""Regression-test the dynamic auto-enter proof flag.

Build the proof ROM once with ``build_auto_enter_poc.py``. This test toggles
the persistent SRAM setting without rebuilding and proves six boundaries:

* an absent or invalid setting defaults to Original/OFF;
* the record survives a save-file write/read cycle;
* OFF leaves a blocked farmhouse entrance unchanged;
* ON dispatches the native farmhouse entrance event exactly once;
* ON does not change an ordinary blocked wall;
* ON does not duplicate normal A-button entry or an automatic step-on exit.
"""

from __future__ import annotations

import argparse
import collections
import tempfile
from pathlib import Path

from definitive_settings import (
    SETTINGS_OFFSET,
    SETTINGS_SIZE,
    decode_record,
    encode_record,
    read_save,
    update_save,
)
from replay_player_slice import KEY_A, KEY_DOWN, KEY_RIGHT, boot_to_controllable_scene
from test_player_building_entrance import (
    FARMHOUSE_ENTRANCE_EVENT_ID,
    pending_event,
    reach_farmhouse_entrance,
)
from test_player_door_event import FARMHOUSE_EVENT_ID
from trace_player_slice import advance_door_route, advance_window, clone_core, executing_pc


SETTINGS_ADDRESS = 0x0E000000 + SETTINGS_OFFSET
KEY_UP = 6
BLOCKED_RESOLVER = 0x0802536C
AUTO_ENTER_PROBE = 0x08760000
ACTION_RELEASE_HANDLER = 0x0802E0FC
NATIVE_EVENT_BRIDGE = 0x0801D9A8
NATIVE_EVENT_QUEUE = 0x08012B24
PLAYER_OBJECT = 0x02039044
WATCHED_PCS = {
    BLOCKED_RESOLVER,
    AUTO_ENTER_PROBE,
    ACTION_RELEASE_HANDLER,
    NATIVE_EVENT_BRIDGE,
    NATIVE_EVENT_QUEUE,
}


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def trace_frames(core: object, frames: int, raw_keys: int) -> collections.Counter[int]:
    core.set_keys(raw=raw_keys)
    end_frame = core.frame_counter + frames
    visits: collections.Counter[int] = collections.Counter()
    while core.frame_counter < end_frame:
        pc = executing_pc(core)
        if pc in WATCHED_PCS:
            visits[pc] += 1
        core.step()
    return visits


def add_visits(
    destination: collections.Counter[int], source: collections.Counter[int]
) -> None:
    destination.update(source)


def require_single_native_dispatch(visits: collections.Counter[int]) -> None:
    require(visits[NATIVE_EVENT_BRIDGE] == 1, "native event bridge count is not one")
    require(visits[NATIVE_EVENT_QUEUE] == 1, "native queue append count is not one")


def player_snapshot(core: object) -> bytes:
    return bytes(int(core.memory.u8[PLAYER_OBJECT + offset]) for offset in range(0x100))


def set_definitive_mode(core: object, enabled: bool) -> None:
    record = encode_record(enabled)
    for offset, value in enumerate(record):
        core.memory.u8[SETTINGS_ADDRESS + offset] = value


def settings_record(core: object) -> bytes:
    return bytes(
        int(core.memory.u8[SETTINGS_ADDRESS + offset])
        for offset in range(SETTINGS_SIZE)
    )


def test_save_file_persistence() -> None:
    with tempfile.TemporaryDirectory(prefix="fomt-definitive-settings-") as temporary:
        save_path = Path(temporary) / "fomt.sav"
        save_path.write_bytes(bytes([0xFF]) * 0x8000)
        original = save_path.read_bytes()
        require(read_save(original) == (False, False), "blank save did not default Original")
        updated = update_save(original, True)
        require(
            updated[:SETTINGS_OFFSET] == original[:SETTINGS_OFFSET],
            "setting update changed unrelated save bytes",
        )
        save_path.write_bytes(updated)
        reloaded = save_path.read_bytes()
        require(read_save(reloaded) == (True, True), "Definitive setting did not persist")
        save_path.write_bytes(update_save(reloaded, False))
        require(read_save(save_path.read_bytes()) == (True, False), "Original setting did not persist")


def run_regressions(rom: Path, advance_dialogues: int) -> None:
    test_save_file_persistence()
    baseline = boot_to_controllable_scene(rom, advance_dialogues)
    require(decode_record(settings_record(baseline.core)) == (False, False), "invalid setting did not default OFF")
    interior_state = baseline.core.save_raw_state()

    entrance_seed = clone_core(rom, interior_state)
    reach_farmhouse_entrance(entrance_seed)
    entrance_state = entrance_seed.save_raw_state()

    disabled = clone_core(rom, entrance_state)
    disabled_before = pending_event(disabled)
    disabled_visits = trace_frames(disabled, 12, 1 << KEY_UP)
    require(pending_event(disabled) == disabled_before, "OFF changed the entrance event queue")
    require(disabled_visits[AUTO_ENTER_PROBE] > 0, "OFF did not exercise the proof hook")
    require(disabled_visits[ACTION_RELEASE_HANDLER] == 0, "OFF invoked the action handler")
    require(disabled_visits[NATIVE_EVENT_BRIDGE] == 0, "OFF dispatched an event")

    enabled = clone_core(rom, entrance_state)
    set_definitive_mode(enabled, True)
    require(decode_record(settings_record(enabled)) == (True, True), "runtime setting was not written")
    enabled_before = pending_event(enabled)
    enabled_visits = trace_frames(enabled, 12, 1 << KEY_UP)
    enabled_after = pending_event(enabled)
    require(enabled_before[1] != FARMHOUSE_ENTRANCE_EVENT_ID, "entrance event was already queued")
    require(enabled_after[1] == FARMHOUSE_ENTRANCE_EVENT_ID, "ON missed farmhouse entry")
    require(enabled_after[2] == 0, "ON changed the entrance event argument")
    require(enabled_visits[AUTO_ENTER_PROBE] == 1, "ON did not stop after one proof dispatch")
    require(enabled_visits[ACTION_RELEASE_HANDLER] == 1, "ON action handler count is not one")
    require_single_native_dispatch(enabled_visits)

    invalid = clone_core(rom, entrance_state)
    set_definitive_mode(invalid, True)
    invalid.memory.u8[SETTINGS_ADDRESS + 7] ^= 1
    invalid_before = pending_event(invalid)
    invalid_visits = trace_frames(invalid, 12, 1 << KEY_UP)
    require(pending_event(invalid) == invalid_before, "bad checksum enabled Definitive mode")
    require(invalid_visits[NATIVE_EVENT_BRIDGE] == 0, "bad checksum dispatched an event")

    wall_seed = clone_core(rom, interior_state)
    advance_window(wall_seed, 100, 1 << KEY_RIGHT)
    wall_state = wall_seed.save_raw_state()
    wall_control = clone_core(rom, wall_state)
    trace_frames(wall_control, 12, 1 << KEY_RIGHT)
    wall = clone_core(rom, wall_state)
    set_definitive_mode(wall, True)
    wall_visits = trace_frames(wall, 12, 1 << KEY_RIGHT)
    require(
        pending_event(wall) == pending_event(wall_control),
        "ON changed the ordinary-wall event queue",
    )
    require(
        player_snapshot(wall) == player_snapshot(wall_control),
        "ON changed player state at an ordinary wall",
    )
    require(wall_visits[AUTO_ENTER_PROBE] > 0, "wall did not exercise the proof hook")
    require(wall_visits[NATIVE_EVENT_BRIDGE] == 0, "wall dispatched an event")

    normal_action = clone_core(rom, entrance_state)
    set_definitive_mode(normal_action, True)
    action_visits: collections.Counter[int] = collections.Counter()
    add_visits(action_visits, trace_frames(normal_action, 1, 1 << KEY_A))
    add_visits(action_visits, trace_frames(normal_action, 8, 0))
    require(
        pending_event(normal_action)[1] == FARMHOUSE_ENTRANCE_EVENT_ID,
        "normal A-button entry missed the farmhouse event",
    )
    require(action_visits[AUTO_ENTER_PROBE] == 0, "normal A entry entered proof hook")
    require_single_native_dispatch(action_visits)

    automatic_exit = clone_core(rom, interior_state)
    advance_door_route(automatic_exit)
    advance_window(automatic_exit, 52, 1 << KEY_DOWN)
    set_definitive_mode(automatic_exit, True)
    exit_visits = trace_frames(automatic_exit, 12, 1 << KEY_DOWN)
    require(
        pending_event(automatic_exit)[1] == FARMHOUSE_EVENT_ID,
        "automatic exit missed the native farmhouse event",
    )
    require(exit_visits[AUTO_ENTER_PROBE] == 0, "automatic exit entered proof hook")
    require_single_native_dispatch(exit_visits)

    print(
        "OK persistent Definitive Mode: Original vanilla; Definitive farmhouse event=0xAA once; "
        "wall unchanged; A entry and automatic exit not duplicated"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path, help="ROM from build_auto_enter_poc.py")
    parser.add_argument("--advance-dialogues", type=int, default=100)
    args = parser.parse_args()
    run_regressions(args.rom, args.advance_dialogues)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
