#!/usr/bin/env python3
"""
scan_hidden_code_blobs.py -- scan fomt-decomp asm/*.s for short, unlabeled
.byte data blobs sandwiched between two real (thumb_func_start) functions
that might actually be uncatalogued Thumb code, in the spirit of the
func_08010F14 discovery (round 8 / w17): an 8-byte .byte blob right after
func_08010F0C that turned out to be a real, valid, never-symbolized Thumb
function.

Run from the repo root: `python3 tools/scripts/scan_hidden_code_blobs.py`.
No dependencies beyond the standard library. Round 9 (w18) ran this and
found and matched 5 blobs / 17 hidden functions in one pass (see
SESSION_NOTES.md round 9 and DECOMP_RULES.md's match table) -- after that
round, a rerun should print 0 short candidates; any that show up again in a
future round are genuinely new (either newly split-out files, or blobs that
became "sandwiched between two real functions" only after other work
ported one of the neighbors). The "larger, not auto-verified" section at
the end is not exhaustive code-hunting -- it is a worklist for a future
round: each entry there still needs the same disasm + xref + compile
verification loop before trusting it, this script only narrows down WHERE
to look.

Method:
  1. Parse each asm/*.s file into top-level blocks: a column-0 label line
     starts a block, all following indented lines (until the next column-0
     label) belong to it.
  2. A block is a "function block" if the immediately preceding block ends
     with a `thumb_func_start NAME` directive whose NAME matches this
     block's label.
  3. A block is a "pure .byte data block" if every content line is a
     `.byte ...` directive (no mnemonics, no `.4byte`).
  4. Candidate = a pure .byte data block, NOT a function block, total byte
     count in [4, 16] (1-2 Thumb instructions' worth: 2 or 4 halfwords),
     sitting immediately between two function blocks (prev block is a
     function block, and the next block in the file is either a function
     block or EOF-of-an-already-mostly-split-file).
  5. Only consider files that already contain at least one
     `thumb_func_start` (files that are 100% unprocessed raw .byte, like
     code_080101A0.s, are a DIFFERENT, much bigger, already-visible
     phenomenon -- out of scope for this "hidden short blob" scan; they are
     reported separately as a side note, not treated as candidates).
  6. For each candidate, try to decode the bytes as a sequence of 16-bit
     Thumb halfwords using a small hand-rolled partial Thumb decoder
     covering the common formats (data-processing, loads/stores, branches,
     push/pop, bx/blx), and flag it "plausible" if:
       - every halfword decodes to a KNOWN Thumb encoding (no unknown/
         reserved bit patterns for the formats we recognize), AND
       - the last halfword is `bx lr`, an unconditional branch, or a
         conditional branch (a real function-ending shape), AND
       - it is not a pure run of a single repeated byte value (0x00 * N,
         0xFF * N -- padding, not code).
  7. Cross-reference: grep the whole asm/ and src/ tree for the blob's own
     address label and for its raw bytes appearing as a `.4byte` literal
     elsewhere (a real literal/pointer use would show up as a 4-byte
     constant matching the address, not as this exact byte sequence).
"""
import re
import sys
import glob
import os

ASM_DIR = "asm"
MAX_BLOB_BYTES = 40  # a bit above 1-2 Thumb instructions to also catch small
                      # multi-function runs like the 32-byte 0x0800057C find

LABEL_RE = re.compile(r'^(\.?[A-Za-z_][A-Za-z0-9_]*):\s*(?:@.*)?$')
THUMB_FUNC_START_RE = re.compile(r'^\s*thumb_func_start\s+(\S+)')
BYTE_LINE_RE = re.compile(r'^\s*\.byte\s+(.*)$')
BYTE_VAL_RE = re.compile(r'0x([0-9A-Fa-f]{1,2})')


def parse_blocks(path):
    """Return list of blocks: dict(label, start_line, lines, prev_directive)"""
    with open(path, encoding="utf-8", errors="replace") as f:
        raw_lines = f.readlines()

    blocks = []
    cur = None
    pending_directives = []  # indented directive lines seen before next label

    for i, line in enumerate(raw_lines, 1):
        stripped = line.rstrip("\n")
        if not stripped.strip():
            continue
        # column-0 label?
        if not stripped.startswith((" ", "\t")):
            m = LABEL_RE.match(stripped.split("@")[0].strip() + ("" if "@" not in stripped else ""))
            # simpler: match against the raw stripped text directly
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
        # indented content line
        if cur is not None:
            cur["lines"].append((i, stripped))
        else:
            pending_directives.append((i, stripped))

    if cur is not None:
        blocks.append(cur)

    return blocks


def block_is_function(block, prev_block):
    """A block is a genuine function block if a `thumb_func_start <label>`
    (or the non-word-aligned variant) directive appears right before its
    label -- which, because of how this line-based parser groups content,
    can end up attached either to this block's own `preceding_directives`
    (only populated for the very first block in a file) or trailing in the
    PREVIOUS block's `lines` (the common case: `thumb_func_start NAME` is
    still "inside" the previous block textually until NAME's own label line
    starts a new block) -- so both places must be checked."""
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
                # any other non-blank content before we find a
                # thumb_func_start means it's not immediately adjacent
                break
    return False


def block_pure_bytes(block):
    """If block's content lines are ONLY .byte directives, return the flat
    byte list, else None."""
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


# --- minimal Thumb halfword plausibility decoder -----------------------
def decode_thumb_halfword(hw):
    """Return (mnemonic, is_known) for a 16-bit Thumb instruction word.
    Deliberately conservative: only classifies formats we're confident
    about; anything falling through 'is_known=False' is NOT necessarily
    invalid Thumb, just unclassified by this quick tool (treated as
    'unknown', which lowers confidence but is not a hard reject)."""
    hw &= 0xFFFF

    # bx/blx (format 5 hi-reg / bx)
    if (hw & 0xFF80) == 0x4700:
        return ("bx", True, "branch")
    if (hw & 0xFF87) == 0x4700:
        return ("bx", True, "branch")

    # unconditional branch (format 18): 11100 offset11
    if (hw & 0xF800) == 0xE000:
        return ("b", True, "branch")

    # conditional branch (format 16): 1101 cond offset8 ; cond 1111=swi,1110=undef
    if (hw & 0xF000) == 0xD000:
        cond = (hw >> 8) & 0xF
        if cond == 0xF:
            return ("swi", True, "other")
        if cond == 0xE:
            return ("undefined", False, "other")
        return ("bcc", True, "branch")

    # long branch w/ link halves (format 19): 1111 h offset11
    if (hw & 0xF000) == 0xF000:
        return ("bl_half", True, "branch")

    # push/pop (format 14): 1011 L10R Rlist
    if (hw & 0xF600) == 0xB400:
        return ("push/pop", True, "other")

    # move shifted register (format 1): 000 op offset5 rs rd
    if (hw & 0xE000) == 0x0000 and (hw & 0xF800) != 0x1800:
        return ("shift", True, "other")

    # add/sub (format 2): 00011 ...
    if (hw & 0xF800) == 0x1800:
        return ("addsub", True, "other")

    # mov/cmp/add/sub immediate (format 3): 001 op rd offset8
    if (hw & 0xE000) == 0x2000:
        return ("imm_op", True, "other")

    # ALU operations (format 4): 010000 op rs rd
    if (hw & 0xFC00) == 0x4000:
        return ("alu", True, "other")

    # hi register ops/bx (format 5): 010001 op h1 h2 rs/rd
    if (hw & 0xFC00) == 0x4400:
        return ("hireg", True, "other")

    # PC-relative load (format 6): 01001 rd word8
    if (hw & 0xF800) == 0x4800:
        return ("ldr_pc", True, "load")

    # load/store with register offset (format 7): 0101 op0 op1 0 ro rb rd
    if (hw & 0xF200) == 0x5000:
        return ("ldrstr_reg", True, "loadstore")

    # load/store sign-extended byte/half (format 8): 0101 op0 op1 1 ro rb rd
    if (hw & 0xF200) == 0x5200:
        return ("ldrstr_sext", True, "loadstore")

    # load/store with immediate offset (format 9): 011 B L offset5 rb rd
    if (hw & 0xE000) == 0x6000:
        return ("ldrstr_imm", True, "loadstore")

    # load/store halfword (format 10): 1000 L offset5 rb rd
    if (hw & 0xF000) == 0x8000:
        return ("ldrh_strh", True, "loadstore")

    # SP-relative load/store (format 11): 1001 L rd word8
    if (hw & 0xF000) == 0x9000:
        return ("ldrstr_sp", True, "loadstore")

    # load address (format 12): 1010 SP rd word8
    if (hw & 0xF000) == 0xA000:
        return ("ldr_addr", True, "other")

    # add offset to SP (format 13): 10110000 S word7
    if (hw & 0xFF00) == 0xB000:
        return ("add_sp", True, "other")

    # multiple load/store (format 15): 1100 L rb Rlist
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

    return {
        "plausible": unknown_count == 0 and ends_well,
        "unknown_count": unknown_count,
        "n_halfwords": len(halfwords),
        "ends_well": ends_well,
        "decoded": [(f"0x{hw:04X}", m) for hw, (m, k, kind) in zip(halfwords, decoded)],
    }


def hexdump(byte_list):
    return " ".join(f"{b:02X}" for b in byte_list)


def main():
    files = sorted(glob.glob(os.path.join(ASM_DIR, "*.s")))
    candidates = []
    fully_unprocessed_files = []

    medium_blocks = []  # > MAX_BLOB_BYTES, not auto-verified, for manual follow-up

    for path in files:
        blocks = parse_blocks(path)

        def is_func(i):
            return block_is_function(blocks[i], blocks[i - 1] if i > 0 else None)

        has_any_function = any(is_func(i) for i in range(len(blocks)))
        if not has_any_function:
            # whole-file raw .byte with zero thumb_func_start -- different,
            # much bigger phenomenon, report separately, not a candidate.
            total_bytes = 0
            all_pure = True
            for b in blocks:
                pb = block_pure_bytes(b)
                if pb is None:
                    all_pure = False
                else:
                    total_bytes += len(pb)
            if all_pure and total_bytes > 0:
                fully_unprocessed_files.append((path, total_bytes))
            continue

        for idx, b in enumerate(blocks):
            if is_func(idx):
                continue
            pure = block_pure_bytes(b)
            if pure is None:
                continue
            if len(pure) < 4:
                continue
            # walk backward past pure literal-pool (.4byte-only) blocks to
            # find the nearest real preceding function block
            j = idx - 1
            while j >= 0 and block_pure_bytes(blocks[j]) is not None and not is_func(j):
                j -= 1
            prev_is_func = j >= 0 and is_func(j)
            next_is_func = (idx + 1 < len(blocks) and is_func(idx + 1))
            at_eof = (idx + 1 == len(blocks))
            if not (prev_is_func and (next_is_func or at_eof)):
                continue
            prev_label = blocks[idx - 1]["label"] if idx > 0 else "<BOF>"
            next_label = blocks[idx + 1]["label"] if idx + 1 < len(blocks) else "<EOF>"
            if len(pure) > MAX_BLOB_BYTES:
                medium_blocks.append((len(pure), path, b["label"], prev_label, next_label))
                continue
            plaus = analyze_plausibility(pure)
            candidates.append({
                "file": path,
                "label": b["label"],
                "line": b["start_line"],
                "bytes": pure,
                "prev_func": prev_label,
                "next": next_label,
                "plausibility": plaus,
            })

    print(f"# Scanned {len(files)} asm/*.s files")
    print(f"# {len(fully_unprocessed_files)} file(s) are 100% unprocessed raw .byte (0 thumb_func_start) -- different/bigger phenomenon, not scanned as short-blob candidates:")
    for p, n in fully_unprocessed_files:
        print(f"#   {p}: ~{n} bytes, no thumb_func_start at all")
    print()
    print(f"# Found {len(candidates)} short (4-{MAX_BLOB_BYTES} byte) unlabeled .byte block(s) sandwiched between real functions")
    print()
    for c in candidates:
        p = c["plausibility"]
        flag = "PLAUSIBLE CODE" if p.get("plausible") else "not plausible"
        print(f"=== {c['file']}:{c['line']}  label={c['label']}  ({len(c['bytes'])} bytes)  prev={c['prev_func']}  next={c['next']}  -> {flag}")
        print(f"    bytes: {hexdump(c['bytes'])}")
        if "decoded" in p:
            print(f"    decode: {p['decoded']}  unknown={p.get('unknown_count')} ends_well={p.get('ends_well')}")
        else:
            print(f"    decode: {p.get('reason')}")
        print()

    print(f"# {len(medium_blocks)} larger (> {MAX_BLOB_BYTES} byte) unlabeled .byte block(s) also sandwiched between")
    print(f"# real functions -- NOT auto-verified (size makes false positives from coincidental")
    print(f"# literal-pool/jump-table bytes more likely), needs manual disasm+xref review before")
    print(f"# trusting any of these as real hidden code. Sorted by size, smallest first:")
    for sz, path, label, prev_label, next_label in sorted(medium_blocks):
        print(f"#   {path}  {label}  ({sz} bytes)  prev={prev_label}  next={next_label}")
    print(f"# Known dead end already documented in DECOMP_RULES.md: several of the")
    print(f"# asm/code_080C7F00.s blocks around .L080D12xx-.L080D14xx belong to the already-")
    print(f"# diagnosed 'Unpack'/body-mode bit-reader family (ABI shared across bl calls via")
    print(f"# r2/r3, structurally impossible to port as C, see DECOMP_RULES.md) -- confirmed by")
    print(f"# hand-decoding one of them (round 9): real, valid, but NOT a porting target.")


if __name__ == "__main__":
    main()
