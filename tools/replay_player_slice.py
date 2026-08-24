#!/usr/bin/env python3
"""Record a deterministic clean-boot replay for the player-interaction slice.

The generated ``gba-input v1`` file is accepted by ``gba-recomp runc``.  The
screen-navigation checks intentionally mirror the established mGBA first-
dialogue probe instead of guessing fixed delays for name-entry screens.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import mgba.core
import mgba.log
from mgba.image import Image


mgba.log.silence()

KEY_A = 0
KEY_DOWN = 7
KEY_RIGHT = 4
KEY_RELEASED = 0x03FF
OAM0_ATTR0 = 0x07000000
OAM0_ATTR1 = 0x07000002
END_CURSOR = (136, 184)


class Replay:
    def __init__(self, core: mgba.core.Core) -> None:
        self.core = core
        self.frame = 0
        self.raw_keys: int | None = None
        self.events: list[tuple[int, int]] = [(0, KEY_RELEASED)]

    def keys(self, raw_keys: int) -> None:
        if raw_keys == self.raw_keys:
            return
        self.raw_keys = raw_keys
        self.core.set_keys(raw=raw_keys)
        self.events.append((self.frame, KEY_RELEASED & ~raw_keys))

    def frames(self, count: int) -> None:
        self.keys(0)
        for _ in range(count):
            self.core.run_frame()
            self.frame += 1

    def tap(self, key: int, *, hold: int = 2, gap: int = 20) -> None:
        self.keys(1 << key)
        for _ in range(hold):
            self.core.run_frame()
            self.frame += 1
        self.frames(gap)

    def hold(self, key: int, frames: int) -> None:
        """Hold one GBA key for an exact number of frames."""

        self.keys(1 << key)
        for _ in range(frames):
            self.core.run_frame()
            self.frame += 1
        self.keys(0)

    def cursor(self) -> tuple[int, int]:
        return (
            self.core.memory.u16[OAM0_ATTR0] & 0xFF,
            self.core.memory.u16[OAM0_ATTR1] & 0x1FF,
        )

    def finish_name(self, *, add_letter: bool) -> None:
        if add_letter:
            self.tap(KEY_A)
        for _ in range(10):
            if self.cursor() == END_CURSOR:
                break
            self.tap(KEY_DOWN)
        if self.cursor() != END_CURSOR:
            raise RuntimeError(f"End cursor not found: {self.cursor()!r}")
        self.tap(KEY_A, gap=150)
        self.tap(KEY_A, gap=150)

    def boot_to_first_dialogue(self) -> None:
        self.frames(900)
        for _ in range(5):
            self.tap(KEY_A)
            self.frames(170)
        self.frames(400)
        self.finish_name(add_letter=False)
        for _ in range(3):
            self.frames(350)
            self.tap(KEY_A, gap=80)
        self.frames(350)
        self.finish_name(add_letter=True)
        for _ in range(20):
            self.frames(350)
            self.tap(KEY_A, gap=80)
        self.frames(350)

    def advance_dialogues(self, count: int) -> None:
        """Advance settled dialogue pages without synthesizing player movement."""
        for _ in range(count):
            self.frames(350)
            self.tap(KEY_A, gap=80)
        self.frames(350)

    def write(self, path: Path) -> None:
        lines = ["gba-input v1"]
        lines.extend(f"{frame} {mask:04x}" for frame, mask in self.events)
        path.write_text("\n".join(lines) + "\n", encoding="ascii")


def snapshot_ewram(core: mgba.core.Core) -> bytes:
    """Return the complete EWRAM image without assuming game structures."""

    start = 0x02000000
    return bytes(core.memory.u8[start + offset] for offset in range(0x40000))


def changed_ranges(before: bytes, after: bytes) -> list[tuple[int, int]]:
    """Coalesce changed byte positions into compact EWRAM-relative ranges."""

    ranges: list[tuple[int, int]] = []
    start: int | None = None
    for offset, (left, right) in enumerate(zip(before, after)):
        if left != right:
            if start is None:
                start = offset
        elif start is not None:
            ranges.append((start, offset - start))
            start = None
    if start is not None:
        ranges.append((start, len(before) - start))
    return ranges


def boot_to_controllable_scene(rom: Path, advance_dialogues: int) -> Replay:
    core = mgba.core.load_path(str(rom))
    screen = Image(*core.desired_video_dimensions())
    core.set_video_buffer(screen)
    core.reset()
    replay = Replay(core)
    replay.boot_to_first_dialogue()
    replay.advance_dialogues(advance_dialogues)
    return replay


def write_movement_diff(
    rom: Path, output: Path, advance_dialogues: int, movement_frames: int
) -> None:
    """Compare an idle and Right-held field window from identical clean boots.

    This is a candidate generator only.  The resulting differences include
    unrelated clocks and animation state, so callers must validate a candidate
    with a targeted trace before assigning it a semantic field name.
    """

    idle = boot_to_controllable_scene(rom, advance_dialogues)
    moved = boot_to_controllable_scene(rom, advance_dialogues)
    before_idle = snapshot_ewram(idle.core)
    before_moved = snapshot_ewram(moved.core)
    if before_idle != before_moved:
        raise RuntimeError("clean replay diverged before the movement window")

    idle.frames(movement_frames)
    moved.hold(KEY_RIGHT, movement_frames)
    after_idle = snapshot_ewram(idle.core)
    after_moved = snapshot_ewram(moved.core)
    ranges = changed_ranges(after_idle, after_moved)
    payload = {
        "base": "0x02000000",
        "movement": "Right",
        "frames": movement_frames,
        "different_bytes": sum(length for _, length in ranges),
        "range_count": len(ranges),
        "ranges": [
            {
                "address": f"0x{0x02000000 + start:08X}",
                "length": length,
                "idle": after_idle[start : start + min(length, 16)].hex(),
                "right": after_moved[start : start + min(length, 16)].hex(),
            }
            for start, length in ranges
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(
        f"movement_diff={output} ranges={len(ranges)} "
        f"different_bytes={payload['different_bytes']}"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument(
        "--advance-dialogues",
        type=int,
        default=0,
        help="settled A taps after the first Thomas page",
    )
    parser.add_argument(
        "--movement-diff",
        type=Path,
        help="write an idle-versus-Right EWRAM candidate report",
    )
    parser.add_argument(
        "--movement-frames",
        type=int,
        default=120,
        help="Right-held frames for --movement-diff (default: 120)",
    )
    args = parser.parse_args()

    core = mgba.core.load_path(str(args.rom))
    screen = Image(*core.desired_video_dimensions())
    core.set_video_buffer(screen)
    core.reset()
    replay = Replay(core)
    replay.boot_to_first_dialogue()
    replay.advance_dialogues(args.advance_dialogues)
    replay.write(args.out)
    print(f"frames={replay.frame} events={len(replay.events)} out={args.out}")
    if args.movement_diff:
        write_movement_diff(
            args.rom, args.movement_diff, args.advance_dialogues, args.movement_frames
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
