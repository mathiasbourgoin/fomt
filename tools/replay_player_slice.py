#!/usr/bin/env python3
"""Record a deterministic clean-boot replay for the player-interaction slice.

The generated ``gba-input v1`` file is accepted by ``gba-recomp runc``.  The
screen-navigation checks intentionally mirror the established mGBA first-
dialogue probe instead of guessing fixed delays for name-entry screens.
"""

from __future__ import annotations

import argparse
from pathlib import Path

import mgba.core
import mgba.log
from mgba.image import Image


mgba.log.silence()

KEY_A = 0
KEY_DOWN = 7
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
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
