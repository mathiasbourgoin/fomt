#!/usr/bin/env python3
"""Build the isolated runtime-flagged auto-enter proof ROM.

The normal matching build is untouched. This builder installs an eight-byte
absolute hook over the blocked-movement resolver prologue and places the proof
code in verified 0xFF ROM padding. The hook always executes the exact relocated
vanilla prologue; the shared checksummed SRAM record dynamically selects
Original or Definitive mode without rebuilding.
"""

from __future__ import annotations

import argparse
import shutil
import struct
import subprocess
import tempfile
from pathlib import Path


ROM_BASE = 0x08000000
BLOCKED_RESOLVER = 0x0802536C
PROBE_ADDRESS = 0x08760000
EXPECTED_PROLOGUE = bytes.fromhex("f0 b5 57 46 4e 46 45 46")


def rom_offset(address: int) -> int:
    return address - ROM_BASE


def require_tool(name: str) -> str:
    path = shutil.which(name)
    if path is None:
        raise RuntimeError(f"required tool is missing: {name}")
    return path


def build_probe(source: Path, tool_prefix: str, output: Path) -> None:
    assembler = require_tool(f"{tool_prefix}as")
    linker = require_tool(f"{tool_prefix}ld")
    objcopy = require_tool(f"{tool_prefix}objcopy")
    object_path = output.with_suffix(".o")
    elf_path = output.with_suffix(".elf")
    subprocess.run(
        [assembler, "-mcpu=arm7tdmi", "-mthumb", "-o", object_path, source],
        check=True,
    )
    subprocess.run(
        [linker, "-Ttext", hex(PROBE_ADDRESS), "-o", elf_path, object_path],
        check=True,
    )
    subprocess.run([objcopy, "-O", "binary", elf_path, output], check=True)


def patch_rom(rom_path: Path, probe: bytes, output: Path) -> None:
    rom = bytearray(rom_path.read_bytes())
    hook_offset = rom_offset(BLOCKED_RESOLVER)
    probe_offset = rom_offset(PROBE_ADDRESS)
    probe_end = probe_offset + len(probe)

    if rom[hook_offset : hook_offset + 8] != EXPECTED_PROLOGUE:
        raise RuntimeError("blocked resolver prologue does not match the reference ROM")
    if probe_end > len(rom):
        raise RuntimeError("ROM does not contain the expected expansion padding")
    if any(value != 0xFF for value in rom[probe_offset:probe_end]):
        raise RuntimeError("proof target is not untouched 0xFF ROM padding")

    # ldr r3, [pc, #0]; bx r3; .word PROBE_ADDRESS | 1
    rom[hook_offset : hook_offset + 8] = struct.pack(
        "<HHI", 0x4B00, 0x4718, PROBE_ADDRESS | 1
    )
    rom[probe_offset:probe_end] = probe
    output.write_bytes(rom)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path, help="byte-perfect matching ROM")
    parser.add_argument("output", type=Path, help="proof ROM to create")
    parser.add_argument("--tool-prefix", default="arm-none-eabi-")
    args = parser.parse_args()

    source = Path(__file__).with_name("auto_enter_poc.s")
    with tempfile.TemporaryDirectory(prefix="fomt-auto-enter-") as temporary:
        probe_path = Path(temporary) / "auto_enter_poc.bin"
        build_probe(source, args.tool_prefix, probe_path)
        probe = probe_path.read_bytes()
    patch_rom(args.rom, probe, args.output)
    print(f"wrote {args.output} ({len(probe)} proof bytes)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
