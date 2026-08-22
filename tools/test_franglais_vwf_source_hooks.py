#!/usr/bin/env python3
"""Check the source-port VWF hook sites without relying on a savestate.

Usage::

    python3 tools/test_franglais_vwf_source_hooks.py fomt.gba \
      build/franglais_stub_symbols.inc

The two hooks sit in the live dialogue renderer, not in an isolated helper:
site A runs immediately before ``DrawGlyphAt`` receives its private canvas;
site B runs in the later OAM composer loop.  A byte-level assertion is the
stable part of this regression test: mGBA screenshots are intentionally kept
in the patch repository's runtime suite, where the complete audio payload is
also available.
"""

from __future__ import annotations

import re
import struct
import sys
from pathlib import Path


ROM_BASE = 0x08000000
PAYLOAD_BASE = 0x08800000

# Site, symbol, in-place Thumb prefix and untouched continuation bytes.
SITES = (
    (0x0804EFE2, "franglais_dialogue_vwf_hook_a", b"\xc0\x46\x00\x4b\x18\x47",
     b"\x28\x1c\x03\x80\x6c\x80\x01\x98\x04\x31"),
    (0x0804FD4A, "franglais_dialogue_vwf_hook_b", b"\xc0\x46\x00\x4b\x18\x47",
     b"\x40\x46\x00\x28"),
)
BLITTER = (0x0804E9C8, "vwf_draw_glyph_unaligned", b"\x00\x4c\x20\x47",
           b"\x00\xb5\x13\x1c")


def symbol_offsets(path: Path) -> dict[str, int]:
    result: dict[str, int] = {}
    pattern = re.compile(
        r"^\.SET (franglais_dialogue_vwf_hook_[ab]|vwf_draw_glyph_unaligned), "
        r"franglais_payload_start \+ 0x([0-9A-Fa-f]+)$")
    for line in path.read_text(encoding="ascii").splitlines():
        match = pattern.match(line)
        if match:
            result[match.group(1)] = int(match.group(2), 16)
    return result


def verify(rom_path: Path, symbols_path: Path) -> list[str]:
    rom = rom_path.read_bytes()
    offsets = symbol_offsets(symbols_path)
    failures: list[str] = []

    for site, name, prefix, continuation in SITES:
        if name not in offsets:
            failures.append(f"{name}: alias absent de {symbols_path}")
            continue
        off = site - ROM_BASE
        actual_prefix = rom[off:off + len(prefix)]
        target = struct.unpack_from("<I", rom, off + len(prefix))[0]
        expected_target = PAYLOAD_BASE + offsets[name] + 1
        actual_continuation = rom[off + 10:off + 10 + len(continuation)]
        if actual_prefix != prefix:
            failures.append(f"{name}: trampoline invalide {actual_prefix.hex()}")
        if target != expected_target:
            failures.append(
                f"{name}: cible 0x{target:08X}, attendu 0x{expected_target:08X}")
        if actual_continuation != continuation:
            failures.append(
                f"{name}: continuation vanilla modifiee "
                f"{actual_continuation.hex()}")

    site, name, prefix, continuation = BLITTER
    if name not in offsets:
        failures.append(f"{name}: alias absent de {symbols_path}")
    else:
        off = site - ROM_BASE
        actual_prefix = rom[off:off + len(prefix)]
        target = struct.unpack_from("<I", rom, off + len(prefix))[0]
        expected_target = PAYLOAD_BASE + offsets[name] + 1
        actual_continuation = rom[off + 8:off + 8 + len(continuation)]
        if actual_prefix != prefix:
            failures.append(f"{name}: trampoline r4 invalide {actual_prefix.hex()}")
        if target != expected_target:
            failures.append(
                f"{name}: cible 0x{target:08X}, attendu 0x{expected_target:08X}")
        if actual_continuation != continuation:
            failures.append(
                f"{name}: continuation vanilla modifiee "
                f"{actual_continuation.hex()}")
    return failures


def main(argv: list[str]) -> int:
    if len(argv) != 3:
        print(__doc__, file=sys.stderr)
        return 2
    failures = verify(Path(argv[1]), Path(argv[2]))
    if failures:
        for failure in failures:
            print(f"FAIL: {failure}")
        return 1
    print("OK: dialogue VWF source hooks A/B point to dynamic payload aliases")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
