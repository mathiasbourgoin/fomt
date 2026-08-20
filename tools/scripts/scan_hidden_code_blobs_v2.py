#!/usr/bin/env python3
"""
scan_hidden_code_blobs_v2.py -- extended sweep for uncatalogued Thumb code
hidden in fomt-decomp's asm/*.s, complementing scan_hidden_code_blobs.py.

Motivation (w44 mission): the original scanner (scan_hidden_code_blobs.py)
has two documented blind spots:

  1. It hard-caps "auto-decoded candidate" at MAX_BLOB_BYTES=40 bytes; blobs
     bigger than that are only listed in an unverified "medium_blocks"
     worklist, never decoded. w39 found a real 1084-byte hidden-code blob
     sitting just past that cutoff (8 functions inside, explored by w41).
  2. Its gap detection only accepts a SINGLE pure-`.byte` block whose
     immediate next top-level block is itself a function block (or EOF).
     If two or more pure-`.byte` blocks appear back-to-back between two
     real functions (e.g. a literal/jump-table-looking blob immediately
     followed by a second raw blob), only the LAST one in the run can ever
     satisfy "next_is_func" -- earlier blocks in the same run are silently
     dropped from consideration, never reported at any size.

This script fixes both: for every *maximal run* of consecutive non-function,
pure-`.byte` blocks sitting between two function blocks (or between the last
function block and EOF of an already-mostly-split file), it treats the ENTIRE
run as one candidate blob of any size, and always attempts the same
hand-rolled Thumb decode/plausibility check the original script used only
below 40 bytes. Every candidate blob (regardless of size) is reported, most
suspicious/self-contained first, alongside a raw hexdump ready for manual
`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb
--adjust-vma=0x08000000` disassembly.

This does NOT replace scan_hidden_code_blobs.py -- it is a wider net cast on
top, meant to be run once per sweep to check for candidates the original
tool structurally cannot see. As always: a "plausible" flag here is a
heuristic signal, never a substitute for manual disasm + rapid harness +
`make compare` byte-exact verification before committing any match.

Run from the repo root: `python3 tools/scripts/scan_hidden_code_blobs_v2.py`.
"""
import re
import sys
import glob
import os

ASM_DIR = "asm"

LABEL_RE = re.compile(r'^(\.?[A-Za-z_][A-Za-z0-9_]*):\s*(?:@.*)?$')
THUMB_FUNC_START_RE = re.compile(r'^\s*thumb_func_start\s+(\S+)')
BYTE_LINE_RE = re.compile(r'^\s*\.byte\s+(.*)$')
BYTE_VAL_RE = re.compile(r'0x([0-9A-Fa-f]{1,2})')


def parse_blocks(path):
    with open(path, encoding="utf-8", errors="replace") as f:
        raw_lines = f.readlines()

    blocks = []
    cur = None
    pending_directives = []

    for i, line in enumerate(raw_lines, 1):
        stripped = line.rstrip("\n")
        if not stripped.strip():
            continue
        if not stripped.startswith((" ", "\t")):
            m = LABEL_RE.match(stripped)
            if m:
                if cur is not None:
                    blocks.append(cur)
                cur = {
                    "label": m.group(1),
                    "start_line": i,
                    "lines": [],
                    "preceding_directives": pending_directives,
                }
                pending_directives = []
                continue
        if cur is not None:
            cur["lines"].append((i, stripped))
        else:
            pending_directives.append((i, stripped))

    if cur is not None:
        blocks.append(cur)

    return blocks


def block_is_function(block, prev_block):
    for _, d in block["preceding_directives"]:
        m = THUMB_FUNC_START_RE.match(d)
        if m and m.group(1) == block["label"]:
            return True
    if prev_block is not None:
        for _, d in reversed(prev_block["lines"]):
            m = THUMB_FUNC_START_RE.match(d)
            if m:
                return m.group(1) == block["label"]
            if d.strip():
                break
    return False


def block_pure_bytes(block):
    out = []
    for _, line in block["lines"]:
        m = BYTE_LINE_RE.match(line)
        if not m:
            return None
        vals = BYTE_VAL_RE.findall(m.group(1))
        if not vals:
            return None
        out.extend(int(v, 16) for v in vals)
    return out


# --- minimal Thumb halfword plausibility decoder (same as v1) ----------
def decode_thumb_halfword(hw):
    hw &= 0xFFFF
    if (hw & 0xFF80) == 0x4700:
        return ("bx", True, "branch")
    if (hw & 0xFF87) == 0x4700:
        return ("bx", True, "branch")
    if (hw & 0xF800) == 0xE000:
        return ("b", True, "branch")
    if (hw & 0xF000) == 0xD000:
        cond = (hw >> 8) & 0xF
        if cond == 0xF:
            return ("swi", True, "other")
        if cond == 0xE:
            return ("undefined", False, "other")
        return ("bcc", True, "branch")
    if (hw & 0xF000) == 0xF000:
        return ("bl_half", True, "branch")
    if (hw & 0xF600) == 0xB400:
        return ("push/pop", True, "other")
    if (hw & 0xE000) == 0x0000 and (hw & 0xF800) != 0x1800:
        return ("shift", True, "other")
    if (hw & 0xF800) == 0x1800:
        return ("addsub", True, "other")
    if (hw & 0xE000) == 0x2000:
        return ("imm_op", True, "other")
    if (hw & 0xFC00) == 0x4000:
        return ("alu", True, "other")
    if (hw & 0xFC00) == 0x4400:
        return ("hireg", True, "other")
    if (hw & 0xF800) == 0x4800:
        return ("ldr_pc", True, "load")
    if (hw & 0xF200) == 0x5000:
        return ("ldrstr_reg", True, "loadstore")
    if (hw & 0xF200) == 0x5200:
        return ("ldrstr_sext", True, "loadstore")
    if (hw & 0xE000) == 0x6000:
        return ("ldrstr_imm", True, "loadstore")
    if (hw & 0xF000) == 0x8000:
        return ("ldrh_strh", True, "loadstore")
    if (hw & 0xF000) == 0x9000:
        return ("ldrstr_sp", True, "loadstore")
    if (hw & 0xF000) == 0xA000:
        return ("ldr_addr", True, "other")
    if (hw & 0xFF00) == 0xB000:
        return ("add_sp", True, "other")
    if (hw & 0xF000) == 0xC000:
        return ("ldmia_stmia", True, "loadstore")
    return ("unknown", False, "other")


def analyze_plausibility(byte_list):
    if len(byte_list) % 2 != 0:
        return {"plausible": False, "reason": "odd byte count"}
    if len(set(byte_list)) == 1:
        return {"plausible": False, "reason": f"uniform fill byte 0x{byte_list[0]:02X} (padding)"}

    halfwords = []
    for i in range(0, len(byte_list), 2):
        lo, hi = byte_list[i], byte_list[i + 1]
        halfwords.append(lo | (hi << 8))

    decoded = [decode_thumb_halfword(hw) for hw in halfwords]
    unknown_count = sum(1 for _, known, _ in decoded if not known)
    last_mnem, last_known, last_kind = decoded[-1]
    ends_well = last_kind == "branch" or last_mnem == "bx"

    # additional signal: fraction of halfwords that decode to a
    # "branch-shaped" instruction anywhere mid-stream is unusual for real
    # code (most instructions are data-processing/load-store); track it
    # as extra info, not as a hard gate.
    branch_count = sum(1 for _, _, kind in decoded if kind == "branch")

    return {
        "plausible": unknown_count == 0 and ends_well,
        "unknown_count": unknown_count,
        "n_halfwords": len(halfwords),
        "branch_count": branch_count,
        "ends_well": ends_well,
        "decoded": [(f"0x{hw:04X}", m) for hw, (m, k, kind) in zip(halfwords, decoded)],
    }


def hexdump(byte_list):
    return " ".join(f"{b:02X}" for b in byte_list)


def main():
    files = sorted(glob.glob(os.path.join(ASM_DIR, "*.s")))
    all_gaps = []

    for path in files:
        blocks = parse_blocks(path)
        n = len(blocks)

        def is_func(i):
            return block_is_function(blocks[i], blocks[i - 1] if i > 0 else None)

        func_flags = [is_func(i) for i in range(n)]
        if not any(func_flags):
            continue  # fully-unprocessed files: v1 already reports these separately

        idx = 0
        while idx < n:
            if func_flags[idx]:
                idx += 1
                continue
            # start of a candidate run: idx is non-function. Only consider
            # runs whose block immediately BEFORE is a function block
            # (matches v1's "prev_is_func" requirement) -- otherwise this
            # is a literal pool / jump table hanging off something else
            # we don't understand, skip it (same conservative stance v1
            # took).
            prev_is_func = idx > 0 and func_flags[idx - 1]
            if not prev_is_func:
                idx += 1
                continue

            run_start = idx
            run_bytes = []
            run_labels = []
            j = idx
            all_pure = True
            while j < n and not func_flags[j]:
                pb = block_pure_bytes(blocks[j])
                if pb is None:
                    all_pure = False
                    break
                run_bytes.extend(pb)
                run_labels.append(blocks[j]["label"])
                j += 1

            if all_pure and run_bytes:
                next_is_func = j < n and func_flags[j]
                at_eof = j == n
                if next_is_func or at_eof:
                    prev_label = blocks[run_start - 1]["label"]
                    next_label = blocks[j]["label"] if j < n else "<EOF>"
                    all_gaps.append({
                        "file": path,
                        "line": blocks[run_start]["start_line"],
                        "labels": run_labels,
                        "bytes": run_bytes,
                        "prev_func": prev_label,
                        "next": next_label,
                    })
                idx = j
            else:
                idx += 1

    print(f"# v2 sweep: scanned {len(files)} asm/*.s files")
    print(f"# Found {len(all_gaps)} maximal .byte-only gap(s) of ANY size sandwiched")
    print(f"# between real functions (merges multi-block runs, no size cap).")
    print()

    for g in sorted(all_gaps, key=lambda g: len(g["bytes"])):
        p = analyze_plausibility(g["bytes"])
        flag = "PLAUSIBLE CODE" if p.get("plausible") else "not plausible"
        labels = ", ".join(g["labels"])
        print(f"=== {g['file']}:{g['line']}  labels=[{labels}]  ({len(g['bytes'])} bytes)  "
              f"prev={g['prev_func']}  next={g['next']}  -> {flag}")
        print(f"    bytes: {hexdump(g['bytes'])}")
        if "decoded" in p:
            print(f"    n_halfwords={p['n_halfwords']} unknown={p['unknown_count']} "
                  f"branch_count={p['branch_count']} ends_well={p['ends_well']}")
        else:
            print(f"    decode: {p.get('reason')}")
        print()


if __name__ == "__main__":
    main()
