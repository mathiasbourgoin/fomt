#!/usr/bin/env python3
"""Verify the source-port readiness map against the checked-in assembly."""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MAP_PATH = ROOT / "analysis" / "franglais_transition_readiness.json"


def require(pattern: str, text: str, failures: list[str], label: str) -> None:
    if re.search(pattern, text, re.MULTILINE | re.DOTALL) is None:
        failures.append(label)


def main() -> int:
    mapping = json.loads(MAP_PATH.read_text(encoding="utf-8"))
    asm_path = ROOT / mapping["assembly"]
    asm = asm_path.read_text(encoding="utf-8")
    failures: list[str] = []

    transition = mapping["transition"]
    measured_span = int(transition["next_conventional_function"], 16) - int(
        transition["entry"], 16)
    if measured_span != transition["span_bytes"]:
        failures.append(
            f"transition span metadata ({transition['span_bytes']} != {measured_span})")
    if transition["frame_bytes"] != 0xB8:
        failures.append("transition frame metadata")

    require(r"^func_0804F7A4: @ 0x0804F7A4$", asm, failures, "transition entry")
    require(
        r"func_0804F7A4: @ 0x0804F7A4\n"
        r"\s+push \{r4, r5, r6, r7, lr\}\n"
        r"\s+mov r7, sl\n\s+mov r6, sb\n\s+mov r5, r8\n"
        r"\s+push \{r5, r6, r7\}\n\s+sub sp, #0xb8",
        asm, failures, "transition prologue/frame")

    cases = mapping["transition"]["phase_dispatch"]["cases"]
    table = "\n".join(f"\t.4byte .L{address[2:].upper()} @ case {phase}"
                      for phase, address in cases.items())
    if table not in asm:
        failures.append("phase jump table")

    require(
        r"non_word_aligned_thumb_func_start sub_08050342\n"
        r"sub_08050342: @ 0x08050342\n\s+ldrb r0, \[r7\]",
        asm, failures, "frame-sharing continuation")
    require(
        r"\.L08050382:\n\s+ldr r0, \[r7, #8\].*?"
        r"\s+add sp, #0xb8.*?\s+bx r1\n.*?"
        r"func_0805039C: @ 0x0805039C",
        asm, failures, "shared epilogue and next conventional function")

    site_patterns = (
        (r"add r4, sp, #0x3c.*?strh r0, \[r4\].*?strh r0, \[r4, #2\].*?"
         r"ldr r0, \[sp, #0x78\]\n\s+adds r3, r4, #0\n\s+bl func_0805E99C\n"
         r"\.L0804FF12:", "E99C site 0x0804FF0E"),
        (r"\.L0804FFEC:\n\s+adds r4, r6, #0.*?strh r0, \[r4\].*?"
         r"strh r0, \[r4, #2\].*?ldr r0, \[sp, #0x78\]\n"
         r"\s+adds r3, r6, #0\n\s+bl func_0805E99C\n\.L08050040:",
         "E99C site 0x0805003C"),
    )
    for pattern, label in site_patterns:
        require(pattern, asm, failures, label)
    e99c_calls = len(re.findall(r"\bbl func_0805E99C\b", asm))
    if e99c_calls != 2:
        failures.append(f"exactly two E99C calls (found {e99c_calls})")

    require(
        r"func_08050CC0: @ 0x08050CC0.*?"
        r"ldr r0, \.L08050D08 @ =0x00000554.*?"
        r"bl func_0804F288",
        asm, failures, "0x554 allocation")
    require(
        r"func_08050D3C: @ 0x08050D3C\n"
        r"\s+push \{r4, r5, r6, lr\}\n\s+sub sp, #0xc.*?"
        r"\s+ldr r0, \[r0\].*?\s+bl func_0804F7A4.*?"
        r"\s+add sp, #0xc.*?\s+bx r1",
        asm, failures, "conventional owner wrapper")

    if failures:
        for failure in failures:
            print(f"FAIL: {failure}")
        return 1
    print("OK: transition map, E99C seams, state allocation and owner wrapper match assembly")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
