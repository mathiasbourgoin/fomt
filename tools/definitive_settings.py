#!/usr/bin/env python3
"""Read or update the shared persistent Definitive Mode setting.

The eight-byte record occupies SRAM offsets 0x7FF8..0x7FFF, after the existing
monitoring record and inside the already verified unused final save sector.
Missing, malformed, unsupported, or checksum-invalid records mean Original
mode. Translation and pedagogical audio are content and are not affected.
"""

from __future__ import annotations

import argparse
from pathlib import Path


SAVE_SIZE = 0x8000
SETTINGS_OFFSET = 0x7FF8
SETTINGS_SIZE = 8
MAGIC = b"DFMD"
VERSION = 1
DEFINITIVE_FLAG = 1 << 0


def checksum(payload: bytes) -> int:
    return sum(payload[:6]) & 0xFFFF


def encode_record(enabled: bool) -> bytes:
    record = bytearray(SETTINGS_SIZE)
    record[:4] = MAGIC
    record[4] = VERSION
    record[5] = DEFINITIVE_FLAG if enabled else 0
    record[6:8] = checksum(record).to_bytes(2, "little")
    return bytes(record)


def decode_record(record: bytes) -> tuple[bool, bool]:
    if len(record) != SETTINGS_SIZE:
        return False, False
    stored_checksum = int.from_bytes(record[6:8], "little")
    valid = (
        record[:4] == MAGIC
        and record[4] == VERSION
        and stored_checksum == checksum(record)
    )
    if not valid:
        return False, False
    return True, (record[5] & DEFINITIVE_FLAG) != 0


def read_save(save: bytes) -> tuple[bool, bool]:
    if len(save) < SETTINGS_OFFSET + SETTINGS_SIZE:
        return False, False
    return decode_record(save[SETTINGS_OFFSET : SETTINGS_OFFSET + SETTINGS_SIZE])


def update_save(save: bytes, enabled: bool) -> bytes:
    if len(save) < SAVE_SIZE:
        raise ValueError(f"save is too small: expected at least {SAVE_SIZE} bytes")
    updated = bytearray(save)
    updated[SETTINGS_OFFSET : SETTINGS_OFFSET + SETTINGS_SIZE] = encode_record(enabled)
    return bytes(updated)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("save", type=Path)
    parser.add_argument("--set", choices=("original", "definitive"), dest="mode")
    args = parser.parse_args()

    save = args.save.read_bytes()
    if args.mode is not None:
        save = update_save(save, args.mode == "definitive")
        args.save.write_bytes(save)

    valid, enabled = read_save(save)
    mode = "definitive" if enabled else "original"
    print(f"mode={mode} valid_record={'yes' if valid else 'no'} offset=0x{SETTINGS_OFFSET:04X}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
