# Session notes

Local-only file. This repo (`fomt-decomp`, clone of `StanHash/fomt`) is
worked on strictly offline: `origin`'s push URL is deliberately broken
(`DISABLED-local-only-see-CLAUDE-md`) as a guardrail and must never be
restored. Never `git push`, never open a PR, never touch `origin`. Commit
locally only.

## 2026-08-20 -- toolchain bring-up + first matched function

### Build environment

- **arm-none-eabi toolchain**: already present on the machine but not on
  `PATH` -- binaries live under
  `/home/mathias/.local/opt/arm-gnu-toolchain-15.2.rel1-x86_64-arm-none-eabi/bin`.
  `as`, `strip`, `objdump`, `readelf`, `cpp` were missing symlinks in
  `~/.local/bin` (only `gcc`, `ld`, `objcopy`, `nm` were linked); fixed by
  symlinking the rest of the toolset from that opt dir into `~/.local/bin`.
- **agbcc/agbcp**: built from `notyourav/agbcc` (`cp` branch) via
  `tools/install_agbcp.sh`, but the stock script fails outright on this
  machine's host gcc (16.1.1, released 2026):
  - `LIBRARY_PATH` on this shell starts with a bare `:` (current-dir
    entry) which the ancient egcs `configure` refuses outright
    ("shouldn't contain the current directory") -- fixed by `unset
    LIBRARY_PATH` for the build.
  - GCC >=14 turns `-Wimplicit-int` into a hard *error* by default (was a
    warning historically); egcs-era sources rely on implicit-int
    K&R-style declarations throughout and fail to even pass `configure`'s
    "does the C compiler work" check. Fixed by building the whole agbcc/
    agbcp toolchain with `CC="gcc -std=gnu99 -fpermissive"` /
    `CXX="g++ -std=gnu++98 -fpermissive"` (plain `-std=gnu89` also
    silences the error but then chokes on C99-style `for (int i = ...)`
    declarations inside `real.h`, so gnu99+fpermissive is the one that
    gets through the whole tree).
  - `gcc_arm`/`g++_arm` (the ARM-hosted `agbcc_arm`/`agbcp_arm` binaries)
    were **not** built -- `fomt-decomp`'s `Makefile` never references
    them (only `agbcc`, `agbcp`, `old_agbcc`), so `install_agbcp.sh`'s
    later steps for those two were skipped entirely (built agbcc,
    old_agbcc, agbcp, libgcc.a, libc.a by hand, one `make` target at a
    time, then copied straight into `tools/agbcc/{bin,lib,include}`
    inside this repo, matching `install.sh`'s layout).
  - Result installed at `tools/agbcc/bin/{agbcc,old_agbcc,agbcp}` and
    `tools/agbcc/lib/{libgcc.a,libc.a}` -- all gitignored (`tools/.gitignore`
    already excludes `agbcc`), nothing of this got committed.
- **ROM**: `baserom.gba` found at
  `/home/mathias/dev/jeux-langues/harvest-moon-franglais/baserom.gba`
  (symlink to `build/baserom.gba` in that repo), SHA1
  `a2fc3574f0a65a4fcf7682fb274b9d7eebdef963` -- matches `fomt.sha1`
  exactly. Copied (not moved) into `fomt-decomp/baserom.gba`.
  `.gitignore` already has `*.gba`, confirmed `git status` shows nothing
  tracked for it.
- **Baseline `make compare`**: passes bit-exact from a clean checkout,
  **~5 seconds** wall clock for a full rebuild (`time make compare`:
  `real 0m5.011s`). This repo is still mostly `asm/`-only (a handful of
  `.cc`/`.c` files are decompiled so far), so the build is small and fast
  -- cheap enough to run `make compare` after every single-function edit
  rather than doing anything smarter (no need for object-level partial
  verification).

### Gotcha for future rounds: `objdump -bbinary` addressing

`asmdiff.sh` (checked into the repo) calls
`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb` **without**
`--adjust-vma=0x08000000`. With `-bbinary`, objdump treats address 0 as
the start of the file, so passing a real GBA address (`0x0805E6CC` etc.)
as `--start-address` silently produces **empty output** (out of range,
no error) -- this cost real time this session (false "no diff" readings
while debugging a mismatch). Always add `--adjust-vma=0x08000000`
manually when reproducing what `asmdiff.sh` does, or pass file offsets
(`address - 0x08000000`) if invoking it as documented.

### Splitting a function out of a monolithic `asm/*.s` file

`fomt.lds` places every object's `.text` explicitly, by filename, in
exact original-ROM order (`SECTIONS { .rom : { fileA.o(.text);
fileB.o(.text); ... } }`) -- addresses are **not** derived from link
order automatically, they come from this manually curated list. Several
early functions were already decompiled this way; most of the ROM is
still one or a few giant hand-numbered `asm/code_ADDRESS.s` files with
hundreds of functions concatenated in one `.text` blob (e.g.
`asm/code_0803EE94.s` was 179483 lines / cov213 KB+ of code before this
session, spanning at least `0x0803EE94`-`0x0809B0FC`).

To decompile one function living in the middle of such a blob:

1. Find its `thumb_func_start` line and the next function's, via
   `grep -n`.
2. `sed` the original file into two pieces: everything up to (not
   including) the target function's `thumb_func_start` line stays under
   the original filename; everything from the *next* function's
   `thumb_func_start` onward goes into a new file named after that next
   function's address (`asm/code_<NEXTADDR>.s`), with the same 2-line
   `.INCLUDE "asm/macro.inc"` / `.SYNTAX UNIFIED` header prepended.
3. Write the C/C++ port into `src/code_<ADDR>.cc` (or `.c`).
4. Insert **both** new object references into `fomt.lds` at the exact
   point where the old single entry was, in order:
   `asm/code_OLD.o(.text); src/code_ADDR.o(.text); asm/code_NEXT.o(.text);`
5. `rm -rf build fomt.gba fomt.elf fomt.map && make compare`.
6. If the linked ROM is the wrong total *size*, it means the C function
   didn't compile to the same byte count as the original asm -- compare
   `arm-none-eabi-readelf -S build/src/code_ADDR.o` `.text` size against
   `nextaddr - thisaddr` to confirm/quantify, then diff disassembly
   (`--adjust-vma=0x08000000`!) around the function to see which
   statement produced a different instruction count.
7. If the size matches but content doesn't: diff disassembly directly,
   the mismatch is almost always register-allocation / instruction
   scheduling from writing the C in a different **statement order** than
   whatever the original source had -- reorder local variable
   computations to mirror the read/compute/store order visible in the
   original asm as closely as possible, and iterate. `make compare` is
   cheap (~5s) so this is a fast loop.
8. Only commit once `sha1sum -c fomt.sha1` reports success. Revert (`git
   checkout -- <files>; rm <new files>`) and rebuild-verify a clean
   `make compare` pass before moving to the next attempt if it doesn't
   converge in a reasonable number of tries.

### Functions matched

- **`func_0805E6CC`** (`0x0805E6CC`), the `DefinedSprite` archive
  constructor -- see `docs/GRAPHISMES.md` /
  `docs/SPRITES_INVENTORY.md` in the franglais patch repo for the
  7-section archive format this confirms in code. Split out of
  `asm/code_0803EE94.s` into `src/code_0805E6CC.cc` (+ the tail of that
  file renamed `asm/code_0805E760.s`). Matched bit-exact after one
  iteration (had to write the last section's pointer store as
  `self->instr_data = data + 4;` rather than `data += 4; self->instr_data
  = data;` -- the latter reuses the same register for the dead `data`
  write-back and produces one fewer/differently-scheduled instruction
  than the original, which computes the last offset into a fresh
  register instead of updating the cursor in place since it's never read
  again).
  Commit: `648d15f` -- "decomp: match func_0805E6CC (DefinedSprite
  archive constructor)".

### Function attempted and reverted

- **`func_0805E790`** (`0x0805E790`), the paired "frame accessor" that
  resolves a `DefinedSprite` frame index into 4 (pointer, value) pairs
  (OAM/tiles/palette/matrix) -- see the same docs section. Split
  mechanically the same way (out of what had become `asm/code_0805E760.s`
  after the first split), C written and iterated twice:
  - First attempt: wrong by -12 bytes (missing content), used an
    over-abstracted intermediate struct cast that didn't match the
    original's flatter access pattern.
  - Second attempt: **sizes matched exactly** (8388608 bytes both sides)
    but disassembly still diverges on register allocation: the original
    only spills 2 values to high registers (`r8`, `r9`) across the
    straight-line block, while every C statement ordering I tried needed
    3 (`r8`, `r9`, `sl`/`r10`) -- meaning the original C source keeps one
    fewer value simultaneously live than any reordering I tried,
    something not fully recoverable just by re-reading the instruction
    order (this is exactly the "register pressure" class of decomp
    problem that's hardest to reverse without the original source: 8
    output fields, 8 low registers minus one reserved for the `self`
    pointer, so any statement order keeping 3 partial results alive at
    once loses).
  - **Reverted cleanly** (`git checkout -- fomt.lds
    asm/code_0805E760.s; rm src/code_0805E790.cc asm/code_0805E824.s`),
    confirmed `make compare` passes again before stopping. Nothing
    broken, no partial state left in the tree.
  - Struct layout notes worth keeping for whoever picks this back up:
    the 16-byte frame-metadata entry is `{ u16 oam_count, oam_index,
    unk_04, tile_index, unk_08, pal_index, matrix_count, matrix_index
    }`; `unk_04`/`unk_08` get left-shifted by 5 into the output rather
    than used as plain counts -- their real meaning is unconfirmed. The
    4 index fields resolve to pointers via `archive_field_base +
    index << {3,5,5,3}` for OAM/tiles/palette/matrix respectively,
    matching `docs/GRAPHISMES.md`'s "x8, x32, x32, x8" note.

### Scope note (why this session only landed one function)

A parallel session sent a message mid-task asking to broaden the target
list from the original 5 candidates to *every* well-established finding
across the whole franglais-patch reverse-engineering effort (VWF chain,
HUD, PALETTE, full ENGINE.md/DIALOGUE.md, etc. -- potentially dozens of
functions). That is real, valuable scope, but this session had already
sunk substantial time into getting agbcc/agbcp to build at all against a
2026-era host toolchain (see above), and the one function landed
(`func_0805E6CC`) took multiple iterations just on the disassembly-match
side, plus a second (`func_0805E790`) that didn't converge. Given that,
this round intentionally stopped after establishing the environment +
the split methodology + one clean match, rather than rushing several
more functions and risking a bad commit. See "Priority list for the next
round" below for where to pick up.

### Priority list for the next round

In rough order of expected effort-to-match, based on what's already
documented in `/home/mathias/dev/jeux-langues/harvest-moon-franglais/docs/`:

1. **`func_0805E790`** (`0x0805E790`) -- retry with fresh eyes on the
   register-pressure problem above; the archive/frame struct layouts are
   already fully solved, only the exact C statement order to hit 2
   spilled regs instead of 3 remains. Good candidate for a >1-iteration
   budget rather than a quick attempt.
2. **`franglais_transition_ctl_query`** / `0x08050DF0` -- `docs/CHARACTER_SELECT.md`
   round 7 has this one fully characterized dynamically.
3. **`Unpack`** at `0x080D102C` -- the LZSS+Huffman decoder,
   `docs/BACKGROUNDS_INVENTORY.md` has the full bitstream format decoded,
   and `tools/unpack_decoder.py` in the franglais patch repo is a
   bit-exact Python reference implementation to translate from. Larger
   function, more branches, likely more iteration to match than the
   straight-line ones above -- budget accordingly.
4. Script-callable native dispatch table `0x0803F900` --
   `docs/DIALOGUE.md` round 23. Table/dispatch-shaped code tends to
   match on the first or second try if the table entries themselves are
   already correctly typed asm data (check whether `asm/vtables.s` or a
   sibling data file already carries it before assuming it needs
   porting as code).
5. Screen/scene constructor table `0x080E59D4`-`0x080E8618` --
   `docs/ENGINE.md`, round `decomp-boot-callers`. Grep for these bounds
   in `asm/` first; did not check this session whether it's plain data
   (in which case it's a `.rodata`-relabelling job, much cheaper) or
   code.
6. Everything else flagged by the parallel-session message as
   "well-established" across `docs/VWF.md`, `docs/HUD.md`,
   `docs/PALETTE.md`, the rest of `docs/ENGINE.md`
   (FOMT-203/204/205/206/207), the rest of `docs/DIALOGUE.md` (24+
   rounds), `docs/SPRITES_INVENTORY.md`/`docs/GRAPHISMES.md` beyond the
   `DefinedSprite` pair, `docs/BACKGROUNDS_INVENTORY.md`,
   `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`,
   `docs/LANGUAGE_LEVEL.md` -- none of this was scoped function-by-function
   this session (no addresses individually checked against `asm/` for
   whether they're even reachable as discrete symbols yet); a future
   round should start there with a pass that just lists candidate
   addresses + whether they already have a `thumb_func_start` symbol in
   `asm/`, before attempting any port, to build a real prioritized queue
   instead of guessing at effort.

### Repo state at end of session

- Working tree clean, `make compare` passes bit-exact.
- One new commit on top of `9636a71`: `648d15f` (func_0805E6CC).
- `origin` push URL untouched (`DISABLED-local-only-see-CLAUDE-md`),
  nothing pushed, no PR opened, no network action taken against origin.

## 2026-08-20, round 2 -- OBJ-palette allocator attempted, no new matches

Scope for this round (per a parallel session's request): stop limiting to
the original 5 candidates, sweep the *whole* franglais-patch docs tree
(`docs/VWF.md`, `docs/HUD.md`, `docs/PALETTE.md`, `docs/ENGINE.md`,
`docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
`docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`, the
`docs/CHARACTER_SELECT.md`/`docs/LANGUAGE_LEVEL.md` pair that only exist
in the `character-select`/`lang-level` worktrees, not `main`) and port
whatever's well-established. Honest result: **zero new matches this
round** -- two different functions were attempted, both got close
(same total byte count as the original in one case) but neither
converged, and both were cleanly reverted. Time went into reading through
the docs to find well-specified candidates and iterating on register
allocation, which turned out to be the wrong axis to spend a short round
on (see "what to do differently" at the end of this section).

### Read in full or in relevant part this round

`docs/VWF.md` (full, 291 lines), `docs/HUD.md` (\~300 lines around the
OBJ-palette allocator section, not the full 900), `docs/PALETTE.md`
(the allocator-related second half). Not reached this round:
`docs/ENGINE.md`, `docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
`docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`, the
worktree-only `CHARACTER_SELECT.md`/`LANGUAGE_LEVEL.md`.

### Function attempted and reverted: `func_0800736C` (`franglais_objpal_alloc`)

`docs/HUD.md` ("L'allocateur de banques de palette OBJ (0x03000404)")
fully specifies this family: a 16-slot free-list allocator at
`gUnk_03000404` (already has a partial C++ struct in `src/hardware.cc`,
`Unk_hardware_03000404`, with helper methods `AllocEntry`/`FreeEntry`/
`GetEntry`/`IndexOf`/`inl_pred_0`/`inl_func_0`/`inl_func_1` that
`func_080071BC` right above it in the same file already uses **and
matches** -- a very promising precedent). `func_0800736C` pops the free
list, sets `refcount=1`, stamps a fresh generation (wrapping to 1, never
0, past `0xFFFF`), and returns the packed handle
`(generation << 4) | (bank_index & 0xF)`, or `0` if the free list was
empty. Mechanically much cheaper to attempt than the `asm/code_0803EE94.s`
family from round 1: `asm/hardware.s`'s first function starts exactly
where `src/hardware.cc`'s last function (`func_080071BC`) ends, so no
new split-file/`.lds` surgery was needed at all -- just trim
`func_0800736C`'s block off the top of `asm/hardware.s` and append the C
port to the bottom of `src/hardware.cc`.

Two attempts, both reverted:

1. **Using the existing `AllocEntry` helper** (`ent =
   h->AllocEntry(h->unk_00); if (ent == nullptr) return 0;` then the rest
   of the logic straight-line): total size **8 bytes short** of the
   original. Disassembly diff shows agbcp collapsed what the original
   keeps as **two separate, redundant null checks** (one guarding the
   free-list-head dereference, one on the allocated pointer afterward --
   the same value, tested twice) into a single shared branch via basic
   CSE/value-numbering, something the original compiled output does
   *not* do (it keeps the dead second check). Net effect: my version
   takes a different, shorter early-exit path and the two builds
   permanently diverge in instruction count from there on.
2. **Writing the free-list pop out literally** (no `AllocEntry` call --
   `ent = h->unk_00; if (ent == nullptr) return 0; h->unk_00 =
   ent->next_free; if (ent == nullptr) return 0;`, i.e. the exact
   textual double-check the disassembly implies) to try to force agbcp
   to keep both checks distinct: **worse**, 16 bytes short and a
   different register footprint entirely (`push {r4,lr}` instead of
   `push {r4,r5,lr}` -- the compiler stopped keeping `ent` alive in a
   dedicated register altogether for the later bitmap-index/generation
   code, diverging even harder).

Reverted cleanly (`git checkout -- src/hardware.cc asm/hardware.s`),
re-verified `make compare` passes before stopping.

**Lesson for whoever retries this**: neither the "call the shared
helper" nor the "write it out literal" version reproduces the original's
specific pattern of *keeping a provably-redundant branch*. That's a
strong signal the ORIGINAL SOURCE genuinely had two textually-different
conditions that happen to test the same runtime value only by
coincidence of this call site (e.g. a macro or a different helper than
`AllocEntry`/`FreeEntry`, not obviously equal to the compiler at the
IR level) -- not that the C here is fundamentally wrong, just that the
literal expression shape matters more than the semantics for whether
agbcp's (fairly weak, egcs-1999-era) optimizer proves the redundancy.
Worth trying: a version that reads `h->unk_00` into a *second, distinct*
local variable for the second check (so the two tests are on two
different C variables that happen to hold equal values, rather than the
same variable/expression re-tested) -- that's the one combination not
yet tried.

### Not attempted this round (same reasons as `func_0805E790` in round 1)

The scope-expansion list from the parallel session is real and still
open: `franglais_transition_ctl_query` (`0x08050DF0`), `Unpack`
(`0x080D102C`, Python reference already exists), the script dispatch
table (`0x0803F900`), the scene/screen table (`0x080E59D4`-`0x080E8618`),
`franglais_known_vwf_resolve_glyph` (`0x080D0D28` -- has a genuine jump
table for the `0xB1`-`0xC3` range, likely harder, but the two
`DrawGlyphAt` variants at `0x0804E4AC`/`0x0804E5AC` and the two
`DrawString` loops at `0x0804E8F0`/`0x0804E958` in `docs/VWF.md` are all
fully specified and *don't* have the register-pressure/CSE pathology hit
this round or in round 1 -- untested, but structurally simpler
(sequential reads + one alignment branch, no 7-way unrolled section walk
and no free-list pop) and worth trying first next round -- plus
everything else flagged in round 1's priority list (`docs/ENGINE.md`,
`docs/DIALOGUE.md` in full, `docs/BACKGROUNDS_INVENTORY.md`,
`docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`,
`docs/CHARACTER_SELECT.md`/`docs/LANGUAGE_LEVEL.md` -- the latter two
only exist in the `character-select`/`lang-level` worktrees under
`~/dev/jeux-langues/worktrees/`, not in `harvest-moon-franglais/docs/`
on `main`, so fetch them from there).

### What to do differently next round

Two rounds in a row have now spent most of their budget on
register-allocation/CSE archaeology for 1-2 functions rather than
sweeping breadth. For a short round, prefer candidates from
`docs/VWF.md`'s `DrawGlyphAt`/`DrawString` family (straight-line reads
and simple alignment branches, no free-list/section-walk register
pressure) over anything that pops a free list or walks N unrolled
sections -- the latter category has now failed to converge twice running
(`func_0805E790` in round 1, `func_0800736C` this round) and should be
treated as genuinely harder, not attempted again without a larger
iteration budget than a single short round provides.

### Repo state at end of round 2

- Working tree clean, `make compare` passes bit-exact.
- No new commits this round (both attempts reverted before commit).
- Still just `648d15f` (func_0805E6CC) + `63da4d6` (SESSION_NOTES.md) on
  top of `9636a71`.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## 2026-08-20, round 3 -- both DrawString loops matched; DrawGlyphAt and a
tiny scene constructor both hit new, narrower failure modes

Scope: round 2 explicitly recommended trying `docs/VWF.md`'s
`DrawGlyphAt`/`DrawString` family first (straight-line reads + one
alignment branch, no free-list pop or unrolled-section walk). This round
did exactly that, **with real success this time**: both `DrawString`
loops matched bit-exact. A parallel session then added two more targets
mid-round (`franglais_new_game_naming_screen_ctor` /
`franglais_new_game_naming_sequence`, `docs/ENGINE.md` round 27 in the
patch repo) -- the small one of that pair was attempted and came
extremely close (byte-identical function, ONE 16-bit instruction's
register operand differs) but did not converge; documented in detail
below for whoever picks it up, since it's the closest near-miss so far.

### On function naming: still `func_ADDR`, deliberately, not renamed

Asked mid-round: does this repo rename ported functions to their semantic
`franglais_*` names? **No, by design, following the precedent set in
round 1** (`func_0805E6CC`, never renamed despite a well-known semantic
role). Reasons: (1) `fomt.map`/`fomt.lds`/other still-`asm/`-only files
reference these symbols by `func_ADDR` name via `bl` instructions --
renaming would require adding `ALIAS()` plumbing or updating every
still-unported caller's asm, for zero bit-exactness benefit; (2) the
upstream `StanHash/fomt` project convention (visible throughout `asm/*.s`
and already-ported `src/*.cc`) is to keep `func_ADDR` as the canonical
name and reserve semantic names for comments/docs, consistent with how
this repo already carries dozens of `func_ADDR`-named ported functions.
What THIS round does do, and will keep doing: every ported `.cc` file
opens with a comment block giving the semantic name from
`docs/VWF.md`/`docs/ENGINE.md`, its role, and a pointer back to the
franglais-patch doc section -- see `src/code_0804E8F0.cc` and
`src/code_0804E958.cc` for the pattern. If a future round wants real
`ALIAS()`-based semantic names, that's a legitimate but separate refactor
(low risk, no behavior change, could be done as its own pass across
already-matched functions) -- flagging it as an open question, not doing
it unilaterally mid-round.

### Matched: `func_0804E8F0` (`franglais_vwf_draw_string_plain`, `0x0804E8F0`)

Split out of the tail of `asm/code_0803EE94.s` (the same giant blob
`func_0805E6CC` came out of in round 1; still huge, still not fully
carved up). Body: walks a NUL-terminated string, accumulates 1- or 2-byte
glyph codes (`code = (code << 8) | next_byte`, reset whenever
`DrawGlyphAt` resolves a glyph), calls `DrawGlyphAt` (`func_0804E4AC`,
left as asm, not ported) per code, advances `x` by 8 or `0x10` px per
resolved glyph kind, stops at the window's right edge
`(dims & 0xFFFF) * 8`.

Two fixes needed over the first literal translation (which matched size
exactly, 0x68 bytes, but diverged in content from byte 4 onward):

1. **The right-edge width must be written as the literal double-shift
   `(dims << 16) >> 13`, not `(dims & 0xFFFF) << 3`.** Both are
   mathematically identical, but agbcp compiles `& 0xFFFF` as a
   PC-relative literal-pool load of the mask constant + `ands` + `lsls`
   (10 bytes), while the shift-pair form compiles to exactly the two
   `lsls`/`lsrs` instructions the original has (4 bytes) -- this is the
   SAME lesson round 2 already hit for `func_0800736C`'s free-list logic,
   now confirmed to generalize: whenever the original does a masking
   double-shift, write the double-shift literally, never `& mask`.
2. **The per-glyph-kind dispatch (`kind == 1` / `kind == 0` / `kind == 2`)
   must be a `switch` with an explicit `default: return;`, not
   `if (kind == 1) {...} else if (kind == 2) {...}`.** The original
   keeps a provably-dead extra `cmp`+redundant default branch that jumps
   straight to the function epilogue (skipping the `s++`/reload that
   every other path does) -- an if/else-if collapses that dead path away
   entirely. This is the SAME shape lesson as round 2's `AllocEntry`
   redundant-branch finding, now with a concrete fix that worked: write
   the defensive `default:` case explicitly even though `kind` is never
   actually anything but 0/1/2 at runtime.

Commit: `ecef66e`.

### Matched: `func_0804E958` (`franglais_vwf_draw_string_recolor`, `0x0804E958`)

Same loop, forwards a pair of (anchor, target) recolor colors to
`DrawGlyphAt`-recolor (`func_0804E5AC`, still asm) each call. **Matched
bit-exact on the FIRST attempt**, by directly reusing the exact shape
worked out for `func_0804E8F0` above (double-shift width, switch/default
dispatch) -- strong confirmation that the shape generalizes rather than
being a lucky one-off, and that the "two fixes" above are the real,
reusable lesson from this function family, not incidental.

Commit: `3b2a40d`.

**Notable side finding, not otherwise acted on**: while splitting this
function out, `func_0804E9C8`/`func_0804E9CC` -- the "unaligned blitter"
that `docs/VWF.md` flags as the PARTIALLY-understood mystery function
(the one a previous session's `y=185` non-tile-aligned case delegates
to) -- turned out to be trivial **two-instruction stubs
(`movs r0, #0; bx lr`)** in the untouched vanilla ROM. They are no-ops in
the base game; whatever franglais-patch behavior involving them is a
PATCH-introduced code path (the dedicated trampoline fix mentioned in
`docs/VWF.md`'s 2026-08-19 section), not something the vanilla engine
ever exercises itself. Worth updating `docs/VWF.md` in the patch repo to
record this (not done here -- out of scope, this repo doesn't touch the
patch repo).

### Repo hygiene fix: `682e105`

Discovered while reverting a later attempt: the `func_0804E958` commit
(`3b2a40d`) used `git add -A -- src/code_0804E958.cc asm/code_0804E9C8.s
fomt.lds` to stage its changes, but that pathspec-restricted `-A` did NOT
pick up the deletion of `asm/code_0804E958.s` (replaced earlier in the
same edit by `src/code_0804E958.cc` + `asm/code_0804E9C8.s`), so HEAD
kept tracking 30907 lines of stale, on-disk-deleted content for a file
`fomt.lds` no longer references. Harmless for the build (confirmed
`make compare` bit-exact both before and after the fix), just a stray
tracked file. Fixed with a dedicated small commit. **Lesson for future
rounds**: `git add -A -- <explicit paths>` does not reliably stage
deletions the way plain `git add -A` does when a file is deleted outside
the given pathspec's exact list -- prefer `git status --short` review
(not just the files you meant to touch) before every commit in this
workflow, not just the "did my new files show up" check.

### Attempted and reverted: `func_08004C54` (`franglais_new_game_naming_screen_ctor`, `0x08004C54`)

New target from a parallel session (`claude/decomp-screen-activation`,
patch repo, `docs/ENGINE.md` round 27): a 20-byte scene-table record #12
constructor, same idiom as 9 other already-Ghidra-confirmed constructors
in that document -- stamp a vtable pointer, then call the shared base
constructor (`func_080007EC`, already ported in `src/scene.cc`, declared
there with an EMPTY-parens `extern "C"` signature relying on the object
pointer surviving in `r0` across the call since `func_080007EC` never
actually needs a passed argument at the C level -- this convention was
already established, not invented this round).

Split cleanly out of `asm/new_game.s` (no `.lds` surgery complexity,
just two functions at the split point, same as round 1's easy cases).
**Extremely close**: the compiled function is BYTE-IDENTICAL to the
original except for a SINGLE instruction's register operand --

```
original:  ldr r2, [pc, #12]  /  str r2, [r0, #0]
mine:      ldr r1, [pc, #12]  /  str r1, [r0, #0]
```

-- everything else (the `push {lr}`, the `bl func_080007EC`, the
`pop {r0}; bx r0` epilogue) matches exactly, same total size (0x14 = 20
bytes both). This is the closest near-miss of any round so far: a real
semantic/structural match, just one scratch-register number off.

**Every variant tried, all producing the identical r1-not-r2 result**
(fast-iteration harness used: `arm-none-eabi-cpp | agbcp -O2 ... | as`
on just this one file, ~1s/iteration, skipping the full link -- worth
keeping `/tmp/quicktest.sh`-style harnesses like this for future
single-function register puzzles instead of always paying the full
`make compare` cost per guess):

1. `void *` self with `*(void**)self = &vtable;`, empty-parens call.
2. Same, with a named `struct { void *vtable; }` self type instead of a
   raw cast.
3. Splitting the assignment into `void **vt = &self->vtable; *vt = ...;`
   (testing whether the original computes the field address in a
   register even at offset 0).
4. Passing `self` explicitly to `func_080007EC(self)` with a matching
   1-arg prototype (vs. relying on register survival through an
   empty-parens declared callee).
5. Adding an unused second formal parameter to `func_08004C54` itself,
   to test whether an extra (unused) parameter reserves `r1` in the
   register-numbering scheme.
6. `vtable_unk_080E5A88` declared as `u32[]` (array decay) instead of
   `void *` (address-of) -- tests whether array-decay vs. explicit `&`
   compiles through a different intermediate.
7. Returning `self` (`Unk_08004C54 *`) instead of `void`, mimicking the
   `func_0805E6CC` return-self convention -- **this ONE was NOT a close
   miss**, it changed the whole prologue/epilogue shape (extra `push
   {r4}`/`adds r4,r0,#0` to keep `self` live across the call for the
   return), confirming the original genuinely returns `void`/discards
   the base-ctor's return value, consistent with the `pop{r0};bx r0`
   idiom already matching.
8. Capturing `func_080007EC()`'s return value into an ignored local (in
   case the original's C assigned but discarded a return value, changing
   liveness).
9. A 2-argument `func_080007EC(self, 0)` call (testing whether the real
   base-ctor signature takes a 2nd parameter, which would reserve `r0`
   AND `r1` as "argument slots" ahead of the call in a naive
   scratch-register scheme) -- rejected: adds a visible extra `movs
   r1, #0` instruction not present in the original, and still uses `r1`
   for the store since the assignment is evaluated before the 2nd
   argument.
10. An unrelated dummy function declared earlier in the same
    translation unit, consuming `r1` internally -- tests whether agbcp's
    scratch-register counter is (bug-for-bug) per-file rather than
    per-function. Rejected: no effect, confirming allocation is properly
    per-function.

**Honest assessment for whoever retries this**: none of the structural
variants above changed the outcome, which argues the cause isn't in how
*this* function's C is shaped, but in something about the CALLED
function's real original signature/attributes that isn't recoverable
from this call site alone (the two most plausible remaining hypotheses,
neither tested further this round for lack of a way to falsify them
cheaply: (a) `func_080007EC`'s TRUE original prototype takes some
argument this call site passes as a non-`self`, non-obviously-visible
value that only shows up as "which register is now taken", e.g. an
implicit `__in_chrg`-style flag some CFront-era compilers do pass to
base sub-object constructors even without virtual bases -- `func_080007EC`
being ALIASed to a `_._6AScene`-mangled symbol, i.e. it's literally
`AScene::~AScene()`'s mangled name, being reused/COMDAT-folded as this
constructor's base-init step, makes this hypothesis genuinely plausible,
not just a shot in the dark; (b) something about how OTHER call sites of
`func_080007EC` across the whole ROM (there may be several, this repo
only has the one in `src/scene.cc`'s own definition) shape agbcp's
per-callee register-class preference in a way not visible from a
single-call-site experiment. Testing (a) properly would mean trying to
port `func_080007EC` itself as a REAL C++ destructor body (not just an
`ALIAS()` stub) and checking whether IT then reveals a hidden parameter
via its own disassembly -- not attempted this round, plausible next step
if someone wants to keep pulling this thread.

Reverted cleanly (`git checkout -- fomt.lds asm/new_game.s; rm
asm/code_08004C68.s src/code_08004C54.cc`), confirmed `make compare`
passes bit-exact before stopping.

### Not attempted this round: `func_0804E4AC`/`func_0804E5AC` (`DrawGlyphAt`, both variants)

Attempted `func_0804E4AC` (the plain `DrawGlyphAt`) after the two
`DrawString` wins, expecting it to be similarly tractable -- **it is
NOT**, and this is a real, important correction to round 2's priority
list, which had lumped the whole `DrawGlyphAt`/`DrawString` family
together as "structurally simpler". `DrawString` (the loop) is simple.
`DrawGlyphAt` (the per-glyph blit) is not: it has a 140-byte stack frame,
holds `dims`/`dest`/`x`/`y` plus derived `tile_x`/`tile_y`/
`width_tiles`/`height_tiles` plus two boolean flags simultaneously live,
and blits up to 4 conditional 32-byte tiles (TL always, BL/TR/BR
conditionally) via `CpuFastSet`, using ALL of `r4`-`r7` plus `r8`/`sb`/
`sl`/`ip` at points. First literal-translation attempt: compiled 20
bytes short, and every register assignment diverged starting from the
very FIRST parameter-binding instruction (`dest` went to `sl` in mine
vs. `sb` in the original) -- this is the exact register-pressure
archaeology class that has now failed 3 times total across all 3 rounds
(`func_0805E790` round 1, `func_0800736C` round 2, `func_0804E4AC` this
round), each time with the SAME root cause (the original keeps fewer
values live at some point than any C statement ordering I tried
achieves). Given round 2's explicit lesson ("don't re-attempt this class
without a larger iteration budget than a single round provides"), this
was reverted after one attempt + one refinement (fixing the same
`& 0xFFFF` mask anti-pattern from `func_0804E8F0`, which helped but did
not fix the deeper register-allocation divergence) rather than sunk
further. `func_0804E5AC` (the recolor variant, same shape) was not
attempted at all as a result -- expect it to have the identical failure
mode if tried before `func_0804E4AC` is solved, since both variants
share the same buffer/flag layout per `docs/VWF.md`.

**Important scoping correction for future rounds' priority lists**:
within a documented "family" of functions, do not assume uniform
difficulty. `DrawString` (loop, few live values) and `DrawGlyphAt`
(multi-tile conditional blit, many live values) sit in the same
`docs/VWF.md` section but are NOT the same difficulty class -- the
loop's simplicity came from calling `DrawGlyphAt` as an opaque `bl`,
which is exactly the boundary that made it tractable. `ResolveGlyph`
(`func_080D0D28`, `0x080D0D28`) -- the actual glyph-bitmap-to-4bpp-tile
IWRAM converter `DrawGlyphAt` calls -- is almost certainly harder still
(it fills up to 4 32-byte buffer slots per `docs/VWF.md`'s "the IWRAM
converter" discussion, i.e. it's the thing that makes the buffer layout
`DrawGlyphAt` reads from opaque even to this round), not recommended as
a next target without first fully characterizing it in the patch repo's
docs (dynamic trace, not just static disassembly).

### What to do differently next round

1. **`func_08004C54`'s 1-register near-miss is the single best lead in
   this file right now** -- it is closer to matching than anything else
   attempted across 3 rounds. Whoever picks it up next should try
   porting `func_080007EC` itself (currently just an `ALIAS()` stub in
   `src/scene.cc`) as a real function body to see if its true signature
   reveals the missing register-reservation cause, per the "honest
   assessment" above.
2. Do NOT re-attempt `func_0804E4AC`/`func_0804E5AC` (`DrawGlyphAt`)
   without a multi-round budget -- 3/3 attempts at this general
   register-pressure class have failed across the whole project so far.
3. `func_08004C68` (`franglais_new_game_naming_sequence`) was split out
   mechanically alongside `func_08004C54` this round but never actually
   attempted (reverted along with everything else) -- it's a real
   `do`/`while` loop with several external calls and a 0x38-byte record
   allocation, likely non-trivial; not evaluated for difficulty this
   round.
4. The rest of round 1/2's untouched priority list is still open and
   unchanged: `franglais_transition_ctl_query` (`0x08050DF0`), `Unpack`
   (`0x080D102C`, Python reference exists), the script dispatch table
   (`0x0803F900`), the scene/screen table (`0x080E59D4`-`0x080E8618`),
   `docs/ENGINE.md`/`docs/DIALOGUE.md` in full, `docs/BACKGROUNDS_INVENTORY.md`,
   `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`.

### Repo state at end of round 3

- Working tree clean, `make compare` passes bit-exact (verified via full
  clean rebuild, `rm -rf build fomt.gba fomt.elf fomt.map && make
  compare`, immediately before writing this section).
- Three new commits this round, all bit-exact-verified before commit:
  `ecef66e` (func_0804E8F0), `3b2a40d` (func_0804E958), `682e105` (stray
  tracked file cleanup, unrelated to this round's decomp work but found
  while reverting the `func_08004C54` attempt).
  `func_08004C54`/`func_08004C68` attempt fully reverted, nothing
  committed for it.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## 2026-08-20, round 4 -- `func_08004C54` matched (the 1-register near-miss
from round 3), root cause found and generalizes to a whole function family

Scope: priority 1 was to shape-hunt the round-3 near-miss
(`func_08004C54`, byte-identical except `r1` vs `r2` on one instruction)
using the fast `/tmp/quicktest.sh` harness, systematically, rather than
guessing structural variants. **Solved on the first new angle tried**,
not by generating more structural variants of round 3's (correct-in-shape
but wrong-premise) attempts.

### Root cause: `func_08004C54` is a DESTRUCTOR, not a constructor -- and
`func_080007EC` takes a hidden second parameter

Round 3 (and the external Ghidra-based `docs/ENGINE.md` round 27 finding
in the patch repo) both assumed `func_08004C54` is a *constructor*
because it fits the "stamp vtable, call `func_080007EC`" idiom shared by
9+ other confirmed constructors. That assumption was never verified
against what `func_080007EC` *actually* compiles to -- it's only ever
been treated as an opaque `ALIAS()`'d callee. This round did the one
thing round 3 flagged as the next step ("port `func_080007EC` itself...
to see if its true signature reveals the missing register-reservation
cause") and it paid off immediately: `func_080007EC` is
`AScene::~AScene()` (`src/scene.cc:3`, `AScene::~AScene() {}`, aliased
via `EC void func_080007EC() ALIAS(_._6AScene);`). Disassembling the
**already-compiled, already-matching** `build/src/scene.o` output for
`_._6AScene` (not asm/the ROM -- this function was ALREADY ported and
verified, just never actually inspected) shows:

```
push {lr}
adds r2, r0, #0      @ r2 = self  (moved OUT of r0!)
ldr  r0, [pc, #20]   @ r0 = &own vtable
str  r0, [r2, #0]     @ self->vtable = &vt
movs r0, #1
ands r0, r1           @ r0 = in_chrg & 1
cmp  r0, #0
beq  skip
adds r0, r2, #0
bl   __builtin_delete  @ conditionally delete(self)
skip:
pop {r0}
bx r0
```

**`func_080007EC` takes `(void *self, int in_chrg)` in `r0`/`r1`** -- the
classic ARM/CFront C++ ABI "in-charge" flag that folds the deleting and
non-deleting destructor variants into one function (`ands r0, r1` gates
the conditional `bl __builtin_delete`). This single fact explains the
round-3 near-miss completely: `func_08004C54` is the DERIVED, empty-body
destructor of the scene-table record #12 class -- it resets its own
vtable pointer, then tail-calls the base destructor **forwarding
`self`/`in_chrg` through `r0`/`r1` completely unchanged** (never touching
either register before the `bl`), which is exactly why the vtable-pointer
temporary needed a register OTHER than `r1` -- `r1` is reserved for the
pass-through `in_chrg` argument, so it lands in `r2`, matching the
original exactly.

C written (`src/code_08004C54.cc`):

```c
extern u32 vtable_unk_080E5A88[];
EC void func_080007EC(void *self, int in_chrg);

EC void func_08004C54(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5A88;
    func_080007EC(self, in_chrg);
}
```

Matched bit-exact on the **first quicktest iteration** with this shape
(verified byte-for-byte against the round-3 near-miss disassembly before
doing the full split/`.lds` wiring). Full split done the same way as
round 1 (`asm/new_game.s` trimmed, tail moved to new
`asm/code_08004C68.s`, both entries added to `fomt.lds` around the old
single `asm/new_game.o(.text)` line), `make compare` bit-exact after a
full clean rebuild. Commit: `8ecf106`.

**Important correction to the external patch-repo doc's semantic naming**
(`docs/ENGINE.md` round 27, `franglais_new_game_naming_screen_ctor`): this
is a destructor, not a constructor, despite occupying the scene-table
record's first pointer slot -- the doc's Ghidra-based pseudocode already
showed the call as `franglais_scene_object_base_ctor(param_1, param_2)`
with a second parameter, which is the same clue, just not cross-checked
against what that "base ctor" itself compiles to. Not fixed in the patch
repo this round (out of scope, this repo doesn't touch the patch repo,
same policy as prior rounds' side findings) -- worth flagging back.

### New generalization found, NOT attempted: a whole family of ~24
similarly-shaped destructors, one confirmed easy, ~23 need struct-layout
work first

`docs/ENGINE.md` round 26 in the patch repo independently found "23
static callers" of this same base-destructor idiom across the whole ROM.
Grepped this repo's `asm/*.s` for all 47 `bl func_080007EC` call sites and
classified them:

- **One trivial extra match, confirmed working via quicktest but NOT
  split/committed this round** (ran out of round budget after landing
  the two commits above): `func_080E09B0` in `asm/code_linkonce.s`
  (`0x080E09B0`), a *pure* forwarding destructor with **no vtable field
  even to stamp** (`push {lr}; bl func_080007EC; pop {r0}; bx r0`,
  literally `void func_080E09B0(void *self, int in_chrg) {
  func_080007EC(self, in_chrg); }`) -- quicktest confirms exact
  instruction-for-instruction match, size 0xC bytes. **Not split this
  round** because it lives inside `asm/code_linkonce.s`'s
  section-per-address (`.text.code_ADDR`) linkonce-COMDAT scheme, which
  is structurally different from the simple single-blob files split so
  far (round 1's method doesn't directly apply -- would need a new
  `.section .text.code_080E09BC`-style split plus a new `fomt.lds` entry
  inserted between the existing `asm/code_linkonce.o(.text.code_080D7CFC)`
  and `asm/code_linkonce.o(.text.code_080E0EF0)` lines) -- mechanically
  doable, just needs someone to work out the `.section` mechanics
  carefully before touching this file, not attempted uncarefully with
  remaining budget.
- **~23 more, harder, NOT attempted**: the majority of the 47 call sites
  (`asm/new_game.s:2519`, `asm/game_scene.s:121`, `asm/intro_scene.s:5450`,
  `asm/game_state.s:3495`, plus many in the giant
  `code_0804E9C8.s`/`code_0805E760.s`/`code_809E804.s` blobs) share a
  richer variant: `push {r4,r5,lr}; adds r4,r0; adds r5,r1;` (self/in_chrg
  moved into `r4`/`r5` up front, freeing `r0`/`r1`), stamp own vtable,
  THEN a conditional child-teardown block (`ldr r1,[r4,#4]; cmp r1,#0;
  beq skip; ldr r0,[r1,#4]; ldr r2,[r0,#8]; adds r0,r1,#0; movs r1,#3; bl
  _call_via_r2` -- a virtual call, method slot 2, arg `3`, on a child
  object read from `self+4`), THEN `adds r0,r4,#0; adds r1,r5,#0; bl
  func_080007EC`. **The struct layout here is NOT yet understood well
  enough to port confidently**: `ldr r0, [r1, #4]` reads the presumed
  child object's vtable pointer from offset **+4**, not +0, which doesn't
  match a plain `AScene*` (vtable normally at +0) or `SmartPtr<T>`
  (`include/smart_ptr.hh` is a bare 1-word wrapper, no ref-count, offset+0
  IS the raw pointer) -- something about this field's real layout (an
  extra leading word before the child pointer? a different smart-pointer
  variant with a refcount word? a one-off `this`-adjustment?) is unclear,
  and getting it wrong risks either a silent behavior mismatch that
  happens to compile to the same bytes by luck, or -- more likely, given
  how exacting agbcp's near-miss failures have been all project -- a
  clean, honest non-match. **Do not guess-port this family without first
  characterizing the child-object field's real type/offset** (a quick
  Ghidra look at 2-3 of the sampled callers' full struct layout in the
  patch repo would likely resolve this fast, cheaper than blind C
  iteration).

### Concurrent-session note

While doing the final clean-rebuild verification this round, `git status`
showed **uncommitted modifications to `src/code_0804E8F0.cc` and
`src/code_0804E958.cc`** (renaming `func_0804E8F0`/`func_0804E958` to
their semantic `franglais_vwf_draw_string_plain`/`_recolor` names, with a
new `ALIAS()` back onto the `func_ADDR` symbol for the asm callers) that
this round did **not** make. This is a parallel session actively working
on the same working tree concurrently -- confirmed `make compare` still
passes bit-exact with those changes present (the rename is
behavior-preserving via `ALIAS()`), left entirely untouched/uncommitted
by this round (not this round's work to manage, and the working tree
being shared live means those files' state at any given moment isn't
under this round's control). This round's own commit (`8ecf106`) only
staged the 4 files it actually intended
(`asm/new_game.s asm/code_08004C68.s fomt.lds src/code_08004C54.cc`),
verified via `git status --short` before committing, per round 3's
"pathspec `-A` doesn't reliably stage deletions" lesson.

### Repo state at end of round 4

- Working tree: clean except the two parallel-session files noted above
  (not this round's changes, left alone).
- One new commit this round: `8ecf106` (func_08004C54). Verified
  `make compare` bit-exact via a full clean rebuild
  (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`) both right
  after committing and again at the very end of the round.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.
- Priority list for whoever picks this up next: (1) split
  `func_080E09B0` out of `asm/code_linkonce.s` (quicktest-confirmed
  match already in hand, just needs the `.text.code_ADDR` section
  surgery); (2) characterize the child-object field layout for the ~23
  "richer" destructors in the same family before attempting them; (3)
  everything still open from rounds 1-3's priority lists
  (`franglais_transition_ctl_query` `0x08050DF0`, `Unpack` `0x080D102C`,
  the script dispatch table `0x0803F900`, `DrawGlyphAt`/`DrawGlyphAt`-recolor
  -- still not recommended without a bigger register-pressure budget,
  `docs/DIALOGUE.md`, `docs/BACKGROUNDS_INVENTORY.md`,
  `docs/CLAIRE_SPRITE_PORTABILITY.md`, `docs/MFOMT_ADDITIONS.md`).

## Round 5

### Goal

Attack the next priority target from round 4's list: `func_080E09B0`
(pure-forwarding derived destructor already quicktest-confirmed, just
needed the `.text.code_ADDR` COMDAT/linkonce section split worked out),
apply two naming-convention corrections from Mathias mid-round, and keep
`DECOMP_RULES.md`/this file current.

### `func_080E09B0` matched (commit `e4638b2`)

Body: `push {lr}; bl func_080007EC; pop {r0}; bx r0` -- 0xC bytes, a pure
tail-forward to the base `AScene` destructor with **no own vtable field
to stamp** (unlike `func_08004C54`, which resets its own vtable pointer
first). Ported as a plain free function `func_080E09B0(void *self, int
in_chrg) { func_080007EC(self, in_chrg); }` -- no semantic name found in
the patch repo's docs for this address, kept as the raw symbol.

**Split mechanics, and a real near-miss caught and fixed before commit**:
`asm/code_linkonce.s` groups many functions under a handful of explicit
`.section ".text.code_ADDR"` blocks (not one section per function
despite the "linkonce" name) -- same split method as any monolithic
`.s` file applies (cut the target function's body into `src/code_ADDR.cc`,
push everything after it into a new `asm/code_NEXT.s`). The trap: the
`fomt.lds` line right after `asm/code_linkonce.o(.text.code_080D7CFC)`
is `*(.gnu.linkonce.t.__lower_bound__H4ZPC12JumpTableEntZiZ...)` --
first assumption was that this wildcard is inert (matches nothing, 0
bytes), since nothing in `asm/*.s` defines that mangled symbol. Wrong:
it's a REAL C++ template instantiation, compiled fresh from
`src/script_engine.cc` (already ported), occupying a genuine ~60-byte
(0x3C) gap in the ROM (`0x080E0EB4`-`0x080E0EF0`) that sits right BEFORE
the next explicit `.text.code_080E0EF0` entry, not after
`.text.code_080D7CFC`'s nominal end. First attempt inserted the two new
split entries (`src/code_080E09B0.o(.text); asm/code_080E09BC.o(.text);`)
AFTER that wildcard in `fomt.lds` -- built and linked cleanly (no error,
`make` exit 0) but **`sha1sum -c` failed**, with a huge contiguous diff
block starting exactly at `0x080E09B0` and ending exactly at
`0x080E0EF0` (full byte-diff scan + `fomt.map` inspection showed the new
stub had been shoved 0x3C bytes later than expected, with the OLD
blob's `func_080E09BC` content landing at `0x080E09B0` instead). Fixed
by moving the two new entries BEFORE the wildcard -- verified bit-exact
with two independent full clean rebuilds (`rm -rf build fomt.gba
fomt.elf fomt.map && make compare`), once right after the fix and once
again before commit.

**Diagnostic method that found this fast** (documented as a general
rule in `DECOMP_RULES.md` now): don't assume a `*(.gnu.linkonce.t...)`
wildcard is a harmless vestige without checking its assigned address in
`fomt.map` from a clean build first. When `make compare` fails with NO
compiler/linker error but a sha1 mismatch, byte-diff the built ROM
against `baserom.gba`, group into contiguous ranges, and check whether
the range boundaries line up exactly with a section/symbol boundary
(they did here) -- that's a strong signal of a `fomt.lds` *ordering*
bug, not a code-content bug, and `fomt.map` directly shows where an
object's `.text` actually landed vs. where its name says it should be.

Also worth recording: `rtk`'s command-tee wrapper truncates/caches long
`make` output unpredictably in this environment (`tail -N` on its log
file sometimes showed a STALE prior run's output, including one paste
of an old `Échec` after the fix was already in place and the direct
`sha1sum -c fomt.sha1` said `Réussi`). When in doubt, re-run
`sha1sum -c fomt.sha1` directly against the just-built `fomt.gba`
instead of trusting a wrapped/tee'd `make compare` tail.

### Naming-convention corrections (mid-round, from Mathias)

1. **No patch-project branding in symbol names.** Renamed
   `franglais_vwf_draw_string_plain` -> `DrawString` and
   `franglais_vwf_draw_string_recolor` -> `DrawStringRecolor` (commit
   `916d609`), via the same `ALIAS()` mechanism used for
   `func_08004C54` in round 4 -- zero binary impact, verified bit-exact
   with a full clean rebuild after the rename. Rationale: this repo
   describes vanilla `fomt`, not our `franglais` patch; `vwf` is our own
   internal jargon, not necessarily the game's or `StanHash/fomt`'s own
   term. Keeping symbol names patch-neutral keeps the door open to
   someday proposing matches upstream (not decided, but not to be
   foreclosed by premature naming). The `docs/VWF.md` pointer stays in
   header comments as the PROVENANCE of the analysis -- that's fine,
   it's not the symbol name.
2. **C vs C++ shape must follow the REAL binary structure, not a
   uniform style preference.** Documented as a general rule (see
   `DECOMP_RULES.md`): a function with a real `this`/vtable in the
   disassembly (like `func_08004C54`) should be ported as a genuine
   class method on the real class in `include/*.hh`, not hand-rolled
   as a free C function faking a vtable to hit the same bytes. A
   function that's genuinely procedural in the original (no `this`, no
   vtable -- `DrawString`/`DrawStringRecolor`, plain `(dims, dest, x, y,
   s)` arguments) stays plain C -- inventing OO structure that isn't
   there would be guessing, which the project's non-negotiable
   discipline already forbids. Neither `func_080E09B0` nor `DrawString`/
   `DrawStringRecolor` needed changes under this rule (already correctly
   shaped: `func_080E09B0` genuinely has no vtable of its own to stamp,
   so it's correctly a plain forwarding free function despite operating
   on a `this`-like `self` pointer it doesn't own the layout of;
   `DrawString`/`DrawStringRecolor` are genuinely procedural).

Both rules are now written up in `DECOMP_RULES.md`'s "Conventions de
nommage" section for future rounds.

### Repo state at end of round 5

- Three new commits: `e4638b2` (`func_080E09B0` match), `916d609`
  (naming-convention rename), plus this session-notes/rules update.
  `make compare` verified bit-exact via full clean rebuild after each
  code-affecting commit.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No parallel-session activity observed this round
  (`git status`/`git log` matched exactly what this round produced).
- Priority list for whoever picks this up next: (1) characterize the
  child-object field layout for the ~23 "richer" destructors in
  `func_08004C54`'s family (Ghidra on 2-3 examples in the patch repo,
  offset +4 of the presumed child object) before attempting them --
  once characterized, port as real C++ methods per this round's C-vs-C++
  rule, not hand-rolled vtable pokes; (2) everything still open from
  rounds 1-3's priority lists (the function documented as
  `franglais_transition_ctl_query` in the patch repo, `0x08050DF0` --
  give it a vanilla-neutral name when ported; `Unpack` `0x080D102C`; the
  script dispatch table `0x0803F900`; `DrawGlyphAt`/`DrawGlyphAt`-recolor,
  still the "register pressure" difficulty class, not recommended
  without a bigger dedicated budget; `docs/DIALOGUE.md`,
  `docs/BACKGROUNDS_INVENTORY.md`, `docs/CLAIRE_SPRITE_PORTABILITY.md`,
  `docs/MFOMT_ADDITIONS.md`).

## Round 6

### Goal

High-value cross-repo target flagged by the patch repo
(`docs/CHARACTER_SELECT.md`, round 11 on the `character-select`
worktree): `func_080AC674` (`asm/code_809E804.s:28357`), the function
containing the "category 3" conditional insertion block the patch repo
had statically located but could not resolve dynamically (`*param_2`
nullness never observed either way in 220M-500M single-stepped
instructions). Mission: decompile the whole function, port it, verify
bit-exact, and above all pin down what `param_2` actually is -- flagged
by the patch repo as possibly THE key to the Claire invisibility bug.

### `param_2` resolved with certainty -- by static proof, not dynamic tracing

**The two callers, found exhaustively** (`grep -rn "bl func_080AC674"
asm/ src/` -- only 2 hits in the whole tree, confirming no vtable/jump-
table indirection reaches this function either, since it's never
referenced as a `.4byte func_080AC674` literal anywhere):
`func_080AC9EC` (`asm/code_809E804.s:28782`, ctor with vtables
`vtable_unk_080E8440`/`vtable_unk_080E8344`) and `func_080175B4`
(`asm/game_state.s:14694`, ctor with vtables `vtable_unk_080E6038`/
`vtable_unk_080E5EC4`) -- almost certainly the male-farmer and
female-farmer (Claire) actor constructors respectively, given they
install different vtable pairs but otherwise call `func_080AC674`
through byte-identical call sequences.

**Both callers pass `param_2` the exact same way**, and it is this
shared shape that resolves the question:

```
ldr r2, [<some pointer the caller owns>]   @ r2 = <a moved-from field>
ldr r1, [r2]        @ r1 = the value stored in that field (an actor/owner pointer, or null)
movs r3, #0
str r3, [r2]        @ the caller's own field is zeroed (ownership handed off)
str r1, [sp, #4]     @ r1 saved into a FRESH stack-local scratch slot
add r1, sp, #4        @ param_2 = &that local slot
bl func_080AC674
```

i.e. `param_2` is never a persistent pointer -- it is always the
address of a throw-away local variable on the CALLER's stack frame,
freshly written immediately before the call by moving a pointer out of
one of the caller's own fields (read it, zero the source -- classic
single-owner handoff idiom).

Inside `func_080AC674` itself (`this` = `r5` = param_1, `param_2` = `r1`
saved in `sl`/r10 for the whole function body -- confirmed unclobbered,
`sl` is only ever touched at entry and at the final check):

```
0x080AC674-67E (prologue, first 6 real instructions):
    r0 = *param_2          @ read the moved-in value
    *param_2 = 0             @ !!! zero it right back, inside the callee's OWN prologue !!!
    this[0] = r0              @ store the moved-in value into this->field_0 (this = caller's object + 4, see below)
...
0x080AC7E8-EE (the block the patch repo found):
    r1 = *param_2             @ re-read the SAME memory cell
    if (r1 == 0) goto epilogue  @ always true, see below
    ... (*(r1->field_0x90))->vtable[2](r1, 3)   @ dead in practice
```

Between those two points, nothing ever writes back to the address held
in `sl`. It is a private stack slot in the CALLER's frame; it is never
passed to any of the ~15 subroutine calls made in between
(`func_08007128`/`func_0800736C`/`func_080074C0` -- pool-of-13 hardware
handles at `this+0xD10`; `func_0805E6CC` x13 -- pool of `DefinedSprite`
sub-objects at `this+0xDB0..0xFF0`, stride `0x30`; a bulk zero-fill loop
over `[this+4, this+0x194)`) -- none of them receive `&local` as an
argument, so none of them can alias it. Therefore `*param_2` is PROVABLY
zero at the check point, for both known call paths, always -- not
"usually zero", not "zero for Claire but not the farmer" -- structurally,
unconditionally zero, by construction of the calling convention itself.

**Consequence for the patch repo's open question**
(`docs/CHARACTER_SELECT.md` round 11, "Verifier dynamiquement si
`*param_2` differe reellement selon le genre -- ce round n'a pas eu le
budget de trancher") -- answered, no dynamic trace needed: it does not
differ by gender, because it can never be non-zero for EITHER gender,
given the only two call sites that exist in the whole ROM. The
"category 3" vtable-call block guarded by this check
(`0x080AC7F0-0x080AC7FC`, `bl FUN_080d3914`/`_call_via_r2`) is dead code
as written, unconditionally, in vanilla FoMT, for both the male and the
female actor constructors alike. This also explains, as a side finding,
why round 11's dynamic checkpoint at `0x080AC7EC`/`0x080AC7FC` never hit
across hundreds of millions of traced instructions in EITHER build --
not a single-step/`run_frame()` tooling bug (the open concern flagged at
the end of round 11), but the correct, expected result of genuinely
unreachable-as-true code. Round 10/11's separate conclusion -- that this
insertion path is unrelated to the male=3/female=0 category-3 tally
difference the composer reads -- is independently REINFORCED, not just
"not contradicted": the branch that would matter never executes for
either gender, so whatever sets the tally must happen through a
completely different code path, most likely (per round 11's own
remaining lead) somewhere in `sortir_de_la_ferme` after frame 16500,
still untraced.

**Structural bonus finding**: in both callers, the vtable-install
sequence installs TWO vtable pointers at the object's offset 0
(`str r0,[rX]` then `adds r0,rX,#0; stm r0!,{r1}` -- the second store
lands at the SAME address as the first, silently discarding it, then
post-increments `r0` by 4) -- and `r0` (now `object+4`) is never reset
before the `bl func_080AC674` that follows a few instructions later.
`this` inside `func_080AC674` is therefore `object_base + 4`, not
`object_base` -- i.e. this function initializes a sub-region starting
one word after the real vtable slot, consistent with the double-store
being agbcp's (non-CSE) naive codegen for a 2-vtable multiple-
inheritance layout where only the most-derived vtable pointer survives
at offset 0 of the real object. Any future struct layout for the
farmer/Claire actor class must account for this +4 shift when mapping
`func_080AC674`'s field offsets (`this+0`, `this+0x194`,
`this+0x198..this+0x1031`) back onto the real object.

### Field map recovered (this = object_base + 4)

```
+0x000            : moved-in owner/spawner pointer (from *param_2), consumed once, param_2 slot re-zeroed by caller convention
+0x004..+0x193    : bulk zero-filled (0x190 bytes / 100 words) -- fields not otherwise touched by this function
+0x194            : zeroed (u32) -- likely a counter/flag, name unclear
+0x198..+0x237    : untouched by this function (gap between the +0x194 field and the +0x238 pool -- not written here)
+0x238..+0x28F    : pool of 22 slots, stride 0x84 (132) bytes -- byte0 |= 0xFF, byte1=0, byte2=0, byte3=1 (likely a generic actor/entity slot pool: status=0xFF="free", 2 zeroed flags, 1 default byte)
+0xD10..+0xD9B    : pool of 13 slots, stride 0xC (12) bytes -- [+0]=func_08007128(&entry) (Unk_hardware_H ctor, src/hardware.cc, bumps a global usage counter), [+4]=func_0800736C(&entry) result, [+8]=func_080074C0(&entry) result (byte), [+9]=0xFF, [+0xA]=0 -- likely 13 hardware/sound-channel-style handles
+0xDAC, +0xDAD    : zeroed (u8 each) -- 2 flag bytes right after the +0xD10 pool
+0xDB0..+0xFDF    : 13x DefinedSprite sub-objects (KNOWN struct, src/code_0805E6CC.cc), stride 0x30, constructed from 13 distinct global archives: gUnk_0858BA28, gUnk_086678A0, gUnk_0871EF00, gUnk_086FAA80, gUnk_0871D51C, gUnk_0871EDD4, gUnk_0871ECAC, gUnk_08667060, gUnk_08727A74, gUnk_08726CCC, gUnk_08727368, gUnk_08725DA0, gUnk_086F2FAC (very likely per-costume/per-pose sprite archives for the player character)
+0x1020, +0x1024  : zeroed (u32 each)
+0x1028           : zeroed (u32) -- struct starts here, saved as [sp,#8] base for a following sub-init
+0x102C, +0x102E  : zeroed (u16 each)
+0x1031           : zeroed (u8) -- this+0x1028+9
+0x090 (of *param_2's TARGET object, not `this`) : pointer field read for the dead vtable-call block ((*(owner+0x90))->vtable[2])
```

### Full C++ port -- NOT attempted this round, flagged for a dedicated round

`func_080AC674` matches, and arguably exceeds, the "register pressure"
difficulty class documented above (`func_0805E790`/`func_0800736C`/
`func_0804E4AC`, 3/3 historical failures without a multi-round budget):
`r8`, `sb` (r9) AND `sl` (r10) are all live simultaneously through the
ENTIRE body (not just prologue/epilogue) -- `sl` holds `param_2` across
~180 instructions, `r8`/`sb` are reused for different purposes across
different loops within the same function, on top of two structurally
distinct object-pool-initialization loops and 13 near-identical-but-
not-quite `func_0805E6CC` call sites whose address arithmetic reuses
partial sums across registers in a way that will be easy to get subtly
wrong (three of the 13 offsets are computed as increments of a PREVIOUS
iteration's register value, not as fresh literals -- exactly the kind
of literal-instruction-order dependency rule #4 in `DECOMP_RULES.md`
warns about).

Per this repo's own non-negotiable discipline (never commit a near-match,
verify bit-exact via clean rebuild before any commit), and given the
mission's real prize (`param_2`) was fully resolved by STATIC analysis
alone with no ambiguity, this round chose not to gamble the remaining
budget on a rushed literal port that this repo's own track record says
is unlikely to converge on a first attempt. No files were modified this
round -- `git status --short` clean throughout, baseline `make compare`
reconfirmed bit-exact (`sha1sum -c fomt.sha1` -> `fomt.gba: Reussi`)
both before and after the investigation.

### Note for the patch repo (`character-select` worktree), left here per mission instructions

`docs/CHARACTER_SELECT.md` round 11's open item "Verifier dynamiquement
si `*param_2` differe reellement selon le genre" can be closed with a
definitive NO, it never differs -- it is unconditionally zero for both
genders, by construction of the only two call sites that exist in the
whole ROM. The "category 3" vtable-call block inside `func_080AC674`
(`0x080AC7E8-0x080AC800`) is dead code in vanilla FoMT for the male AND
the female actor. This is a genuinely separate, unrelated dead branch
from the invisibility bug's real cause -- round 10/11's suspicion that
this insertion site is a red herring is now confirmed, not just
unrefuted. The real Claire-invisibility root cause must lie elsewhere;
per round 11's own remaining open item, the next lead is the composer's
category-3 tally write site, most likely inside `sortir_de_la_ferme`
(post frame-16500), never traced instruction-by-instruction so far.
Separately, this round's structural finding that `func_080AC674`'s
`this` = `object_base + 4` (not `object_base`) may be useful if a future
round wants to map the full farmer/Claire actor layout: offsets `+0xDB0`
through `+0xFDF` of `object_base+4` hold 13 `DefinedSprite`-typed
sub-objects (per-costume/pose sprite archives), which is the kind of
field a sprite-swap patch (Claire's alternate archives) would plausibly
need to enumerate.
