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
## Round 6 -- `func_0805E790` retried with systematic shape-hunting, still not
converged; narrowed the failure to a single register-class allocation
decision, not the surrounding computation shape

Scope: retry round 1's failed `func_0805E790` (the `DefinedSprite` frame
accessor, companion to the matched `func_0805E6CC`) using the
`quicktest.sh`-style fast harness (`cpp | agbcp | as`, no link), generating
and testing several structurally distinct variants rather than one or two
guesses. **Did not converge**, but made real progress narrowing the exact
failure point, worth recording precisely so a future round doesn't repeat
the same five variants.

### Struct layout re-confirmed (matches round 1's notes exactly)

`FrameMetadata` (16-byte entry, indexed by `frame_index` into
`self->frame_data`): `{ u16 oam_count, oam_index, unk_04, tile_index,
unk_08, pal_index, matrix_count, matrix_index }`. Output `FrameResolved`
(0x20 bytes, written through an explicit `out` pointer parameter that's
`r0` at the call site -- confirmed real explicit pointer, NOT a hidden
struct-return slot, see below): `{ void *oam_ptr; u16 oam_count; void
*tile_ptr; u16 unk_04_shl5; void *palette_ptr; u16 unk_08_shl5; void
*matrix_ptr; u16 matrix_count; }`. Pointers resolve as `archive_base_field
+ (index << {3,5,5,3})` for oam/tile/palette/matrix respectively, matching
`docs/GRAPHISMES.md`.

### Confirmed via a real caller site: `out` is a genuine explicit pointer
parameter, not hidden struct-return

Round 1 didn't check this. `asm/code_0803A8A4.s:3885` calls it as:
```
mov r0, sp      @ out = &local on caller's stack
adds r1, r6, #0 @ self
movs r2, #0     @ frame_index = 0
bl func_0805E790
ldr r2, [sp, #0x10]   @ reads out->palette_ptr afterward
```
This rules out one hypothesis this round tested (see below): the function
does NOT return `FrameResolved` by value via the ARM hidden-return-pointer
ABI convention -- it's a plain `void func(FrameResolved *out,
DefinedSprite const *self, u32 frame_index)`, exactly as round 1 assumed.

### The real puzzle: original defers ALL 8 output stores to one block at
the very end, and evicts `out` (not `self`) to `ip` as the very first
instruction in the function body

Disassembly shows the original reads all 8 `FrameMetadata` fields
interleaved with computing `tile_ptr`/`palette_ptr` immediately (right
after their index field), but *defers* computing `oam_ptr`/`matrix_ptr`
until a block right before the stores -- and defers literally all 8
`str`/`strh` writes into `*out` to one contiguous block at the very end
(never stores incrementally as each field becomes ready). This can only
be explained by all 8 output values being held live in registers straight
through to a final block, which needs the same instruction-order-mirrors-
statement-order shape as `func_0805E6CC`/`DrawString` (see rule #4 in
`DECOMP_RULES.md`) -- i.e. the real C source almost certainly declares
local temporaries for every field first, then assigns `out->field = ...`
for all 8 fields consecutively at the end. **This exact C shape was
written and tested this round** (see "Variants tried" below) and gets the
right *macro* structure (right total instruction count in the ballpark,
right grouping) but the wrong **register class** for one value: the
original moves `out` (`r0`) to `ip` as the literal first instruction of
the function body (`mov ip, r0`), before even the `frame_count` bounds
check, freeing `r0` as scratch and never touching a low register for
`out` again until the very last block. Every variant tried this round
instead keeps `out` resident in a low callee-saved register (`r6` or
`r7`) for the whole function -- which is one low register `out` didn't
need to occupy, and that shortfall is what forces a 3rd value to spill
into a high register (`r8`/`r9`/`sl` all three used, vs. the original's
`sb`+`r8` pair only) at some point in the deferred-compute block. Which
*specific* local ends up as the 3rd spill victim was NOT stable across
variants (`tile_ptr` in one run, `unk_04` in another) -- consistent with
this being a generic "one register short" overflow rather than something
tied to a particular variable's type or position.

### Variants tried, all producing the identical "3 high regs instead of
2" result

1. **Immediate-store version** (each `out->field = ...` written right
   after its value is computed, matching a naive first-literal-translation
   reading): wrong on a more basic level too -- produces NO high-register
   spills at all (fits everything in `r0`-`r7`), 38 bytes short of the
   original (0x66 vs 0x8C). Confirms the deferred-store hypothesis is
   necessary (this immediate-store shape is definitely not it), just not
   sufficient on its own.
2. **Deferred-store version** (all temporaries declared first, single
   block of 8 `out->field = ...` assignments at the end, matching the
   read/compute order described above): right macro shape, but 3 high
   regs instead of 2, as described above. This is the closest variant.
3. **Return `FrameResolved` by value** (hidden struct-return ABI
   hypothesis, since that pattern IS known to make an unused-until-the-end
   pointer get evicted to `ip` immediately -- confirmed: this variant DOES
   put the hidden pointer in `ip` as instruction 1, matching original's
   eviction timing exactly): wrong for a different, disqualifying reason
   -- ruled out anyway by the real caller-site evidence above, but also
   the codegen itself doesn't match: this compiler implements struct
   return via a local stack temporary (`sub sp, #32`) plus an unrolled
   `ldmia`/`stmia` block-copy into the hidden pointer at the very end,
   something the original's disassembly has zero trace of (no `sub sp`
   at all, no `ldmia`/`stmia` anywhere). Bigger (0xA2 bytes vs 0x8C) and
   structurally wrong, not just register-different.
4. **Return via `(FrameResolved){...}` aggregate-literal / compound
   literal** instead of a named local + `return`: hoped this might let
   the front end write directly into the return slot without a
   materialize-then-copy step. Made it *worse* -- agbcp actually emits a
   real `bl memset` call to zero the temporary first, then the same
   `ldmia`/`stmia` copy. Confirms the copy-through-stack-temp is
   fundamental to how this compiler lowers any aggregate return, not an
   artifact of naming a local. Not the right shape regardless of the
   `out`-placement question.
5. **`register` storage-class hint on the `self` parameter**: zero effect
   on codegen (agbcp's `-O2` register allocator ignores `register` as a
   placement hint here, byte-identical output to variant 2 without it).

### Assessment: this now looks like a single-register-class allocation
quirk, not a wrong C shape

Variant 2's C shape is very likely *correct* (matches original's
read/compute/store grouping exactly, field for field) -- what's missing
is whatever makes agbcp's allocator decide, within the first instruction
of the function body, that `out` specifically (and not `self`, not any of
the 8 field temporaries) is the one value cheap enough to evict to `ip`.
Both `out` and `self` are dead-on-arrival-but-needed-later relative to
their native argument registers (`r0`, `r1`); the original evicts `out`
to `ip` and `self` to a low reg (`r7`), never the reverse, and never
either of them staying in `r0`/`r1`/`r2` past the prologue (both r0/r1
are needed almost immediately as scratch for computing the entry
pointer). No variant this round reproduced that specific asymmetry.
Plausible next angles, none attempted due to round budget: (a) try
swapping which of `out`/`self` is the FIRST expression referencing a
register-hungry computation in the function body (right now both are
"first touched" by roughly the same distance from function entry --
maybe reordering so `self`'s frame_count check literally comes textually
after some `out`-adjacent no-op would perturb the allocator's greedy
choice); (b) grep the whole ROM's `asm/*.s` for a handful of *other*
functions with the exact same "explicit out-pointer param evicted to
`ip`, used only in a tail store block" idiom (if any exist and are
simpler, they'd make a much cheaper testbed for isolating the allocator
rule than this 8-field function); (c) accept this as confirmation of the
"register pressure" difficulty class already documented in
`DECOMP_RULES.md` (now 4 attempts across 2 rounds on this one function
alone, on top of the 2 other functions in the same class) and deprioritize
further blind iteration in favor of a genuinely different technique (e.g.
inspecting agbcc/agbcp's own allocator source in `tools/agbcc` if that's
ever warranted -- not attempted this round, out of scope for a
single-function shape-hunt).

Nothing committed this round -- no C file was ever added to the tracked
worktree; all iteration happened against a scratch file outside the repo
via the quicktest harness. `git status`/`make compare` confirmed clean
and bit-exact both before and after this round's work.

### Repo state at end of round 6

- Working tree clean, `make compare` passes bit-exact (verified via full
  clean rebuild immediately before writing this section).
- No new commits this round.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

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

## 2026-08-20 -- worktree `parallel-1`, dedicated round -- `Unpack`
(`0x080D102C`): negative result, target permanently dropped

Assigned target: `Unpack` (`0x080D102C`), the LZSS+Huffman decompressor,
with the patch repo's already-validated Python reference
(`harvest-moon-franglais/tools/unpack_decoder.py`) and algorithm writeup
(`harvest-moon-franglais/docs/BACKGROUNDS_INVENTORY.md`) as the intended
guide for a real C/C++ port. **Result: no code was ported, no commit
touching `src/`/`asm/`/`fomt.lds` was made.** The target is structurally
infeasible for C decompilation, not merely difficult -- see
`DECOMP_RULES.md`'s new section "Classe de problème 'ABI partagée entre
`bl`'" for the full writeup, added this round. Summary here for the
session log:

1. **Located `Unpack`** in `asm/code_809E804.s` (line ~103423, already
   labeled `Unpack` rather than `func_080D102C` -- someone earlier
   pre-named the dispatcher entry point, its callees are still
   `func_ADDR`/`sub_ADDR`). Confirmed the whole family already exists as
   ~14 separate `thumb_func_start` entries between `0x080D102C` and
   `0x080D15C0` (the top dispatcher itself is only 196 bytes,
   `0x080D102C`-`0x080D10F0` -- small, looked tractable at first glance).
2. **Traced the top dispatcher by hand**, instruction by instruction,
   against `docs/BACKGROUNDS_INVENTORY.md`'s format description (info
   byte bit layout `[7:5]`=filter, `[4:3]`=symbol width, `[2:0]`=body
   mode) -- matches exactly, confirms the patch repo's algorithm
   understanding is correct and directly maps onto this disassembly.
3. **Found the actual blocker while checking `sub_080D1224` (body mode
   0) as a sanity check before writing any C**: it opens with `bl
   func_080D14EC` immediately followed by `bl func_080D11A4` (the bit
   reader), both consuming the bit-reader state (`buf` in `r2`, `avail`
   in `r3`) that was only ever initialized several `bl` boundaries
   earlier, inside `Unpack` itself -- with **no reload of `r2`/`r3`
   anywhere in between**, neither at the `Unpack` call sites nor at
   `sub_080D1224`'s own entry. `r0`-`r3` are caller-saved in every
   ARM/Thumb calling convention agbcp could plausibly generate code
   under; no C source, in any form, compiles to a `bl` sequence that
   relies on a non-return-value register surviving an intervening call
   to a genuinely separate function. This is definitive, not a
   probabilistic judgment call -- verified by direct inspection of both
   the caller and the callee's entry, not inferred from difficulty.
4. Cross-checked against the patch repo's own framing
   (`docs/BACKGROUNDS_INVENTORY.md`, "Pourquoi pas la décompilation
   Ghidra directe": "de l'assembleur Thumb écrit à la main, optimisé,
   pas une sortie de compilateur") -- same conclusion, reached
   independently this round from the raw disassembly rather than taken
   on faith from that doc, and sharpened with the exact mechanism
   (register-passed bit-reader state surviving uninitialized-in-between
   across multiple `bl`s) rather than just the general observation that
   Ghidra's decompiler output was unreliable.
5. **No attempt was made to force a C translation anyway** (e.g. via
   named register-variable extensions) -- this repo has zero precedent
   for that pattern (`grep` for `asm("r` register-variable usage across
   `src/`/`include/` returned nothing), and forcing it would only
   reproduce the existing `.s` as inline asm dressed up as C, which
   `DECOMP_RULES.md`'s own discipline treats as not a real decompilation
   (no semantic gain, purely cosmetic, and never guaranteed bit-exact
   without becoming a line-for-line asm transcription anyway).

### Repo state at end of this round

- **Zero changes to `src/`, `asm/`, `fomt.lds`, or any build-affecting
  file.** `git status --short` before and after this round is identical
  except for `DECOMP_RULES.md` and `SESSION_NOTES.md` (this entry).
  `rm -rf build fomt.gba fomt.elf fomt.map && make compare` confirmed
  bit-exact (`ok`) both before starting and after finishing, with no
  intervening code edits -- nothing to break.
- `DECOMP_RULES.md` updated: new section "Classe de problème 'ABI
  partagée entre `bl`'" (general pattern + detection heuristic for
  future rounds hitting similar hand-written-asm subsystems), and
  `Unpack` struck from the "prochaines cibles priorisées" list with a
  pointer to this reasoning -- **do not re-assign this target** without
  a new, specific reason to doubt this diagnosis.
- No parallel-session interference observed; `origin` untouched, no
  push, no PR, per standing discipline.
- Honest bottom line: the task requested a bit-exact C/C++ match for
  `Unpack`. That specific deliverable is not achievable for this
  function family as a matter of ABI, independent of effort invested --
  reported as a negative result with full reasoning rather than forcing
  a plausible-looking but fake C port, per the project's non-negotiable
  "never commit a non-matching match" discipline (which extends here to
  "never even attempt one once infeasibility is established").

## Round 6 -- `func_08010F54` triaged as register-pressure class (not
attempted); its 4 tiny GameState flag-setter callees matched instead

Target for this round, per brief: `GameState`/`Farm` functions documented
in the franglais patch repo but not yet in a `.cc`. The patch repo's
commit `9636a71` (`src/code_0800E2E4.cc` here, already on this branch)
names `func_08010F54` (`asm/game_state.s`) as the day-rollover, with
`GameState+0x08/0x0C/0x10` confirmed in an emulator (weather/forecast/
date block).

### `func_08010F54` itself: triaged out, not attempted

Read the full disassembly (~570 lines, `0x08010F54`-`0x080113AA` before
tail cleanup) before touching anything. This is squarely the
"register-pressure" difficulty class documented in `DECOMP_RULES.md`
(3 failures out of 3 attempts on that class so far) -- worse, actually:
it uses `r4`-`r7` + `r8`/`sb`/`sl`/`ip` simultaneously through the ENTIRE
body (not just prologue/epilogue), contains a 14-way jump table
(building-upgrade dispatch), a second 2-level indirect jump table
lookup, five near-identical `Bachelorette` rival-event checks, a
per-season weighted-random weather roll, and multiple calls into
already-matched code (`DayUpdate__4FarmiRC8GameDate`,
`DayUpdate__3Dog`, `method_0800AB08__9FieldPlot6Season`,
`FarmHouse`/`Coop`/`Barn` upgrade methods). Per `DECOMP_RULES.md`'s own
explicit warning ("ne pas re-tenter cette classe sans budget de
plusieurs rounds dédiés"), this was **not attempted** this round --
would need a dedicated multi-round budget, not a single-target session.
Documented here as read/understood/triaged rather than silently
skipped, so the next round doesn't re-read it from scratch: the callee
list above is a fairly complete map of what it touches.

### Fallback per brief step 2: 4 tiny `GameState` flag-setter siblings, matched

While reading `func_08010F54`, found it calls three trivial one-basic-
block sibling functions from inside its upgrade jump table --
`func_08010F30`/`func_08010F3C`/`func_08010F48` (`this` = same `r6`
GameState pointer as the rollover itself), each just
`*(u8*)this |= <bit>` for bits `0x02`/`0x04`/`0x08` of byte 0. A fourth
sibling, `func_08010F24` (bit `0x01`, same byte), sits immediately
before them in `asm/game_state.s` and is called from the script-VM side
(`asm/code_0803EE94.s`, twice) on a GameState pointer read from a
context field at offset `~0x350/0x354` -- independent confirmation that
these 4 functions all operate on the same object type as
`func_08010F54`'s `this`, not a coincidence of a shared byte-flag
idiom. (Bits `0x01` and `0x10` of that same byte 0 are explicitly
cleared at the very top of `func_08010F54`, consistent with these being
once-per-day flags the rollover resets.)

All 4 are single basic block, 2-3 instructions of real work, no branches,
no `bl`, `r0`/`r1`/`r2` only -- the "peu de valeurs vivantes" class that
`DECOMP_RULES.md` notes matches on the first or second try. Matched
first try. No known C++ class exists yet for this GameState object (no
vtable, no confirmed field layout beyond the handful of offsets in
`src/code_0800E2E4.cc`), so per the "C libre vs méthode C++" rule these
stayed as plain C functions taking a raw `void *`, same style as the
existing `Unk_0800E324`-adjacent code in that same file.

### Mechanics

Split `asm/game_state.s` at the `func_08010F24`/`func_08010F54` boundary
(monolithic-file method from `DECOMP_RULES.md`): the head (up to but not
including `func_08010F24`, 1483 lines) stays `asm/game_state.s`; the tail
(from `func_08010F54` onward, the untouched register-pressure function
and everything after it in the file) became a new `asm/code_08010F54.s`
with the standard header prepended. The 48 bytes in between (4 functions
x 12 bytes, `0x08010F24`-`0x08010F54`) became `src/game_state.cc`.
`fomt.lds`: replaced the single `asm/game_state.o(.text);` entry with
`asm/game_state.o(.text); src/game_state.o(.text);
asm/code_08010F54.o(.text);` in that order, same pattern as prior
rounds. Verified `.text` size of `build/src/game_state.o` is exactly
`0x30` (48) bytes before comparing content, then `rm -rf build fomt.gba
fomt.elf fomt.map && make compare` -- bit-exact (`sha1sum -c fomt.sha1`
succeeded) on the first attempt.

### Repo state at end of round 6

- One new commit expected (this file + the 4-function match, all staged
  together): `asm/game_state.s` (truncated), `asm/code_08010F54.s`
  (new), `src/game_state.cc` (new), `fomt.lds` (3-line split). `make
  compare` verified bit-exact via full clean rebuild before committing.
- No parallel-session activity observed (`git log`/`git status` matched
  what this round itself produced, HEAD was `43c9148` at round start).
- `origin` untouched, nothing pushed, no PR.
- Next steps for whoever picks up `func_08010F54` itself: budget a
  dedicated multi-round pass, not a fallback slot in a mixed-target
  round. Two smaller adjacent leads if a lighter task is wanted instead:
  `func_08010F04` (getter, bit `0x10` of the same GameState byte 0 --
  same trivial shape as the 4 matched this round, just not contiguous
  in the `.s` file so needs its own small split) and `func_08010F1C`
  (getter on byte 3, needs the exact bitfield width worked out before
  writing the C, unlike the plain single-bit getters/setters).

## Round 6

### Goal

Assigned target from the franglais-patch repo's `docs/ENGINE.md` boot-FSM
research: `franglais_boot_fsm_run` (`0x08093364`) and the scene/screen
table it dispatches through. Per the round's brief, `func_080007EC`
(the shared base `AScene` destructor) was already confirmed matched
(rounds 4-5, `func_08004C54`/`func_080E09B0` both depend on it), so this
round skipped straight to (a) sizing up `franglais_boot_fsm_run` itself
and (b) other constructors/destructors in the same scene-table family.

### `franglais_boot_fsm_run` (`func_08093364`) sized up, NOT attempted

Located at `asm/code_0805E760.s:104359` (the same giant blob that holds
the confirmed "register pressure" failures `func_0805E790`/
`func_0804E4AC` from rounds 1/3). Body runs 0x08093364-0x08093A58
(0x6F4 = 1780 bytes, ~800 lines of `.s`), and the prologue alone
(`push {r4,r5,r6,r7,lr}; mov r7,sl; mov r6,sb`) shows the exact register-
pressure signature `DECOMP_RULES.md` already flags as "do not re-attempt
without a big dedicated budget" -- two 9-entry jump tables, calls into
~10 different not-yet-decompiled subsystems per `docs/ENGINE.md`. **Not
attempted this round**, consistent with the existing difficulty-class
rule; would need its own multi-round budget same as `DrawGlyphAt`.

### `func_08010158` matched (commit `a85f4b1`) -- a NEW, easier variant
of the scene-destructor family

Round 4/5 had classified the 47 `bl func_080007EC` call sites into two
buckets: the trivial "no vtable, pure tail-forward" case
(`func_080E09B0`, matched) and a "~23 richer, harder" bucket assumed to
share ONE shape (`ldr r1,[r4,#4]; ldr r0,[r1,#4]; ldr r2,[r0,#8]; bl
_call_via_r2` -- a VIRTUAL child-teardown call, blocked on
characterizing the child object's layout). Looking for other
scene-table constructors/destructors (the "table d'écrans/scènes" this
round's brief pointed at) turned up `func_08010158` in `asm/game_scene.s`,
which shares the vtable (`vtable_unk_080E5BF8`) and general shape but is
a **third, simpler variant** not previously catalogued: both of its
sub-object teardowns are **direct (non-virtual) calls**, not virtual
dispatch:

```
push {r4, r5, lr}
adds r4, r0, #0            @ r4 = self
adds r5, r1, #0            @ r5 = in_chrg
ldr  r0, =vtable_unk_080E5BF8
str  r0, [r4]                @ self->vtable = &vt
ldr  r1, =gUnk_0300040C
movs r0, #0
str  r0, [r1]                @ gUnk_0300040C = 0
movs r1, #0xde
lsls r1, r1, #2
adds r0, r4, r1              @ r0 = self + 0x378
movs r1, #2
bl   func_080D7E64           @ tear down sub-object at self+0x378
adds r0, r4, #0
adds r0, #8                  @ r0 = self + 8  (embedded AScriptEngine)
movs r1, #2
bl   _._13AScriptEngine      @ DIRECT (non-virtual) dtor call
ldr  r0, [r4, #4]            @ r0 = *(self+4)  (child pointer, no deref of ITS vtable)
cmp  r0, #0
beq  skip
movs r1, #3
bl   func_080D4480           @ DIRECT (non-virtual) call on the child
skip:
adds r0, r4, #0
adds r1, r5, #0
bl   func_080007EC           @ base AScene::~AScene(self, in_chrg)
pop  {r4, r5}
pop  {r0}
bx   r0
```

Confirms this class (constructed by `func_080D3EF4`, `__builtin_new`
of `0x554` bytes, embeds a `ScriptEngine` at +8 via `__12ScriptEnginePv`
-- i.e. this is very likely the game-scene/"in-farm gameplay" screen
object, matching `asm/game_scene.s`'s file name) is unrelated in shape
to the "~23 richer, virtual child teardown" bucket -- **not every
"richer than `func_080E09B0`" call site shares the same shape**, same
lesson as the `DrawString`/`DrawGlyphAt` false-generalization from round
3-4 (same doc section, same file, different difficulty). Worth
re-scanning the remaining ~22-ish call sites for this SAME simpler
"direct calls, no virtual dispatch" shape before assuming they all need
the child-layout characterization work -- some may match on the first
try like this one did.

**One real near-miss found and fixed before landing**: `AScriptEngine`
already has a `virtual ~AScriptEngine()` (`src/script_engine.cc`).
Writing the natural-looking `((AScriptEngine*)(self+8))->~AScriptEngine()`
compiles to a VIRTUAL call (`ldr` the embedded object's own vtable
pointer at offset `+0x34C` within it, `ldr` slot 2, `bl _call_via_r2`)
-- correct C++ semantics for an explicit destructor call through a
polymorphic type, but NOT what the original binary does (the original
calls `_._13AScriptEngine` directly, no vtable indirection at all, since
statically-typed non-polymorphic teardown of a known-type member never
needs virtual dispatch). Fixed by qualifying the call with the class
name -- `->AScriptEngine::~AScriptEngine()` -- which forces agbcp/agbc++
to emit the static, non-virtual call. **New generalizable rule**: when
porting a class that owns (not just points to) a polymorphic member and
the original disassembly shows a DIRECT `bl` to that member's mangled
destructor symbol (not a virtual dispatch through its own vtable), the
C++ source must use the **qualified** explicit destructor call
(`obj.Base::~Base()`), never the plain `obj.~Base()` -- the plain form
is semantically valid C++ but compiles to different (virtual) codegen
whenever the member's static type has a virtual destructor. Added to
`DECOMP_RULES.md`.

Split mechanics: `func_08010158` was the last function in
`asm/game_scene.s` with a `thumb_func_start` label -- everything after
its own body + 2-word literal pool was **unlabeled raw `.byte` data**
(presumably a not-yet-disassembled continuation of the same
translation unit). Moved that unlabeled tail byte-for-byte into a new
`asm/code_080101A0.s` (named after its start address, though nothing
external references it by that name since it was never a symbol), with
the trimmed `asm/game_scene.s` keeping everything before the target
function untouched. Two new `fomt.lds` entries inserted at the old
`asm/game_scene.o(.text)` line's position:
`asm/game_scene.o(.text); src/code_08010158.o(.text);
asm/code_080101A0.o(.text);`. Verified bit-exact via **two** independent
full clean rebuilds (`rm -rf build fomt.gba fomt.elf fomt.map && make
compare`), once right after landing and once again before this write-up.

**Toolchain hazard found and worked around**: the quicktest harness's
`/tmp/qt.s`/`/tmp/qt.o` paths from `DECOMP_RULES.md` are NOT
session-isolated -- a first quicktest run in this session picked up a
**stale `/tmp/qt.s` from an apparently unrelated concurrent process**
(the `objdump` output showed 5 completely unrelated functions,
`func_08007128` etc., nothing matching the input `.cc`). Re-ran the
exact same pipeline with unique paths under this session's own scratch
directory instead of bare `/tmp/qt.s`/`/tmp/qt.o` and got the expected,
correct disassembly. **Rule for future rounds: never use the bare
`/tmp/qt.s`/`/tmp/qt.o` paths from the quicktest recipe verbatim --
always redirect to a session-unique path first**, since `/tmp` is
shared across whatever else is running on the machine. Added to
`DECOMP_RULES.md`.

Also encountered again: `ls` (plain, unwrapped) produced silently empty
output in this environment for directories that verifiably have content
(confirmed via `python3 -c "os.listdir(...)"`) -- some shell-level
interception (unlikely to be this repo's concern, environment-specific)
swallows `ls`'s stdout without an error code. Not investigated further
(out of scope), just noted: **if `ls` ever appears to report an empty
directory unexpectedly in this environment, verify with `python3 -c
"import os; print(os.listdir(...))"` before trusting it.**

### Repo state at end of round 6

- One new commit: `a85f4b1` (`func_08010158` match). `make compare`
  verified bit-exact via two independent full clean rebuilds.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.
- Stray untracked file named `" "` (literal single space, 6480 bytes)
  found in the worktree root at the start of this round, not created by
  this round's work -- left untouched, not staged, not deleted (unclear
  provenance, not this round's to manage per the "don't overwrite
  activity you didn't produce" rule).
- Priority list for whoever picks this up next: (1) `franglais_boot_fsm_run`
  (`func_08093364`) itself -- needs a dedicated multi-round register-
  pressure budget, not a quick attempt; (2) re-scan the ~22 remaining
  "richer" `func_080007EC` call sites for the SAME simple
  "direct-calls-only" shape `func_08010158` turned out to have, before
  assuming they all need the harder child-layout characterization work;
  (3) everything still open from rounds 1-5's priority lists (unchanged).

## Round 6 (worktree w3, parallel-3) -- first half of the "richer" AScene-derived destructor family matched

### Mission

Continue directly from round 5's priority list, item 2: characterize
the child-object field layout for the ~23 (turned out to be 37, see
below) "richer" derived-scene destructors sharing `func_08004C54`'s
shape but with an extra conditional teardown of a child object at
`self+4`. Assigned the FIRST HALF (by ascending address) of the family,
in an isolated worktree (`w3`); a second worktree (`w7`) works the
second half concurrently -- no collision possible, separate git
worktrees.

### Full site scan

Grepped all 47 `bl func_080007EC` call sites across `asm/*.s`, matched
each to its enclosing `thumb_func_start`, sorted by address, then
classified each body (from function start to the call site) for the
"rich" signature (`_call_via_r2` + `ldr r0, [r1, #4]` pattern). Result:
37 of 47 are "rich"; the other 10 are the already-known "empty" variant
(`func_08004C54`/`func_080E09B0`'s shape) or something else not
investigated further this round. Full list recorded in
`DECOMP_RULES.md`'s new "famille riche" section.

### Layout characterization (the actual blocker from round 5)

Round 5 flagged: `ldr r0, [r1, #4]` reads the presumed child object's
vtable pointer from offset **+4**, not the standard +0 -- unexplained.
Resolved by reading the MATCHING CONSTRUCTOR for one instance,
`func_080041DC` (`asm/new_game.s`, not ported, still asm): it
`__builtin_new`s a 0x1A0-byte block, calls `func_08008574` on the fresh
object FIRST, THEN stamps `vtable_unk_080E5A5C` at `[r7, #4]` (r7 =
self). This is exactly consistent with a 4-byte non-polymorphic
leading base subobject (built by `func_08008574`, role not
characterized) followed by a polymorphic part whose vtable naturally
lands at offset +4 -- the classic Itanium-ABI shape for multiple
inheritance where the polymorphic base isn't listed first.

**Decision: do NOT invent a C++ class for this leading 4-byte base or
the child's full type.** Per `DECOMP_RULES.md`'s C-vs-C++ rule (case
where the binary's real shape is under-characterized), all four
functions this round are ported as plain pointer arithmetic:

```c
void *child = *(void **)((char *)self + 4);
if (child != nullptr) {
    void **vt = *(void ***)((char *)child + 4);
    void (*fn)(void *, int) = (void (*)(void *, int))vt[2];
    fn(child, 3);
}
```

Verified this shape compiles to IDENTICAL bytes to the original via the
fast quicktest harness (compiler+assembler, no link) against
`func_08004BDC` BEFORE touching any `asm/*.s` file -- de-risked the
whole family before spending time on the file-split mechanics.

### Four matches this round (commit `ef58287`)

`func_0800371C` (`asm/intro_scene.s`), `func_08004BDC`
(`asm/new_game.s`), `func_080059D0` and `func_080070A4` (both in
`asm/code_08004C68.s`) -- the four lowest-address "rich" sites. All
four share the EXACT same body, differing only in their own
`vtable_unk_ADDR` constant.

**Split mechanics, one real mistake caught before commit**: splitting
`asm/code_08004C68.s` required THREE pieces (it contains two of the
four target functions, `080059D0` and `080070A4`, with ~2900 lines of
untouched functions between them). First attempt at the third split
boundary (after `080070A4`) accidentally set the new tail asm file's
start to the NEXT-NEXT function (`func_08007110`) instead of the
function immediately following the ported one (`func_080070D4`) --
silently dropped `func_080070D4`'s body entirely (it fell in neither
the `.cc` file nor either of the two new `.s` chunks). Caught
immediately at link time (`undefined reference to func_080070D4`, not
a silent corruption) -- fixed by recomputing the exact
`thumb_func_start` boundaries from a clean `git show HEAD:<file>` copy
rather than trusting line numbers computed before the file existed in
its edited form. **General lesson for the next round attacking more of
this family**: when a single `asm/*.s` file needs multiple splits (more
than one target function in the same file), compute ALL boundaries
from the ORIGINAL (unmodified) file content in one pass, and double
check the boundary between two `src/code_ADDR.cc` extractions isn't
skipping an un-ported function sitting between them.

Verified bit-exact via two independent full clean rebuilds
(`rm -rf build fomt.gba fomt.elf fomt.map && make compare`,
`sha1sum -c fomt.sha1` -> `Réussi` both times) before committing.

### Repo state at end of round 6

- One new commit: `ef58287`. Working tree clean afterward
  (`git status --short` empty).
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No sub-agents launched, all work done directly in
  this worktree as instructed.
- `DECOMP_RULES.md` updated with the full 37-site list (sorted by
  address) and the resolved layout/porting recipe for the whole family.
- **~33 sites of the same family remain** (see `DECOMP_RULES.md` for
  the full address list) -- second half assigned to worktree `w7`
  concurrently; whoever picks up the rest of THIS half (or verifies w7
  didn't already cover it) can reuse the exact same body template,
  changing only the `vtable_unk_ADDR` constant per site, and the same
  quicktest-first-then-split workflow documented above.

## Round 6 -- `func_0800736C` (OBJ-palette allocator) retried, real progress,
still not bit-exact -- documented honestly, nothing committed

### Scope

Dedicated retry of `func_0800736C` (round 2's failed OBJ-palette
allocator, `franglais_objpal_alloc` in the patch repo's `docs/HUD.md`,
directly relevant to the open `docs/CHARACTER_SELECT.md`
female-character-invisibility investigation in the parallel
`character-select` worktree). Round 2 only tried 2 variants; this round
was asked for genuine shape-hunting with more variants, using the fast
`arm-none-eabi-cpp | agbcp | as` harness (no full link) to iterate
quickly. Worked alone in worktree `w5` (`parallel-5`), no other agent
touched this file this round (`git status` clean throughout).

### Disassembly re-read in full, statement-by-statement

Re-derived the exact semantics of all 52 original instructions
(0x0800736C-0x080073E0, 0x74 = 116 bytes, `push {r4,r5,lr}` /
`pop {r4,r5}; pop {r1}; bx r1`) against the already-matched
`Unk_hardware_03000404` struct/helpers in `src/hardware.cc`
(`AllocEntry`, `IndexOf`, `inl_func_1`, `GetEntry`). Confirmed role:
pop the free list (`h->unk_00`), set `entry->params.unk_00 = 1`
(refcount), stamp a fresh generation counter (`h->unk_4A`, wrapping
`0xFFFF -> 1`, never 0) into both the entry and the allocator struct,
return the packed handle `(generation << 4) | (bank_index & 0xF)`, or
`0` on an empty free list.

Two structural details not written up in round 2's notes, now confirmed
by direct disassembly re-reading:

1. **A single shared accumulator/exit pattern.** The original does NOT
   have per-path `return` statements compiling to independent `movs r0,
   #0` / final-expression-into-r0 sequences. Every path (`ent == nullptr`
   at either check, or the full success path) assigns into the SAME
   register (`r2` in the original) and falls through to one shared tail:
   `adds r0, r2, #0; pop {r4, r5}; pop {r1}; bx r1`. This is the classic
   `goto done;`-into-a-single-`return result;` shape already used
   elsewhere in this file (`func_080071BC`'s `goto alloc_loop`) -- NOT
   the plain `if (...) return 0;` written at each check site, which
   round 2's and this round's early literal attempts both used and which
   produces a *different*, per-site `movs r0,#0` epilogue shape.
2. **The final packed-value computation re-reads `ent->params.unk_02`
   from memory instead of reusing the register that already holds the
   freshly-computed generation value.** `strh r0, [r5, #2]` (write) is
   immediately followed, a few instructions later, by `ldrh r0, [r5, #2]`
   (read) of the exact same address, even though the register `r0`
   written was never clobbered in between and could have been reused for
   free. This is not optimizable-away sloppiness -- it is direct evidence
   that the original C source's final `return` expression textually
   references the **field** (`ent->params.unk_02`) again, not the local
   variable that held the value right before the store.

### Concrete new finding: agbcp has a real (if narrow) redundant-load-elimination pass

Confirmed empirically (not documented in `DECOMP_RULES.md` before this
round): `agbcp -O2` DOES eliminate a trivially-redundant `& 0xFFFF` mask
immediately following a `ldrh` of the SAME expression in the SAME
statement (i.e. `field & 0xFFFF` where `field` is a `u16` struct member,
written as a single expression) -- the mask instruction is dropped
entirely, no literal-pool load, nothing. This is a real, useful,
generalizable finding: agbcp is not *uniformly* non-optimizing the way
`DECOMP_RULES.md`'s anti-pattern #1 implies; it has at least this one
narrow peephole. Splitting the field read into its own statement
(`unsigned int packed = ent->params.unk_02; return ((packed & 0xFFFF)
<< 4) | ...;`) defeats this specific peephole and reproduces the
original's `ldrh` + `ands` pair exactly -- confirmed bit-for-bit
identical encoding to the original at that point. **New rule for
`DECOMP_RULES.md`**: when a mask `& 0xFFFF` immediately following a same
type-width memory load inside ONE expression keeps getting silently
eaten by agbcp, split the load into its own statement first; this is a
different, narrower phenomenon than anti-pattern #1's `& 0xFFFF` vs
double-shift byte-count issue, and is now confirmed as a second, real
agbcp peephole worth knowing about.

### Best variant reached (v4/v5 below) -- NOT committed, does not match

```c
EC u32 func_0800736C(void)
{
    Unk_hardware_03000404 *h = gUnk_03000404;
    Unk_hardware_ent_080D6D98 *ent = h->unk_00;
    unsigned int result;

    if (ent == nullptr)
    {
        result = 0;
        goto done;
    }

    {
        unsigned int idx = h->IndexOf(ent);

        h->unk_00 = ent->next_free;
        /* the redundant second `if (ent == nullptr)` check from the
           original does NOT survive here -- see "what did not converge"
           below */

        h->inl_func_1(idx);

        h->unk_48++;
        ent->params.unk_00 = 1;

        unsigned int gen = h->unk_4A + 1;

        if (gen > 0xFFFF)
            gen = 1;

        ent->params.unk_02 = gen;
        h->unk_4A = gen;

        unsigned int packed = ent->params.unk_02;

        result = ((packed & 0xFFFF) << 4) | (idx & 0xF);
    }

done:
    return result;
}
```

(Actual tested ordering had `h->unk_00 = ent->next_free;` right after the
first null check, then `idx` computed after, matching the original's
literal instruction order -- see the quicktest scratch files this round
used for exact wording, not preserved in the repo since nothing
committed. Also tried explicitly routing the alloc through
`h->AllocEntry(ent)` with the result bound to a second, textually
distinct local (`ent2`) per round 2's own suggested-but-untried idea --
**identical compiled output**, confirming `AllocEntry` always gets fully
inlined by agbcp here and contributes nothing new.)

**Total: 104 bytes compiled vs 116 bytes (0x74) original -- 12 bytes
short**, down from round 2's -8 and -16 byte misses, and structurally
much closer:

- Single shared accumulator register (mine: `r1`; original: `r2` -- pure
  numbering difference, not a shape difference) feeding one shared
  epilogue `adds r0, rX, #0; pop {...}; pop {r1}; bx r1` -- **this part
  now matches exactly in shape**, was completely different in round 2's
  attempts.
- The mask-preserving `ldrh` + `ands` reload of `ent->params.unk_02` --
  **now matches exactly**, confirmed via the redundant-load-elimination
  finding above.
- Register footprint: mine is `push {r4, lr}` (2 registers); original is
  `push {r4, r5, lr}` (3 registers) -- **still wrong**. `push`/`pop` cost
  the same 2 bytes regardless of how many registers are listed, so this
  alone isn't the source of the 12-byte gap, but it's the visible symptom
  of the real gap: the original keeps the popped entry pointer alive in
  TWO different registers at different points in the function (`r3`
  early, `r5` late, despite `r3` never being technically clobbered in
  between) -- a genuine weak-allocator quirk (per-basic-block, not
  whole-function, register binding) that none of the 5 variants tried
  this round reproduced. Every variant kept the entry pointer in a single
  register (`r3`) for the whole function, which is provably sufficient
  (never clobbered) but not what the original compiled to.

### What did NOT converge: the redundant second null check

Round 2 already found that `agbcp` collapses the original's two
`cmp r3, #0; beq ...` checks (same register, no intervening write to
that register) into one. This round confirms that finding generalizes
across every phrasing tried: plain `if`, `goto`-style early exit, and
routing the pop through the already-matched `AllocEntry` helper with the
result bound to a fresh, textually distinct variable -- **all five
produce the exact same single-check code**, because `agbcp`'s
CSE/dead-branch-elimination appears to operate on register identity
(pseudo-value, pre-allocation) rather than source-variable identity, and
`AllocEntry` gets fully inlined regardless of how it's called, so no
"function call boundary" is ever actually present at the IR level to
block the fold. **This is a real, load-bearing negative result**: the
"read the field into a second, distinct local for the second check" idea
explicitly flagged as untried at the end of round 2 has now been tried
(as variant 5, via `AllocEntry`) and does NOT work -- update
`DECOMP_RULES.md`'s register-pressure section to close this off as a
known dead end rather than leaving it dangling as a hopeful lead.

### Honest assessment

This round made real, measurable progress (structural shape mostly
right, byte gap roughly halved, two new generalizable agbcp behaviors
found) but did **not** reach a bit-exact match. The remaining gap is
narrow but specific: reproducing (a) a genuinely redundant branch that
survives agbcp's own dead-code elimination, and (b) a register footprint
where the SAME pointer variable is bound to two different physical
registers at two different points despite never being clobbered. Neither
is fixable by further guessing at *statement order* (round 4/5's
generally-reliable technique) -- both look like they need either the
TRUE original source shape (which we don't have and can't derive further
from this call site alone), or a deeper understanding of agbcp's
register-allocation pass internals than is practical to reverse-engineer
black-box, one quicktest iteration at a time. Consistent with
`DECOMP_RULES.md`'s existing "register pressure" classification --
**now 4 failed attempts total across the project** on this specific
difficulty class (`func_0805E790` round 1, `func_0800736C` round 2 and
this round, `func_0804E4AC` round 3). Not recommending a 3rd attempt at
`func_0800736C` specifically without either (a) a way to inspect a
second independent call site of the same free-list-pop idiom elsewhere
in the ROM (if one exists) to cross-check the register-footprint
hypothesis, or (b) substantially more budget than a single round.

**Nothing committed.** `src/hardware.cc` and `asm/hardware.s` are
byte-for-byte unchanged from before this round; all experimentation was
done in scratch files outside the repo
(`/tmp/claude-1000/.../scratchpad/test_v{1..5}.cc`, not part of this
repo, gitignored working directory anyway). `git status --short` clean
throughout, `make compare` reconfirmed bit-exact via a full clean rebuild
(`rm -rf build fomt.gba fomt.elf fomt.map && make compare`) both before
starting and after finishing this round's experimentation.

### Repo state at end of round 6

- Working tree clean, no changes. `make compare` passes bit-exact
  (verified via full clean rebuild at the end of this round).
- No new commits.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.
- Relevant to the parallel `character-select` investigation: the
  allocator's *mechanism* is now fully understood and documented above
  (free-list pop, refcount=1, generation stamp wrapping past 0xFFFF to 1
  never 0, packed handle `(generation << 4) | (index & 0xF)`) even though
  the C port itself isn't bit-exact yet -- this semantic understanding is
  already reflected in the matched `func_080071BC` (`FreeEntry`/`Alloc`
  cycle) and doesn't depend on `func_0800736C` itself being ported to be
  usable by that investigation.

## Round 6

### Goal

External task: attack `func_08004C68` (the New Game naming sequence),
per `docs/ENGINE.md` round 27 in the franglais-patch repo, which
independently found this function, decompiled it via Ghidra, confirmed
it dynamically (PC trace on the standard boot recipe), and identified
it as the New Game player/farm/dog naming loop with an unidentified
1-byte selector between the first two name captures. Mission: locate
it in this repo's `asm/*.s`, port it to C/C++ matching real binary
structure, verify `make compare` bit-exact, commit only if matching,
and (budget permitting) resolve the selector byte's role.

### Located and re-decompiled independently

`func_08004C68` lives in `asm/code_08004C68.s:4-303` (0x08004C68-
0x08004EFC, ~150 instructions, the largest single function attempted
in this repo's own rounds so far -- for scale, ~15x the size of
`func_08004C54`). It sits in the SAME split file that round 4 already
carved out of the old monolithic `asm/new_game.s` (that split was done
purely to isolate `func_08004C54`, its neighbor at the time; this round
found the file's *next* function, `func_08004C68`, was never itself
addressed).

Independently confirmed the patch-repo's structural read (three
bounded 12-char text captures via a widget triplet
`func_08007078`/`func_080070D4`/`func_08007110`/`func_080070A4`,
truncation clamp `cmp r4,#0xc; bls ...; movs r4,#0xc` inlined three
times rather than a shared helper, `do { ... } while (!confirmed)`
loop, terminal `0x38`-byte heap allocation via `__builtin_new` with two
consecutive vtable-pointer stores at offset 0 -- `__vt_13AUnk_0800080C`
then `vtable_unk_080E5A78`, the classic base-then-derived C++ ctor
stamp order already established for this repo's `AUnk_0800080C`/`AScene`
family, see `include/scene.hh`) and went further on the ABI/signature
side, which the patch repo's Ghidra pseudocode (necessarily) left as
raw `undefined4`/register-level detail:

**`func_08004C68` is `AUnk_0800080C`-hierarchy's virtual `Run()`
override, not a free-standing "builder" function.** Chain of evidence:

1. `func_08004C54` (this repo's own round-4/5 finding, `AScene`-derived
   destructor) writes `*self = vtable_unk_080E5A88` where
   `vtable_unk_080E5A88 = 0x080E5A90 - 8` -- i.e. the record at
   `0x080E5A90` (this scene-table record's #12, per the patch repo's
   round-27 byte-literal scan of `0x08004C69` in ROM) is *itself* used
   as the object's raw 2-entry vtable, offset by the usual 8-byte
   CFront/ARM vtable header. That places `func_08004C54` at vtable
   slot 0 (dtor -- confirmed, it forwards to `func_080007EC` ==
   `AScene::~AScene()`) and **`func_08004C68` at vtable slot 1**, the
   exact slot `AScene::Run()` occupies in this repo's
   `include/scene.hh` (`virtual SmartPtr<AUnk_0800080C> Run() = 0;`).
2. `func_08004C68`'s prologue only ever touches `r0` (saved to
   `[sp+0x4c]` and never anything else at entry) -- no `r1` read at
   all. Its epilogue does `ldr r0,[sp+0x4c]; str r6,[r0]` (the freshly
   built `0x38`-byte object written through that saved `r0`) then
   returns with that same `r0`. This is exactly the ARM/CFront hidden-
   return-pointer convention: `r0` in, `r0` out, object constructed
   in place at `*r0` -- **not** a `self`/`this` parameter (`AScene`'s
   `Run()` takes no explicit args, and its body never touches its own
   `this`, consistent with the vtable dispatch call site never passing
   a second register either).
3. The return type is forced to hidden-pointer convention (rather than
   the plain-`r0` convention a 4-byte POD would get) because
   `SmartPtr<T>` (`include/smart_ptr.hh`) has a user-defined destructor
   (`~SmartPtr(){ delete inner; }`) -- non-trivial by the Itanium/CFront
   ABI rule regardless of its 4-byte size. `AScene::Run()`'s declared
   return type, `SmartPtr<AUnk_0800080C>`, matches exactly.

**Conclusion: `func_08004C68`'s real signature is
`SmartPtr<AUnk_0800080C> Run()`** (an override on the same anonymous
scene-record-#12 class `func_08004C54` already partially exposed), not
a bare C function -- this matters for the C-vs-C++ shape rule in
`DECOMP_RULES.md` (round 5): this one genuinely needs the C++ method
form to reproduce the hidden-return-pointer ABI, unlike `func_08004C54`
which stayed a free function.

### Buffer/selector layout in the terminal `0x38`-byte object, CONFIRMED

Static byte-level trace of the tail (`.L08004E22` onward) against three
16-byte stack scratch buffers filled by the three capture loops:

| offset | field | source buffer | source prompt (ROM ASCII, confirmed round 27) |
|---|---|---|---|
| `+0x00` | vtable ptr | -- | `__vt_13AUnk_0800080C` then `vtable_unk_080E5A78` (base-then-derived stamp) |
| `+0x04` | farm name, NUL-terminated, <=12 chars | 2nd capture buffer (`sb`) | `gUnk_080E893C` = `"Farm's"` |
| `+0x14` | player name, NUL-terminated, <=12 chars | 1st capture buffer (`sl`) | `gUnk_080E8934` = `"Your "` |
| `+0x24` | **selector, 1 byte** | register `r8` at loop exit | (not a text capture -- see below) |
| `+0x28` | dog name, NUL-terminated, <=12 chars | 3rd capture buffer (stack) | `gUnk_080E8944` = `"Dog's "` |

Layout confirmed directly from the `adds r5,r6,#0x??`/`memcpy`/`strb`
sequence at `asm/code_08004C68.s:231-265`, not inferred.

### Selector byte: origin traced, semantic role NOT fully resolved

Per the mission's step 5. What's newly established this round, beyond
the patch repo's "candidate for gender, unconfirmed" (`docs/ENGINE.md`
round 27):

- **The selector is NOT read from `func_08004C68`'s own input** --
  `func_08004C68` takes no explicit parameter (see ABI finding above),
  so it cannot be receiving a caller-supplied gender/config byte. Its
  value is entirely LOCAL, computed in two places:
  1. **At loop entry** (`asm/code_08004C68.s:24-30`), from register
     `r8`'s value *before this function ever writes to it* -- i.e.
     whatever `r8` held on entry from the caller's register file
     (`r8`/`sb`/`sl` are callee-saved and only saved/restored here, not
     parameters). Masked: `r8 &= ~3; r8 &= ~0x7C;` (two Thumb-forced AND
     steps, net effect `r8 &= ~0x7F` -- clears the low 7 bits, keeps
     bit 7 and above). **This reads as leftover/garbage-in caller
     register content being defensively masked down to (effectively)
     just its top bit**, not a meaningful "read a real parameter"
     pattern -- consistent with `Run()` taking no arguments.
  2. **Reassigned every loop iteration** (`asm/code_08004C68.s:94-96`):
     `r8 = func_0806EA6C(widget)` -- a return value from one of the 4
     unidentified `func_0806E9D8`/`func_0806EA30`/`func_0806EA6C`/
     `func_0806EA00` family calls sandwiched between the player-name and
     farm-name captures, called with the OLD `r8` as an argument to
     `func_0806E9D8` first (`asm/code_08004C68.s:79-81`), then re-read
     back out via `func_0806EA6C` after the widget's virtual-dispatch
     step. **This is a genuine stateful read-modify-write cycle on an
     interactive widget between the two capture loops -- structurally
     exactly the shape of a selection UI (e.g. a left/right toggle
     sprite)**, which is the strongest evidence yet for the "gender
     selector" hypothesis, but the actual VALUE SPACE (is it 0/1?
     0/0x80? a small enum?) is still unknown since none of the 4
     `func_0806Exxx` functions have been decompiled (their own bodies
     were out of scope for this session's budget -- they are a
     self-contained widget family, distinct from the text-capture
     widget family `func_08007xxx`, and from the confirm-screen family
     `func_0800598C`/`func_08005Axx`).
- **`func_0806E9D8`/`func_0806EA30`/`func_0806EA6C`/`func_0806EA00`
  disassembled at a glance (not fully decompiled)**: `func_0806E9D8`
  takes `(widget, value)` and is a short function; `func_0806EA6C`
  takes `(widget)` and returns a value truncated/masked in some way at
  its call site usage. Sizes and shapes look tractable (each is
  visibly short in `objdump`, well under the "register pressure" class)
  -- **good candidate for a focused follow-up session dedicated just to
  this family**, which would likely settle the gender-selector question
  with actual value semantics rather than structural inference.

**Honest limit of this round's selector finding**: structural evidence
(position between first two name captures, read-modify-write against
an interactive widget, single byte, masked to keep only high bits at
entry) is consistent with, and strengthens, the "gender selector"
hypothesis from the patch repo -- but this round did **not** determine
the actual bit meaning (which value = which gender, or whether it's a
gender selector at all vs. some other small-enum UI choice). Concrete
next step for `docs/CHARACTER_SELECT.md`: decompile the 4
`func_0806Exxx` functions (small, tractable) and/or dynamically trace
the selector byte's value across a save with a manually-chosen
character gender.

### Full C/C++ port: ATTEMPTED, NOT converged, NOT committed

Given the size (~150 instructions, by far the largest single function
tackled directly in this repo's own rounds) and the number of entirely
undecompiled callees this function depends on (`func_08007078`,
`func_080070D4`, `func_08007110`, `func_080070A4`, all 4
`func_0806Exxx`, `func_0800598C`, `func_08005A00`, `func_08005A3C`,
`func_080059D0`, `func_08008980`, `func_08008DB8`, `func_08008A68` --
12 callees, none with an established C signature anywhere in this
repo), a full bit-exact port was judged, honestly, out of reach of this
round's budget. A draft was written and test-compiled via the
quicktest harness (`DECOMP_RULES.md`'s fast-iteration recipe) as a
sanity check of the ABI/signature analysis above:

- First quicktest pass caught a real, generalizable issue worth
  recording: **naively writing `SmartPtr<AUnk_0800080C> ret(ptr); return
  ret;` does NOT compile** -- `SmartPtr`'s copy constructor
  (`include/smart_ptr.hh:47`) is `private` and a no-op (`SmartPtr(SmartPtr
  &){}`, doesn't even copy `inner`), so naming a local `SmartPtr` and
  returning it invokes that broken private copy ctor. **The correct
  idiom for this codebase's `SmartPtr<T>` is `return
  SmartPtr<T>(ptr);`** -- construct the temporary directly via the
  explicit `SmartPtr(T*)` ctor so the compiler builds it straight into
  the hidden return slot, no copy ever attempted. Same applies to any
  future `Run()`-shaped override in this family. Worth adding to
  `DECOMP_RULES.md` if a second function hits the same trap.
- Second, unresolved issue: reproducing the base-then-derived
  double-vtable-stamp at the new object's offset 0
  (`__vt_13AUnk_0800080C` immediately overwritten by
  `vtable_unk_080E5A78`) bit-exactly requires the terminal object to be
  a *real* C++ subclass of `AUnk_0800080C` overriding its pure-virtual
  `vfunc_0C()` (so the compiler emits the double-stamp as a genuine
  base-subobject-then-derived construction side effect, not as two
  raw pointer writes that `-O2` could dead-store-eliminate down to
  one) -- but `vfunc_0C()`'s real body is itself out of scope/unported,
  and the tail sequence around the widget's own `SmartPtr` member
  (`asm/code_08004C68.s:266-283`, a set-then-immediately-cleared field
  bracketing a virtual-dispatch call that traces out as *always*
  skipped, `cmp r1,#0; beq skip` with `r1` provably 0 from three lines
  above) was not fully re-derived to a clean C++ source shape within
  budget -- flagged as a genuine open question, not guessed past.
- **Not committed**: no `src/`/`asm/`/`fomt.lds` changes were made to
  the tracked worktree this round. `git status --short` confirmed clean
  before and after this round's exploration; a final `rm -rf build
  fomt.gba fomt.elf fomt.map && make compare` re-confirmed the baseline
  is still bit-exact, untouched.

### Repo state at end of round 6

- Zero new commits touching `src/`/`asm/`/`fomt.lds` (per the
  non-negotiable "never commit a non-matching build" rule -- this
  round's port did not converge, so nothing was staged). This
  session-notes update (and a `DECOMP_RULES.md` priority-list update)
  are the only tracked changes.
- `make compare` reconfirmed bit-exact (`sha1sum -c fomt.sha1` ->
  `Réussi`) on a full clean rebuild, both before touching anything and
  again at the end of the round.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No concurrent-session activity observed this round.
- **Priority list for whoever picks this up next**:
  1. Decompile the 4-function `func_0806E9D8`/`func_0806EA30`/
     `func_0806EA6C`/`func_0806EA00` family first, in isolation --
     small, tractable, and would resolve both the selector-byte
     semantics AND remove 4 of `func_08004C68`'s 12 unknown-signature
     callees before attempting the parent function again.
  2. Re-attempt `func_08004C68` itself only after (1) and ideally after
     at least the text-capture widget family (`func_08007078`/
     `func_080070D4`/`func_08007110`/`func_080070A4`) is also
     decompiled -- porting the parent around still-opaque callees is
     what stalled this round; each resolved callee narrows the
     remaining unknowns concretely instead of guessing at their
     signatures.
  3. Remember the `SmartPtr<T>` private-copy-ctor trap found this round
     (`return SmartPtr<T>(ptr);`, never a named local) for that attempt
     and any other `Run()`-shaped override.
  4. Everything still open from rounds 1-5's lists (23-member richer-
     destructor family, `franglais_transition_ctl_query` `0x08050DF0`,
     `Unpack` `0x080D102C`, script dispatch table `0x0803F900`,
     `DrawGlyphAt`/recolor, `docs/DIALOGUE.md`,
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

## Round 6 (this session, worktree `w7`/branch `parallel-7`) -- child-object
field layout for the "~23 richer destructors" family finally characterized
from raw disassembly, four matches landed, no guessing involved

### Scope and isolation

Assigned target: the second half (by address, i.e. the upper addresses) of
the `func_08004C54`-family "richer destructors" -- worktree `w3`, running
concurrently on the same overall family, was assigned the first half (lower
addresses) to avoid duplicate work. This worktree never touches `w3`'s
files (separate git worktree checkout), and `git log`/`git status` showed
no concurrent-session artifacts in `w7` itself at any point this round.

### Toolchain bring-up in this fresh worktree

`tools/agbcc/{bin,lib,include}` is gitignored (as documented in round 1's
notes), so a fresh worktree checkout starts with none of it built. Found a
complete, already-built copy sitting in a stale `mktemp -d` leftover at
`/tmp/tmp.Cv88fZh1RY` (a `notyourav/agbcc` `cp`-branch clone with `agbcc`,
`old_agbcc`, `agbcp`, `libgcc.a`, `libc.a`, and headers already built --
almost certainly a round-1-style `install_agbcp.sh` run from some other
worktree/session that didn't reach its `rm -fr $temp` cleanup step). Copied
those binaries/libs/headers straight into this worktree's
`tools/agbcc/{bin,lib,include}` (matching `install.sh`'s expected layout)
instead of re-running the slow from-scratch host-toolchain-workaround build
documented in round 1 -- verified working immediately via a full clean
`make compare` (bit-exact, ~4.8s) before touching any code. `baserom.gba`
symlinked from `harvest-moon-franglais/baserom.gba` as in round 1.

### The blocking question from round 4-5 resolved: child field layout,
read directly off disassembly, not guessed

Round 4's note said, explicitly: **"do not guess-port this family without
first characterizing the child-object field's real type/offset."** This
round did exactly that, empirically, via the fast quicktest harness
(`arm-none-eabi-cpp | agbcp -O2 ... | as`, ~1s/iteration, no full link) --
no Ghidra needed, the answer was fully recoverable from this repo's own
disassembly plus one extra fact already sitting in `asm/vtables.s`:

1. **Two distinct child-field shapes, confirmed on the first candidate
   (`func_0809A518`, which conveniently has BOTH in one function)**:
   - `self->unk_08`: a plain polymorphic pointer -- `ldr r0,[r1]` reads
     the child's vtable pointer from the child's own offset +0.
   - `self->unk_04`: a multiple-inheritance-shaped pointer -- `ldr
     r0,[r1,#4]` reads the child's vtable pointer from the child's offset
     +4, meaning the child object has one non-virtual 4-byte member
     (unidentified, kept as `unk_00`) ahead of its own vtable pointer.
     This is NOT a new/exotic pattern for this repo: `include/entity.hh`
     already has `AEntity` with its vtable placed at `+0x14`, after all
     its data members, for exactly this reason (a non-first polymorphic
     base in a multiple-inheritance layout). Modeled locally in each
     `.cc` as a small 2-struct MI pair (`ChildBase1` + `ChildOffset4 :
     ChildBase1`) rather than inventing a shared named class, since
     neither child's full identity/other members are characterized yet.
2. **The missing piece that made offset math actually line up**: this
   ABI (`-fvtable-thunks`) reserves **two always-null prefix words**
   before a class's first declared virtual method's slot. Confirmed by
   reading the raw bytes of `vtable_unk_080E5A88` (`func_08004C54`'s own
   vtable, already bit-exact-verified in round 4) directly out of
   `baserom.gba`: word0/word1 are `0`, word2 (offset +8) is
   `func_08004C54` itself (the dtor), word3 (offset +12) is
   `func_08004C68` (`Run()`). This is why a synthetic child class
   declaring **only one virtual method** (`Unregister(int category)`, no
   destructor) lands that single method at vtable offset **+8**, matching
   the disassembly's `ldr r2,[r0,#8]` in every site tried this round --
   first-attempt over-modeling (giving the child classes a virtual
   destructor + placeholder method, guessing 3 declared virtuals to reach
   offset+8 the "obvious" way) produced offset **+16** instead and was the
   one wrong guess corrected before any commit.
3. **The virtual call itself always passes the ORIGINAL (non-adjusted)
   child pointer as `this`, not the vtable-bearing sub-object pointer** --
   confirmed by disassembly (`adds r0, r1, #0` after `ldr r0,[r1,#4]` was
   only used to compute the vtable read, then overwritten), and
   reproduced for free simply by calling `self->unk_04->Unregister(3)` in
   real C++ and letting the compiler's own MI thunk logic generate the
   right `this`.

None of this required inventing semantics for the child objects themselves
(role, other fields) -- only the byte-exact shape needed to reproduce
`_call_via_r2` codegen, consistent with the repo's "don't guess a
prototype, read the compiled `.o`" discipline (round 4's rule, reused here
against live quicktest output instead of a compiled `.o`).

### Four matches, all bit-exact on the first quicktest iteration once the
layout above was nailed down

- **`func_0809A518`** (commit `95a55f3`) -- the two-child case (`unk_04`
  MI-shaped, `unk_08` plain), the one that revealed the layout above.
  Split out of `asm/code_0805E760.s` (tail renamed
  `asm/code_0809A558.s`).
- **`func_080C7ED0`** (commit `e902a6c`) -- single MI-shaped child at
  `unk_04` only, otherwise identical shape. Split out of
  `asm/code_809E804.s` (tail renamed `asm/code_080C7F00.s`).
- **`func_080BC8C0`** (commit `3f33b7d`) -- same single-child shape,
  different own vtable constant (`vtable_unk_080E8528`). Split out of the
  (already-once-split) `asm/code_809E804.s` (middle section renamed
  `asm/code_080BC8F0.s`, inserted ahead of the `func_080C7ED0` split in
  `fomt.lds`).
- **`func_080B3C0C`** (commit `e5a8f43`) -- same shape again
  (`vtable_unk_080E850C`). Split out of `asm/code_809E804.s` a third time
  (middle section renamed `asm/code_080B3C3C.s`, inserted ahead of the
  `func_080BC8C0` split).

All four verified via full clean rebuilds
(`rm -rf build fomt.gba fomt.elf fomt.map && make compare`, plus a direct
`sha1sum -c fomt.sha1` after each) before their respective commits --
`git status --short` reviewed in full (not just the files each attempt
intended to touch) before every `git add -A`/commit, per round 3's
pathspec-`-A` lesson.

### Candidates picked and why (avoiding `w3`'s territory)

Full candidate list built by grepping all `bl func_080007EC` sites across
`asm/*.s` (46 total, mirrors round 4's "47 call sites" count minus the one
already matched as `func_080E09B0` in round 5) and classifying by the
`push {r4,r5,lr}; adds r4,r0; adds r5,r1; ...; ldr r1,[r4,#4]` "richer"
signature vs. the plain forwarding shape. Picked from the highest-address
end of that list, inside `asm/code_809E804.s`/`asm/code_0805E760.s`
(monolithic files, mechanically simple single-function-at-a-time splits) --
deliberately avoided `asm/code_linkonce.s`'s COMDAT/`.text.code_ADDR`
entries at the very top of the address range (`func_080DC404`,
`func_080E0908`, `func_080E41B0`/`func_080E41E8`/`func_080E4210`) this
round, both to stay clear of any risk of overlapping `w3`'s slice and
because round 5 already flagged that file's `fomt.lds` wildcard-ordering
trap as something to handle carefully, one candidate at a time, not
rushed alongside four other splits in the same session.

### What's left in this family

Per the classification above, still-unattempted "richer"-shaped sites in
the upper half of the address range: the three `code_linkonce.s` entries
just mentioned, plus (need re-verification against the current, smaller
`asm/code_809E804.s`/`asm/code_0805E760.s` after this round's three splits)
any remaining `func_08090E84`/`func_080925C4`/`func_080931E0`/
`func_08093A88` (in `code_0805E760.s`, between `func_0808ED08` and the
now-matched `func_0809A518`) and `func_080A3BF4`/`func_080A3C40`/
`func_080A3C8C` (in `code_809E804.s`, right after its start) that weren't
individually checked against the "richer" signature this round -- the
grep-based classification only confirmed the 4 actually attempted, not the
full remaining set. A future round should re-run the classification pass
first, now that the layout puzzle is solved and each remaining candidate
should be a same-day match rather than exploratory work.

### Repo state at end of round 6

- Four new commits: `95a55f3`, `e902a6c`, `3f33b7d`, `e5a8f43`. `make
  compare` verified bit-exact via full clean rebuild after each.
- `origin` push URL untouched (still `DISABLED-local-only-see-CLAUDE-md`),
  nothing pushed, no PR, no network action against origin, no `git push`
  attempted or considered.
- Working tree clean at the end of the round.

## Round 6 -- systematic shape-hunt on `func_0804E4AC` (`DrawGlyphAt`, plain):
real progress, still not matched, honest near-miss with the gap fully
characterized

### Scope

Dedicated retry of `func_0804E4AC` (round 3's worst failure in the
"register pressure" class, reverted after one attempt + one refinement),
this time doing a real systematic shape-hunt with the fast
`arm-none-eabi-cpp | agbcp | as` quicktest harness (no full link), per
round 4's successful method on `func_08004C54`. **Result: NOT matched,
but went from "wrong from the very first instruction, 20 bytes short" (round
3) to "byte-identical control-flow graph, differs by exactly ONE 2-byte
instruction, single isolated register-allocation choice" -- the closest
this function has ever come, and the specific remaining gap is now fully
characterized (see below) rather than a vague "register pressure" writeoff.**
No commit -- not bit-exact, per the non-negotiable discipline. Reverted
cleanly (`rm src/code_0804E4AC.cc`, confirmed via full clean rebuild
`rm -rf build fomt.gba fomt.elf fomt.map && make compare` that
`sha1sum -c fomt.sha1` still reports `Réussi`).

### Read for context first

`docs/VWF.md` (franglais patch repo, full) for the semantic role and the
already-Ghidra-verified signature (`DrawGlyphAt(uint dims, int dest, uint x,
uint y, char code)`, `dims` packing `width_tiles | (height_tiles << 16)`).
Confirmed the two already-matched `DrawString`/`DrawStringRecolor`
(`src/code_0804E8F0.cc`, `src/code_0804E958.cc`) call `DrawGlyphAt` as an
opaque `bl func_0804E4AC`/`func_0804E5AC` with 4 register args + a 5th
stack arg (`code`, `u32` not `char` at the call site -- confirmed from
`DrawString`'s own already-matched source) -- no new information about
`DrawGlyphAt`'s internals from the callers beyond what `docs/VWF.md` already
gave (expected: the loop treats it as a black box, that's exactly what made
the loop itself tractable per round 3's finding).

### Body of the function, reconstructed from the vanilla disassembly

(`asm/code_0803EE94.s:27928-28061`, `func_0804E4AC`, 0x0804E4AC-0x0804E5AC,
256 bytes / 0x100, 140-byte stack frame `sub sp, #0x8c`, uses all of
`r4-r7` + `r8`/`r9`(`sb`)/`r10`(`sl`)/`r12`(`ip`) at points -- confirming
round 3's "register pressure" read):

1. `kind = ResolveGlyph(&glyph_buf[0], code)` (`func_080D0D28`, a local
   128-byte stack buffer -- 4 possible 32-byte tile chunks at offsets
   `+0`, `+0x20`, `+0x40`, `+0x60`, not just 32 bytes as `docs/VWF.md`
   states for the short-glyph case -- the buffer is sized for the WORST
   case, a 16x16px glyph split across 4 8x8 tiles).
2. `if (kind != 1 && kind != 2) return 0;` -- compiled via the classic
   `(unsigned)(kind - 1) > 1` range-check idiom (`subs r0,#1; cmp r0,#1;
   bhi`), confirming `kind` must be typed `u32`/unsigned in the port (an
   `int`-typed `kind` produces a SIGNED `ble`/`bgt` variant later at the
   `kind > 1` check inside the tile-blit body, which does NOT match --
   traced this precisely, see fix list below).
3. `tile_x = x >> 3; tile_y = y >> 3; width_tiles = (dims<<16)>>16;
   height_tiles = dims>>16;` -- clipped against the window: `if (tile_x >=
   width_tiles) return kind; if (tile_y >= height_tiles) return kind;`
   (two independent early-return guard clauses, NOT combined -- this part
   matched on the first attempt and stayed matched throughout).
4. Alignment test, written in the original as **two separately-flagged
   checks, not a combined `&&`**: `x_ok = ((x & 7) == 0); if (x_ok) {
   y_ok = ((y & 7) == 0); if (y_ok) { <aligned body, ends in `return
   kind`> } } func_0804E9C8(dims, dest, x, y, &glyph_buf); return kind;`
   -- i.e. a real if/else (aligned body as the "then", the unaligned-blit
   call physically placed at the very END of the function as the
   "else", both converging on a shared `return kind`), not a guard clause
   `if (!aligned) { call; return; }` at the top. Getting this if/else
   shape right (see fix list) was what fixed the single biggest structural
   divergence found this round.
5. Aligned body: `has_right = (tile_x+1) < width_tiles; has_bottom =
   (tile_y+1) < height_tiles;` (also a literal `= 0; if (cond) = 1;`
   two-step pattern for `has_right` specifically, confirmed by the
   disassembly building a boolean into a register with two `movs`
   before ever branching on it), then up to 4 conditional 32-byte
   `CpuFastSet` blits (TL always; BL if `has_bottom`; TR if `has_right &&
   kind > 1`; BR if all three) at tile-grid offsets `(width_tiles*row +
   col) * 0x20` from `dest`, `+0x20` more for the right column.

### Fixes found this round that closed almost the entire gap (all confirmed
via the quicktest harness, `arm-none-eabi-cpp | agbcp -O2 | as`, ~1s/iter,
no full link needed until the final check)

1. **`(unsigned)(kind - 1) <= 1)` must be the condition of a
   `then`-branch containing the ENTIRE rest of the function, with a
   trailing `return 0;` AFTER the closing brace -- not a leading guard
   clause `if ((unsigned)(kind-1) > 1) return 0;`.** Both are logically
   identical; they compile to visibly different shapes. The guard-clause
   form makes agbcp place the "return 0" stub inline right after the
   check (needs an extra `movs r0,#0; b epilogue` to jump PAST it from the
   valid path). The trailing form places "return 0" as the literal last
   statement of the function, physically adjacent to the epilogue -- no
   jump needed for that path, and the valid path's normal exit just does
   one branch to skip over it. This matches the original exactly (`bhi
   .L0804E598` jumps directly to `movs r0,#0` which falls straight into
   the epilogue). **General rule for this codebase, worth adding to
   `DECOMP_RULES.md`**: an early "impossible/invalid" return that appears
   FIRST in a natural reading of the C is not necessarily first in the
   real source -- if the compiled shape shows the invalid-path stub
   sitting right before the epilogue with the valid path jumping around
   it, the real source likely wraps the valid path in `if (valid) { ...
   } return invalid_value;`, not `if (!valid) return invalid_value; ...`.
2. **The aligned/unaligned dispatch is a real if/else, body-then-fallback,
   not a guard clause either** -- same lesson as point 1, applied a
   second time in the same function. Before this fix, the unaligned-call
   block (`func_0804E9C8(...)`) was emitted inline right after the
   alignment check (early-return style); after, it's placed at the very
   end of the function, matching the original's physical layout exactly
   (confirmed via the `b.n`-target address in the disassembly, which
   points at the tail block, not an inline one).
3. **The alignment check must be written as two SEPARATE flag variables
   computed then tested (`x_ok = (x&7)==0; if (x_ok) { y_ok = (y&7)==0;
   if (y_ok) {...} }`), not a single combined `&&` condition
   (`if ((x&7)==0 && (y&7)==0)`).** Even though semantically identical
   under short-circuit evaluation, the combined form compiles straight to
   two `ands`+`cmp`+`bne` pairs with no intermediate flag-building; the
   separate-variable form reproduces the original's literal
   `movs r,#0; ...; movs r,#1; cmp r,#0; beq` pattern for EACH check.
   **This generalizes the existing DECOMP_RULES.md lesson about literal
   boolean-flag construction (previously only documented for the
   free-list-pop case in round 2's `func_0800736C`) to alignment/range
   checks too** -- worth broadening that rule's wording.
4. **`kind` must be `u32`, not `int`.** A signed `int kind` produces
   `ble.n`/`bgt.n` at the `kind > 1` check inside the aligned body (the
   TR/BR gate); the original uses `bls.n` (unsigned). Purely a typing fix,
   caught by direct instruction-mnemonic diffing against the vanilla
   disassembly (`bls` vs `ble` -- one differs only in the condition code
   nibble, both correct C, only one produces the recorded byte stream).
5. **Multiplication operand order in source matches the register that
   becomes the `muls` accumulator**: write `width_tiles * tile_y +
   tile_x` (not `tile_y * width_tiles + tile_x`) to get `mov r0,
   width_tiles_reg; muls r0, tile_y_reg` (accumulator = left operand's
   register, loaded first) instead of the reverse. Cosmetic for byte
   count on its own (both forms are 2 instructions), but matching it
   removed noise from the diffing process and is a cheap, free thing to
   get right once noticed.

### The ONE remaining gap, fully characterized, not resolved

After all 5 fixes above, the quicktest harness diassembly is **249**
functionally-real instructions matching the original's 250 one-for-one in
sequence and register role (confirmed via an automated Python
mnemonic-sequence diff, `orig_ops*.txt`/`mine_ops*.txt`, in
`/tmp/.../scratchpad` this session -- not committed, throwaway diagnostic
files), for a total size of **250 bytes vs the original's 252** (256 minus
a trailing 4-byte pad shared by both once you exclude the assembler's
4-byte alignment `nop`). The single missing instruction is a `str`
(stack-spill) of `tile_x` immediately after it's computed
(`u32 tile_x = x >> 3;`), which the original does **even though the same
physical register (`r4` in the original) still validly holds `tile_x`
right up to its last use** (confirmed by manual dataflow trace: `r4` is
never reassigned between the spill and the final read). The original later
reloads this value from the stack (`ldr r2, [sp, #0x84]`) for the BR-tile
address calculation specifically, NOT for the TL or BL calculations, which
read directly from the still-valid register. **No C-level restructuring
tried this round reproduces this specific redundant spill+reload**:

- Declaration order of `tile_x`/`tile_y` vs `width_tiles`/`height_tiles`
  swapped (tried both orders): changes WHICH of `tile_x` vs `width_tiles`
  lands in a low register (`r4`-class, no separate `mov` into a high
  register needed) vs a high register (`r8`-class, needs a `mov`) -- this
  is a real, confirmed, mechanical THUMB constraint (16-bit shift
  instructions `lsls`/`lsrs`/`asrs` can only target `r0`-`r7`, so whichever
  of the two variables is homed in `r8`+ needs an extra `mov` to get
  there) -- but in EVERY order tried, only ONE of the two variables pays
  an "extra instruction" tax (either the `mov`-into-high-reg for whichever
  lands high, or nothing for whichever lands low with no forced spill).
  The original pays the tax on **both** simultaneously (`tile_x` in `r4`
  WITH a redundant stack spill, `width_tiles` in `r8` WITH the expected
  `mov`) -- an 8th distinct "hard" register-pressure slot that none of the
  variants tried actually reproduces.
- Extracting the BR-block's `width_tiles * (tile_y + 1)` sub-expression
  into its own named local (`u32 row = ...; ... tile_x + row ...`) before
  adding `tile_x`, to test whether a fresh statement boundary triggers a
  reload the way it seems to for the ORIGINAL's `tile_x` reference at that
  exact point: no effect, `tile_x` still resolved from its live register,
  no spill/reload emitted.
- `register u32 tile_x = ...;`: no effect (unsurprising for this era of
  compiler, but cheap to rule out).

**Best working hypothesis, not verified**: the redundant spill/reload is
NOT actually about `tile_x`'s own C-level treatment at all, but a
side-effect of overall register-pressure accounting elsewhere in the
function forcing agbcp's allocator to treat `r4` as "not confidently live"
by the time it reaches the BR block specifically (the BR block is the
*third* conditionally-executed `CpuFastSet` call site, nested two `if`
levels deep -- TL is unconditional, BL is one level deep, TR/BR are two
levels deep) -- possibly the allocator's live-range tracking has a
different (more conservative) rule for values referenced from inside a
DOUBLY-nested conditional block reached only after two sibling `bl`
call sites (TL's and BL's `CpuFastSet` calls) have already executed, vs.
a value referenced from a singly-nested block. This was NOT tested
directly this round (would require, e.g., artificially adding a 3rd
nesting level around the TR-only case to see if IT also starts
spilling/reloading something that currently doesn't) -- flagged as the
most promising next lead, not chased further this round given the
budget already spent getting this close.

### What to try next, if this function is picked up again

1. Test the "doubly-nested conditional forces reload" hypothesis directly:
   wrap the TR block (currently singly-nested under `has_right && kind >
   1`) in an ADDITIONAL dummy-but-truthful nesting level and see if
   `width_tiles` (or whichever value is read inside it) starts exhibiting
   the same spill+reload pattern independent of which variable it is --
   if so, the fix is structural (find what the SECOND nesting level should
   really be, maybe `has_right` and `kind > 1` are tested as two SEPARATE
   nested `if`s rather than one `&&`, exactly like the `x_ok`/`y_ok`
   fix -- **this was not tried this round and is the most promising next
   experiment**, given fix 3 above already established that this
   function's original source strongly prefers separately-flagged
   sequential conditions over combined `&&` everywhere else).
2. `func_0804E5AC` (`DrawGlyphAt`, recolor variant) was NOT attempted this
   round -- per round 3's note, expect the identical shape/gap once
   `func_0804E4AC` matches, since both share the same buffer/flag layout.
   Port `func_0804E4AC` first, then immediately try reapplying the exact
   same shape to `func_0804E5AC` as a fast follow-up (round 3 confirmed
   this pattern works for the `DrawString` pair: second function of a
   pair matches on the first attempt once the shape is known).
3. If neither this function nor its recolor sibling converge with a
   modest continued budget, this is still consistent with round 2's
   general lesson (register-pressure-class functions need a genuinely
   large budget) -- but note the gap is now ONE isolated, well-understood
   instruction, not an open-ended mismatch, so "large budget" here likely
   means a handful more structural experiments around the nesting-depth
   hypothesis above, not starting over.

### Repo state at end of round 6

- Working tree clean, `make compare` passes bit-exact (verified via full
  clean rebuild immediately before writing this section).
- No new commits this round -- nothing matched bit-exact, nothing
  committed, per discipline. The one attempted file
  (`src/code_0804E4AC.cc`) was removed (it was never staged/committed;
  the build system auto-globs `src/*.cc`, so leaving it in place broke
  `make compare` with a duplicate-symbol link error against the
  still-`asm/`-resident original -- caught and fixed before finishing).
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## Round 6 (worktree w11) -- 14 sites supplémentaires de la famille "riche"

Suite du travail w7 (`0809A518`, `080B3C0C`, `080BC8C0`, `080C7ED0`) et w3
(`0800371C`, `08004BDC`, `080059D0`, `080070A4`) : worktree isolé `w11`
(branche `parallel-11`) chargé de la PREMIÈRE moitié des 29 sites restants
de la liste triée par adresse croissante (les 14 premiers, jusqu'à
`0808048C` inclus), un worktree parallèle `w12` prenant le reste -- pas de
recoupement possible (worktrees git séparés).

**14 sites tentés, 14 matchés, 0 échec.** Chaque site a été re-scanné
avant de le classer (règle de prudence explicite du round) : tous suivent
bien un des deux corps déjà caractérisés round 6 (pas de variante
imprévue) :

- **11 en variante "2 enfants"** (self+8 plain check EN PREMIER, puis
  self+4 MI -- exactement le corps de `func_0809A518`) : `080521BC`,
  `08057E1C`, `0805CEFC`, `0805E658`, `0805FD04`, `08069E58`, `0807561C`,
  `0807DD68`, `0807EE44`, `0807F5B0`, `0808048C`.
- **3 en variante "1 enfant"** (self+4 MI seul -- corps de
  `func_080B3C0C`) : `0806D918`, `0806EA00`, `080709D8`.

Seule variable par site : la constante `vtable_unk_ADDR` propre (lue
directement dans le littéral `.L...: .4byte vtable_unk_ADDR` juste après
le corps désassemblé) -- corps C identique mot pour mot aux exemples déjà
documentés dans `DECOMP_RULES.md`, aucune adaptation de structure requise.

Découpage mécanique : les 4 premiers (`080521BC`..`0805E658`) étaient
dans `asm/code_0804E9C8.s` (déjà partiellement isolé), les 10 suivants
dans `asm/code_0805E760.s`. Split répété 14 fois selon la méthode
standard (`DECOMP_RULES.md` section "Méthode de découpage") : à chaque
étape, la fonction cible sort en `.cc`, tout ce qui suit part dans un
nouveau fichier `asm/code_<ADDR_SUIVANT>.s` nommé d'après l'adresse de la
fonction immédiatement suivante (pas forcément le prochain site de la
famille -- des fonctions non apparentées peuvent s'intercaler, ex. entre
`func_08057E1C` et `func_0805CEFC`). Script bash générique écrit pour
automatiser ce découpage précis (extraction du corps + troncature du
fichier courant + génération du nouveau fichier avec header standard) --
évite les erreurs manuelles de bornes de `sed` répétées 14 fois.

Un commit par fonction (14 commits), `make compare` bit-exact sur rebuild
complètement propre (`rm -rf build fomt.gba fomt.elf fomt.map`) avant
CHAQUE commit, sans exception.

### Repo state à la fin de ce sous-round (w11)

- 14 nouveaux commits, un par fonction matchée, tous vérifiés `make
  compare` bit-exact sur rebuild propre.
- `origin` intact (`DISABLED-local-only-see-CLAUDE-md`), rien poussé,
  aucune PR.
- Arbre de travail propre à la fin (hors mise à jour de
  `DECOMP_RULES.md`/`SESSION_NOTES.md`, ce commit-ci).
- Sites restants de la famille (15) laissés à `w12` et rounds futurs :
  `08080DC4, 08081A70, 08082144, 08083AEC, 08085528, 080881AC, 0808AB68,
  0808C59C, 0808ED08, 08090E84, 080925C4, 080931E0, 08093A88, 080C0D44,
  080E41B0`.

## Round 7 (worktree w12, isolated) -- last 15 sites of the "~37 richer
destructors" family

Assigned range: second half of the 29 still-unmatched sites from the
family list in `DECOMP_RULES.md`, specifically the last ~14-15 by
ascending address, from `08080DC4` through `080E41B0` (a parallel
worktree, w11, took the first half `080521BC`..`0808048C`). All 15 sites
matched, all on the first attempt -- no near-misses, no failed tries to
report.

### Classification pass (before touching anything)

Read the raw disassembly of all 15 target addresses first, per
`DECOMP_RULES.md`'s explicit instruction to re-scan rather than assume.
Result:

- **13 sites** (`08080DC4`, `08081A70`, `08082144`, `08083AEC`,
  `08085528`, `080881AC`, `0808AB68`, `0808C59C`, `0808ED08`, `08090E84`,
  `080925C4`, `080931E0`, `08093A88`) -- all consecutive inside the same
  monolithic file `asm/code_0805E760.s` -- match the "2-child" body
  exactly as already characterized for `func_0809A518`: own vtable
  stamp at self+0, conditional teardown of `self+8` (plain child, vtable
  at pointee+0) then `self+4` (MI-shaped child, vtable at pointee+4),
  tail-call to `func_080007EC`. Byte-for-byte identical shape across all
  13, only the `vtable_unk_ADDR` constant differs per site.
- **1 site** (`080C0D44`, in `asm/code_080BC8F0.s`) matches the simpler
  "1-child" body already characterized for `func_080B3C0C`/
  `func_080C7ED0`/`func_080BC8C0`: vtable stamp + single conditional
  teardown of `self+4` only, no `self+8` field at all.
- **1 site** (`080E41B0`, in `asm/code_linkonce.s`, inside the
  `.text.code_080E0EF0` COMDAT section) has the same "2-child" teardown
  shape as the 13 above, but **does not stamp its own vtable at all** --
  no `str r0, [r4]`, no `vtable_unk_ADDR` literal anywhere in the
  function body. This is a genuinely new 4th variant of the family, not
  seen in rounds 4-6. Ported literally (struct with an unwritten
  offset-0 field), not guessed at semantically -- see the new
  "Variante sans restamp de vtable propre" subsection added to
  `DECOMP_RULES.md`. Only one instance seen so far; not enough data to
  explain *why* yet (candidate explanations noted but explicitly flagged
  as unverified).

### Mechanics

Each function required splitting its owning monolithic `asm/*.s` file at
its `thumb_func_start`, per the documented method: automated with a small
one-off Python script
(`scratchpad/split_asm.py`, not committed to the repo -- pure tooling,
lives in the session's scratch dir) that takes `(file, target_addr,
next_addr)` and does the head/tail split + new-file creation
mechanically, to avoid manual `sed` mistakes across 15 repeated splits.
Each of the 13 sites in `code_0805E760.s` was split off *sequentially in
address order*, since each split's tail file becomes the head file for
the next split's target -- confirmed via `tail` on each new file that it
still ends immediately before the already-known-good `func_0809A518`
boundary (existing entry `src/code_0809A518.o(.text);` in `fomt.lds`),
which served as a running structural sanity check the whole way through.
`080C0D44` and `080E41B0` live in unrelated files/sections and were split
independently, checked the same way against their known following
neighbor (`func_080C7ED0` and end-of-file respectively).

15 commits, one per function (matching the "un commit par fonction, pas
un seul gros commit" discipline), each preceded by a from-scratch clean
rebuild (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`) that
passed `sha1sum -c fomt.sha1` before staging/committing. Commits (oldest
to newest): `e1b1931` (`08080DC4`), `1f085cf` (`08081A70`), `7c09c6d`
(`08082144`), `0271566` (`08083AEC`), `91f7ebe` (`08085528`), `5b09238`
(`080881AC`), `0f8825f` (`0808AB68`), `3c6bf9f` (`0808C59C`), `7631bff`
(`0808ED08`), `228b133` (`08090E84`), `9b04a4d` (`080925C4`), `d1cc3d2`
(`080931E0`), `ef78680` (`08093A88`), `18e8b5e` (`080C0D44`), `ae97047`
(`080E41B0`).

### Repo state at end of round 7 (w12)

- 15 new commits (listed above), each individually verified bit-exact
  via a full clean rebuild before being staged.
- `DECOMP_RULES.md` updated: matched sites struck through in the "37
  sites" list, historique table extended, new vtable-less variant
  documented.
- `origin` push URL untouched, nothing pushed, no PR.
- Working tree clean at the end of the round.
- **What's left in this family**: 13 sites (`080521BC` through
  `0808048C`) not covered by this worktree -- explicitly assigned to a
  parallel worktree (w11) for the same round, no overlap.

## Round 7 (worktree `w14`) -- les 2 derniers getters `GameState`
(`func_08010F04`, `func_08010F1C`) matchés

Cible assignée : les 2 getters `GameState` laissés ouverts par le round 6
(4 setters déjà matchés dans `src/game_state.cc`). Worktree isolé, aucun
recoupement avec `w12`/`w13` (destructeurs "riches"/autres cibles).

### Analyse du bitfield (obligatoire avant d'écrire le C, cf. brief)

Les deux fonctions désassemblent en une paire `ldrb`+`lsls`+`lsrs` SANS
`ands`/littéral -- même motif que la règle "double-shift littéral" de
`DECOMP_RULES.md`, mais ici c'est le désassemblage ORIGINAL qui l'utilise
directement (pas une correction après coup). Formule générale pour un
champ non-signé de largeur `N` bits démarrant au bit `P` d'un mot 32
bits : `(x << (32-(P+N))) >> (32-N)`, donc `N = 32 - S2` et
`P = (32-S1) - N` où `S1`/`S2` sont les deux montants de shift observés.

- `func_08010F04` (`ldrb [r0]`, `lsls #27`, `lsrs #31`) : `S1=27, S2=31`
  -> `N=1, P=4`. Un seul bit, bit `0x10` de l'octet 0 -- confirmé être le
  même octet que les 4 setters (round 6 l'avait déjà identifié comme tel
  sans le porter). Getter simple 0/1.
- `func_08010F1C` (`ldrb [r0,#3]`, `lsls #25`, `lsrs #26`) : `S1=25,
  S2=26` -> `N=6, P=1`. Champ de **6 bits** (valeurs 0-63), bits [1:6] de
  l'octet 3 (masque `0x7E`, décalé de 1). Les bits 0 et 7 de cet octet ne
  sont PAS touchés par ce getter -- restent non caractérisés (probablement
  d'autres flags dans le même octet, non élucidés ici, hors scope de cette
  cible précise).

Formes C écrites en double-shift littéral (pas `(x >> n) & mask`), par
cohérence avec la règle "anti-pattern #1" -- vérifié directement via le
harnais rapide (compilateur+assembleur sans lien, `DECOMP_RULES.md`
section "Itération rapide") : les deux ont matché du PREMIER coup, octet
pour octet identiques au désassemblage cible.

### Découverte annexe (non portée, notée pour un futur round)

En délimitant `func_08010F0C` (fonction intercalée entre les deux cibles,
non demandée, laissée en asm) pour l'isoler proprement, le bloc de 8
octets `.L08010F14` juste après (actuellement des `.byte` bruts, sans
symbole `func_ADDR`) se décode en fait comme du VRAI code Thumb valide :
`ldrh r0,[r0,#2]; lsls r0,r0,#23; lsrs r0,r0,#25; bx lr` -- un 4e getter
de la même famille, non catalogué (pas de `thumb_func_start` dans le `.s`
d'origine, donc jamais repéré comme fonction). Même formule : `S1=23,
S2=25` -> `N=7, P=2`, un champ de 7 bits (0-127) sur un HALFWORD (pas un
octet) à l'offset 2 de l'objet. **Pas porté ce round** (hors du périmètre
assigné, et nécessite de vérifier s'il a un symbole `func_ADDR` officiel
quelque part avant de le nommer) -- laissé en `.byte` brut dans
`asm/code_08010F0C.s`, signalé ici pour qu'un futur round ne le manque
pas.

### Mécanique de découpage

`func_08010F04` et `func_08010F1C` ne sont PAS contiguës entre elles
(séparées par `func_08010F0C` + les 8 octets de données ci-dessus,
16 octets au total) -- deux découpages distincts nécessaires :

1. `asm/game_state.s` tronqué juste avant `func_08010F04` (1460 lignes,
   était 1483).
2. `func_08010F04` seule (8 octets) -> nouveau `src/code_08010F04.cc`.
3. `func_08010F0C` + le bloc `.byte` -> nouveau `asm/code_08010F0C.s`
   (16 octets, fichier "du milieu" sans fonction suivante dans le même
   fichier -- le fragment suivant en adresse, `func_08010F1C`, part
   directement dans un `.cc` différent).
4. `func_08010F1C` : heureusement CONTIGUË à `func_08010F24` (déjà dans
   `src/game_state.cc`, `0x08010F1C`-`0x08010F24` puis `0x08010F24`
   pile) -- ajoutée en TÊTE de `src/game_state.cc` (avant les 4 setters)
   plutôt que dans un fichier séparé, aucune nouvelle entrée `fomt.lds`
   nécessaire pour elle spécifiquement (le compilateur préserve l'ordre
   des déclarations source, confirmé round 6, donc son emplacement en
   tête du fichier source place ses octets AVANT ceux des 4 setters dans
   l'objet compilé, ce qui correspond exactement à l'adresse attendue).
5. `fomt.lds` : `asm/game_state.o(.text); src/game_state.o(.text);
   asm/code_08010F54.o(.text);` devient `asm/game_state.o(.text);
   src/code_08010F04.o(.text); asm/code_08010F0C.o(.text);
   src/game_state.o(.text); asm/code_08010F54.o(.text);`.
6. Tailles vérifiées avant contenu (`readelf -S`, méthode standard) :
   `code_08010F04.o` = 8 octets, `code_08010F0C.o` = 16 octets,
   `game_state.o` = 56 octets (8 + 4x12, au lieu de 48 avant ce round).
   `rm -rf build fomt.gba fomt.elf fomt.map && make compare` bit-exact
   au premier essai.

### Repo state à la fin de ce round (w14)

- Un commit attendu regroupant : `asm/game_state.s` (tronqué),
  `asm/code_08010F0C.s` (nouveau), `src/code_08010F04.cc` (nouveau),
  `src/game_state.cc` (fonction ajoutée en tête), `fomt.lds` (2 lignes
  ajoutées). `make compare` vérifié bit-exact sur rebuild propre avant
  commit.
- Cible assignée entièrement traitée (2/2 matchés, 0 échec) -- pas de
  budget restant investigué pour `func_08004C68` (gros morceau,
  nécessiterait son propre round dédié) ni pour la famille des
  destructeurs "riches" (déjà couverte par `w11`/`w12` d'après
  `DECOMP_RULES.md`, pas de recoupement tenté par prudence).
- `origin` intact, rien poussé, aucune PR, discipline "un seul agent actif
  sur ce worktree" respectée (worktree isolé dédié).
- Piste laissée pour un futur round (voir section ci-dessus) : le getter
  non catalogué à `0x08010F14` (7 bits, offset+2, halfword), actuellement
  toujours en `.byte` brut dans `asm/code_08010F0C.s`.

## 2026-08-20, round 7 (worktree `w13`, branch `parallel-13`) -- `func_0804E4AC`
nesting-depth hypothesis tested, still not matched, same 1-instruction gap
confirmed via an independent reconstruction

### Scope

Dedicated retry per round 6's own recommended next step: test whether the
"BR block nested two `if` levels deeper than TL" theory explains the single
remaining redundant `str`+`ldr` spill/reload of `tile_x` around the BR tile
blit. Reconstructed the whole function from scratch from round 6's notes
(not from any surviving `.cc` -- round 6 reverted its file cleanly) to get
an independent read on the near-miss, then spent the round's budget on
targeted variants. **Result: NOT matched. Same exact gap as round 6 (one
`str` instruction, 2 bytes, tile_x spilled before it's needed for the BR
tile address calc even though the same physical register would still be
valid) reproduced from an independently-written C source** -- this
independent confirmation is itself useful signal: two structurally
different-but-equivalent C reconstructions both land on the identical
250/252-byte near-miss, which argues this is a genuine, narrow
register-allocator wall rather than an artifact of one particular
phrasing. No commit to `src/`/`asm/`/`fomt.lds` -- nothing bit-exact,
per discipline. `make compare` confirmed still bit-exact on the untouched
working tree throughout (this round never touched `src/`, all iteration
happened in a session scratch directory via the quicktest harness).

### Baseline reconstruction

Independently re-derived the same C shape round 6 converged on (guard
clauses for `tile_x >= width_tiles` / `tile_y >= height_tiles`, wrapped
`if (x_ok) { if (y_ok) { ... } }` alignment dispatch with the unaligned
call physically last, separately-flagged `has_right`/`has_bottom`, `kind`
typed `u32`) directly from the vanilla disassembly at `asm/code_0803EE94.s`
around `func_0804E4AC` (0x0804E4AC), without reading round 6's `.cc` (it
no longer exists). Confirmed via the quicktest harness
(`arm-none-eabi-cpp | agbcp -O2 -fhex-asm | as`, no full link) plus an
automated mnemonic-sequence diff (Python `difflib.SequenceMatcher` over
normalized objdump output, register aliases `r9`/`r10`/`r12` mapped back
to `sb`/`sl`/`ip` to match the vanilla `.s`'s own alias convention) against
`baserom.gba`'s real bytes at that address: **120 instructions vs the
original's 121, both 252 bytes of code**, and the diff isolates to exactly
the same single missing `str` (plus one `ldr` reload later replaced by a
direct register add) that round 6 already characterized -- independent
confirmation of round 6's diagnosis, not a new finding on its own.

### Nesting-depth hypothesis: tested, inconclusive/negative, not the fix

1. **Splitting `kind > 1` into a separately-built flag variable
   (`kind_ok = kind > 1; if (kind_ok) {...}`)**, mirroring the
   `x_ok`/`y_ok` idiom already confirmed elsewhere in this function: no
   effect on the `tile_x` spill, and made the function 4 instructions
   *larger* (260 vs 252 bytes) by adding real flag-construction code for
   no compensating benefit. Reverted.
2. **Flattening the BR nesting to early-return / goto-style guards**
   (`if (!has_right) return kind; if (kind <= 1) return kind; ...TR...;
   if (!has_bottom) return kind; ...BR...; return kind;` instead of the
   nested `if`s): same 252 bytes, same exact gap (the `str` is still
   missing). Depth of the *textual* nesting changed; the compiled
   control-flow graph and the spill decision did not. Reverted.
3. **Extracting the BR blit into its own `static inline` helper function**
   (`DrawBRTile(dest, glyph_buf, width_tiles, tile_x, tile_y)`), to test
   whether crossing a real function-call ABI boundary (as opposed to just
   a deeper `if`) forces `tile_x` through memory: agbcp (confirmed weak,
   non-optimizing in most respects) still fully inlines a single-call-site
   `static inline` function at `-O2` -- output byte-identical to the
   non-extracted form, same gap. Not useful as a lever here. Reverted.
4. **Extracting the BR row offset (`width_tiles * (tile_y + 1)`) into its
   own named local right at the BR site** (`u32 br_row = ...; ... br_row +
   tile_x ...`), re-testing round 6's already-tried variant of this exact
   idea with a fresh independent implementation in case phrasing mattered:
   no effect, confirms round 6's finding rather than contradicting it.
   Reverted.
5. **`volatile u32 tile_x`**: forces a reload at *every* use (4 extra
   `ldr`s, 264 bytes total), not just the one BR-site reload the original
   has -- confirms `tile_x`'s spill in the original is NOT a blanket
   "always reload from memory" policy, it's a single, surgical,
   context-specific register-allocator decision at exactly one call site.
   Not a usable lever (produces the wrong number of reloads). Reverted.
6. **Artificially deepening TL's nesting to match BR's relative depth**
   (wrapping the TL `CpuFastSet` call in three additional truthful-but-
   dummy `if` levels: `width_tiles != 0` / `height_tiles != 0` /
   `kind != 0`): this is the closest thing to a clean depth-only test the
   round produced, and it DID change spill behavior -- but not in the way
   the hypothesis predicts. It did **not** make `tile_x` spill at the TL
   site; instead it spilled a completely different value (`y`, the
   4th parameter) to a *different* stack slot earlier in the function,
   and grew the function by 16 instructions/bytes overall. This is
   consistent with a much more mundane explanation than "depth itself
   triggers conservative spilling": **each dummy `if` condition needs its
   own operand in a register to be compared, so adding real nesting adds
   real register pressure as a side effect** -- there is no way to test
   "depth in isolation" without also consuming registers to evaluate the
   extra conditions, which confounds the experiment. **This round did not
   find a way to cleanly isolate nesting depth from register-pressure
   as separate causal factors, and the one depth-increasing experiment
   that didn't also change unrelated spills (attempts 1-2 above) showed
   no effect on `tile_x` at all.** Best read: the "doubly-nested block"
   framing from round 6 is probably not the right causal story; the real
   cause is more likely tied to `tile_x`'s specific live-range shape
   (distance/call-count between its last use before BR and BR itself, or
   something in the interaction between BL's and TR's `CpuFastSet` calls
   specifically) rather than syntactic `if`-nesting depth. Reverted --
   working tree confirmed unchanged (`git status --short` empty) before
   finishing.

### Updated recommendation for a future round

The nesting-depth hypothesis flagged as "most promising" at the end of
round 6 has now been tested as directly as it can be without also
changing register pressure, and **did not reproduce the gap** -- it
should be considered closed, not "not yet tried" in any future attempt.
If this function is picked up again, the productive leads still open are
narrower and more mechanical than "shape hunting": (a) try altering
what's *between* the BL blit and the BR blit specifically (e.g. does
moving the TR blit's `CpuFastSet` call before or after the `has_bottom`
check for BR change which values survive), since the reload sits right
after the second and third `CpuFastSet` calls the function makes, or (b)
accept this as a second confirmed instance of the "register pressure"
class documented in `DECOMP_RULES.md` and deprioritize further rounds
on this specific function absent a large dedicated budget, applying the
budget instead to functions still in the "straight-line reads + one
opaque `bl`" tractable class.

### Repo state at end of round 7

- Working tree clean except this documentation update; `make compare`
  not re-run this round since no `src/`/`asm/`/`fomt.lds` files were
  touched at any point (all iteration happened via the quicktest harness
  against a scratch-directory `.cc`, never against the tracked tree).
- No new commits touching `src/`/`asm/`/`fomt.lds` -- nothing matched
  bit-exact, nothing committed there, per discipline.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## 2026-08-20, round 8 (worktree `w17`, branch `parallel-17`) -- hidden
GameState getter `func_08010F14` catalogued and matched

Priority-1 target for this round, flagged as an annex discovery at the end
of round 7 (w14, see `func_08010F04`/`func_08010F1C` entry above): 8 bytes
of raw `.byte` data sitting right after `func_08010F0C` in
`asm/code_08010F0C.s`, at `.L08010F14:`, never given a `thumb_func_start`/
`func_ADDR` symbol despite decoding as fully valid Thumb code.

Verified the address first: `func_08010F0C` (`ldr r0,[r0]`; `lsls #0xe`;
`lsrs #0x1b`; `bx lr`) is exactly 4 instructions = 8 bytes, so it spans
`0x08010F0C`-`0x08010F14`, meaning the `.byte` blob starts exactly at
`0x08010F14` (matching its own label name). The very next symbol,
`func_08010F1C` (already ported in `src/game_state.cc`, round 7), starts at
`0x08010F1C` -- so the blob is exactly 8 bytes / one function, snugly
between two already-known functions, no ambiguity about its extent.

Hand-decoded the 8 bytes (`40 88 C0 05 40 0E 70 47`) as four 16-bit Thumb
halfwords, little-endian:
- `0x8840` = format-10 `LDRH`: bits `1000 1 00001 000 000` -> L=1
  (load), Offset5=1 (x2 = byte offset 2), Rb=R0, Rd=R0 -> `ldrh r0,[r0,#2]`.
- `0x05C0` = format-1 shift: bits `000 00 10111 000 000` -> op=00 (LSL),
  offset5=`10111`=23, Rs=Rd=R0 -> `lsls r0,r0,#23`.
- `0x0E40` = format-1 shift: bits `000 01 11001 000 000` -> op=01 (LSR),
  offset5=`11001`=25, Rs=Rd=R0 -> `lsrs r0,r0,#25`.
- `0x4770` = the standard `bx lr` encoding.

Applied DECOMP_RULES.md rule 1bis (`S1=23,S2=25` -> `N=32-25=7` bits wide,
`P=(32-23)-7=2`): a 7-bit unsigned field starting at bit 2 of the halfword
read from `self+2`. Noted in passing (not asserted as fact, just an
observation worth a comment): this halfword is the upper half of the same
32-bit word `func_08010F0C` reads from `self+0` and extracts bits `[13:18)`
from (`S1=14,S2=27` -> `N=5,P=13`) -- our new field's bits `[18:25)` of
that full word are immediately adjacent to `func_08010F0C`'s `[13:18)`,
consistent with (but not proof of) both being sub-fields of one packed
bitfield word on the same GameState-family object.

Verified the C port byte-exact via the quick compiler+assembler harness
(`DECOMP_RULES.md` "Iteration rapide" recipe, redirected to a session-
unique scratch path per the round-6 `/tmp/qt.s` collision lesson) BEFORE
touching the tracked tree:

```c
EC u32 func_08010F14(void * self)
{
    return (u32)(*(u16 *)((u8 *)self + 2)) << 23 >> 25;
}
```

`arm-none-eabi-objdump` on the resulting `.o` reproduced the exact 4
instructions/8 bytes above, byte-for-byte.

No caller anywhere in `asm/`/`src/` references `.L08010F14` or
`func_08010F14` symbolically (a full-tree grep came up empty except the
label definition itself) -- this function is either called only via an
indirect table/computed address, or genuinely dead code the original
compiler emitted and never referenced. Not investigated further this
round (out of scope for "port + match", would need a broader scan of
jump tables elsewhere in the binary).

Applied the "target is the last function in an already-mostly-split file"
case of the `asm/*.s` splitting method: removed the 8-byte blob from
`asm/code_08010F0C.s` (leaving only `func_08010F0C`'s own body, no new
asm file needed since the function following the blob, `func_08010F1C`,
was already carved out into `src/game_state.cc` in round 7), added
`src/code_08010F14.cc` with the standard header-comment discipline, and
inserted `src/code_08010F14.o(.text);` into `fomt.lds` between the
existing `asm/code_08010F0C.o(.text);` and `src/game_state.o(.text);`
entries (exact original position of the 8 bytes).

Clean rebuild (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`)
passed bit-exact (`sha1sum -c fomt.sha1` -> `fomt.gba: Reussi`). Committed
as `05e966f` (`asm/code_08010F0C.s`, `fomt.lds`, new
`src/code_08010F14.cc`; `git status --short` confirmed clean, all three
changed/added files staged via `git add -A`, no stray untracked files).

### Priority 2

Not attempted this round: priority-1 (the hidden getter) was the full
scope delivered, and the brief explicitly said priority 2 only "if time
allows" with a strong caution against re-attempting `func_0800736C`
(OBJ-palette allocator, 4 documented failures) without a genuinely new
angle -- none surfaced while working priority 1, so left untouched rather
than force a 5th unproductive attempt. `DECOMP_RULES.md`'s prioritized-
targets list (end of file) remains the reference for the next round.

### Repo state at end of round 8

- Working tree clean after the commit (`git status --short` empty,
  verified post-commit).
- One new commit (`05e966f`) touching `src/`/`asm/`/`fomt.lds`, `make
  compare` bit-exact on a clean rebuild immediately before committing.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. Worked alone in the isolated `w17` worktree per the
  round brief; did not touch anything outside `func_08010F14`.

## 2026-08-20, round 8 (worktree `w16`, branch `parallel-16`) -- `func_0804E4AC`,
the "between BL and TR" `CpuFastSet` lead tested and CLOSED, 3rd independent
confirmation of the same 1-instruction gap, this is now the function's 3rd
serious attempt to fail

### Scope

Round 7 left one specific untested lead open: "try altering what's *between*
the BL blit and the BR blit specifically... since the reload sits right
after the second and third `CpuFastSet` calls the function makes." This
round chased exactly that, mechanically rather than by shape-hunting: traced
every single instruction between the BL block's `bl CpuFastSet`
(`0x804e582`/offset `0x9e` in the quicktest harness numbering) and the TR
block's `bl CpuFastSet` (`0x804e5b6`-equivalent), and separately between TR's
and BR's, directly against the vanilla disassembly
(`asm/code_0803EE94.s:27928-28061`, re-extracted fresh via
`arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb
--adjust-vma=0x08000000 --start-address=0x0804E4AC
--stop-address=0x0804E5AC baserom.gba`, cf. the `objdump -bbinary` trap in
`DECOMP_RULES.md`). **Result: closed, negative.** No commit -- nothing
bit-exact. Working tree in this worktree was never touched (`git status
--short` empty throughout; all iteration happened in a session scratch
directory, `/tmp/fomt-w16-drawglyph-scratch/`, never inside the repo).

### What's actually between BL's and TR's `CpuFastSet` calls

Read directly off the vanilla disassembly, register-by-register:

```
.L0804E54E:                  ; falls through here after BL's `bl CpuFastSet`
    ldr r0, [sp, #0x88]      ; reload has_right flag FROM STACK (not a register)
    cmp r0, #0
    beq .L0804E594
    mov r1, sl               ; sl = kind (never spilled, stays in sl all along)
    cmp r1, #1
    bls .L0804E594
    adds r1, r6, #0          ; r6 = TL tile address (already computed for TL's blit)
    adds r1, #0x20           ; TR address = TL address + one tile column
    add r0, sp, #0x24
    movs r2, #8
    bl CpuFastSet             ; TR
```

None of these 9 instructions touch `r4` (`tile_x`), `r5` (`tile_y + 1`, needed
again at BR) or `r8` (`width_tiles`, also needed again at BR) -- the TR
address is computed purely from `r6` (the already-computed TL address, reused
directly), not recomputed from `tile_x`/`width_tiles`. **The only value
reloaded from memory in this zone is `has_right` itself**, and that reload is
NOT a redundant/mysterious one -- `has_right` (unlike `has_bottom`, which
stays resident in `r7` for the whole function) was never given a register at
all: it's assigned via `str` both times it's set (`.L0804E508`-`0518`, sp+
`0x88`), the classic materialized-boolean idiom already confirmed elsewhere
in this function (`DECOMP_RULES.md` rule 6). That's simply because, by the
time `has_right` is computed, `r4`-`r7` are already fully committed
(`r4`=`tile_x`, `r5`=`tile_y+1`, `r6`=TL address, `r7`=`has_bottom`) -- **all
four low callee-saved registers are simultaneously live at that point**,
leaving no free register for a fifth value (`has_right`), so it goes to the
stack by simple exhaustion, not by any interaction with the BL/TR call
boundary. Independently reproduced this exact 4-way full commitment of
`r4`-`r7` with the quicktest harness (see below) -- confirms the read, not
new information on its own.

Symmetric check on the TR-to-BR span (the other side of the lead): also
walked instruction-by-instruction (`.L0804E54E`+13 through the BR block's own
`bl CpuFastSet`). Same result -- nothing there touches `r4` either. The
`ldr r2, [sp, #0x84]` reload of `tile_x` for BR's address calc is the FIRST
thing in the BR block itself, immediately preceded only by `mov r0, r8; muls
r0, r5, r0` (both `r8` and `r5` read directly from their still-resident
registers, no reload) -- i.e. even at the point of use, two of the three
operands needed for the exact same formula are trusted from registers and
only `tile_x` specifically is forced through memory, with literally nothing
distinguishing its live range from `r5`'s or `r8`'s in the intervening code.

### Empirical test: does a C shape matching this description actually reproduce the gap?

Reconstructed the function fresh a third time (independently of both round
6's and round 7's now-deleted `.cc` files, written directly from the
disassembly read above) via the quicktest harness
(`arm-none-eabi-cpp | agbcp -O2 -fhex-asm | as`, `EC u32
func_0804E4AC(u32 dims, void * dest, u32 x, u32 y, u32 code)` matching the
signature already established in `src/code_0804E8F0.cc`'s forward
declaration). **Result: 120 instructions vs the original's 121, same exact
single missing `str` (the `tile_x` definition-site spill) -- third
independent confirmation of the identical near-miss** (round 6: 249/250 vs
250; round 7: 120/121; this round: 120/121, same instruction). Automated
mnemonic-sequence diff (`diff -u` over normalized objdump output, `@`-comment
and branch-target-label noise stripped) confirms the divergence starts and
ends at exactly the same point rounds 6/7 already characterized: no new
divergence anywhere else in the function.

Two additional targeted probes this round, both negative:

1. **Swapped declarative order** (`width_tiles`/`height_tiles` computed
   before `tile_x`/`tile_y`, instead of after): changes which variable lands
   in a low vs high register (as round 6 already found), but this time
   produced a WORSE result -- 118/121 instructions, because the swap
   happened to let the allocator avoid needing a stack slot for `tile_x`
   *at all* (no spill, no reload, straight register reuse through to BR).
   This is actually informative: it shows the "extra" `str`+`ldr` pair in
   the original is not a fixed tax paid by `tile_x` regardless of
   allocation -- it can be avoided ENTIRELY by a different but equally
   literal ordering, which means the original's choice to pay it is a real,
   specific allocator decision, not an unavoidable consequence of the
   variable's live range. Reverted immediately (back to the 120/121
   baseline).
2. **Forcing a memory-mediated read of `tile_x` specifically at the BR site**
   via `u32 volatile * px = &tile_x; ... *px ...`: produced a MUCH worse
   result (132 instructions, extra stack traffic for the pointer itself,
   different stack frame size) -- taking the address of `tile_x` changes its
   storage class enough that agbcp reserves it a real stack slot for its
   *entire* lifetime and adds address-computation overhead nowhere present
   in the original. Confirms this isn't a viable lever either: whatever
   causes the original's spill, it isn't something reachable by any
   deliberate C-level "make this go through memory" idiom tried so far
   (this round's `volatile u32 tile_x` from round 7 already ruled out the
   blanket form; this round's address-taken form rules out the targeted
   form too). Reverted immediately.

### Conclusion: this specific lead is closed

The round 7 recommendation ("check precisely what's between BL and TR") has
now been followed to the instruction level on both sides (BL-to-TR and
TR-to-BR) and the answer is unambiguous: **nothing in either intervening
span references `tile_x` (or the registers it competes with) at all** --
there is no side effect, no intermediate call touching r4, no memory write
that would give a principled reason for the original compiler to distrust
`r4`'s contents specifically at the BR site while trusting `r5`/`r8`
(carrying the same-shape live ranges) at the identical point. Combined with
round 7's finding that *articially adding nesting* also fails to reproduce
it (and instead spills a different, unrelated variable), the most
defensible remaining explanation is a narrow, two-pass allocator artifact
internal to `agbcp` (ex: a stack slot reserved conservatively at
definition-time by an early pass, before the allocator has seen the whole
function, then opportunistically consumed by a later pass at whichever
particular use site its own bookkeeping picks -- plausibly the textually
LAST use in program order, which `tile_x`'s BR reference is) rather than
anything expressible as a deliberate, motivated C source shape. This is not
new information different in kind from round 7's conclusion, but it removes
the one specific lead round 7 left open, closing the identified path to a
3rd documented dead end.

### Recommendation

This function has now had **three separate serious attempts** (round 3:
total failure, 20 bytes short from the first instruction; round 6: shape-hunt
converged to a 1-instruction/2-byte gap; round 7: nesting-depth hypothesis
tested and closed; round 8/this round: the "between BL/TR" lead tested and
closed, plus two fresh negative probes) all converging on the exact same
2-byte gap, from three independently-written C reconstructions. Per
`DECOMP_RULES.md`'s own register-pressure-class rule ("ne pas re-tenter cette
classe sans budget de plusieurs rounds dédiés"), this function should now be
**formally retired from the priority list**, not just deprioritized --
there is no further untested lead identified across three rounds of
dedicated attention, and the remaining candidate explanation (an internal
two-pass spill-slot artifact of `agbcp` itself) is not something a C source
reformulation can address in principle, similar in spirit (though not
mechanism) to the `Unpack` "ABI partagée entre `bl`" class already retired
outright. `func_0804E5AC` (the recolor sibling) was not attempted, consistent
with round 6's note that it would very likely hit the identical wall.
**Recommendation: do not schedule a 4th round on `func_0804E4AC`/
`func_0804E5AC` without a genuinely new idea not already covered by the four
rounds' combined notes** (rounds 3, 6, 7, 8) -- if a future session wants
this function anyway, the one thing NOT yet tried is inspecting whether
`StanHash/fomt`'s own upstream Ghidra decompilation (if it exists for this
address) shows a source shape none of the four independent reconstructions
here have considered, rather than continuing to shape-hunt blind.

### Repo state at end of round 8

- Working tree clean throughout (`git status --short` empty at start and
  end); no `src/`/`asm/`/`fomt.lds` files touched at any point, all
  iteration in `/tmp/fomt-w16-drawglyph-scratch/` (session-unique scratch
  path, per the `/tmp/qt.s` collision trap already documented in
  `DECOMP_RULES.md`).
- No commits touching `src/`/`asm/`/`fomt.lds` -- nothing matched
  bit-exact, nothing committed there, per discipline. This documentation
  update (`SESSION_NOTES.md`) is the only change in this worktree.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin.

## Round 8 (worktree w15) -- func_08004C68 callee sweep

### Goal

Assigned mission: work through `func_08004C68`'s 12+ still-undecompiled
callees (per round 6's priority list -- the text-capture widget family
`func_08007078`/`func_080070D4`/`func_08007110`/`func_080070A4`, the
confirm-screen family `func_0800598C`/`func_08005A00`/`func_08005A3C`/
`func_080059D0`, the selector-widget family `func_0806E9D8`/
`func_0806EA30`/`func_0806EA6C`/`func_0806EA00`, and the 3 hardware
callees `func_08008980`/`func_08008DB8`/`func_08008A68`), then re-attempt
`func_08004C68` itself once enough callees are resolved.

### 7 new matches this round (10/15 of the tracked callee list now done)

Confirmed bit-exact via clean rebuild + `make compare`, one commit each
(2 commits bundle 2 functions where a single monolithic-file split made
them land together atomically -- see commit messages):

| function | role | commit |
|---|---|---|
| `func_0806EA6C` | selector-widget byte getter, `*(self+4)+0x448` | `95de198` |
| `func_08007110` | text-capture-widget pointer getter, `*(self+4)+0x461C` | `bbf7765` |
| `func_08005A3C` | confirm-screen-widget byte getter, `*(self+4)+0x1A76` | `476d93c` |
| `func_08007078` | text-capture-widget constructor (dtor `func_080070A4`) | `476d93c` |
| `func_0800598C` | confirm-screen-widget constructor (dtor `func_080059D0`) | `9c50133` |
| `func_0806E9D8` | selector-widget constructor | `9c50133` |
| `func_08008DB8` | `m4aSongNumStartOrChange` u16-truncating wrapper | `b7e035a` |

**New pattern confirmed**: all 3 widget families (text-capture, confirm-
screen, selector) share the exact same **placement-constructor shape**
already established structurally by the "richer destructor" family, just
mirrored for construction instead of teardown: `*self = vtable_unk_ADDR;
void *obj = operator new(SIZE); obj = InitFn(obj, ...args); *(self+4) =
obj; return self;`. Verified identical byte-for-byte shape across all 3
constructors (`func_08007078` size `0x4640`, `func_0800598C` size
`0x1A78`, `func_0806E9D8` size `0x454`), only the vtable constant, alloc
size, init-callee name/arity, and argument count/stack-passing differ.
**Generalizable**: any future "constructor of a `self+4`-child-teardown
family" member likely follows this exact shape -- write it first, verify
size, done, no shape-hunting needed.

**Getters generalize too**: 3 of the 4 byte/pointer getters ported this
round (`func_0806EA6C`, `func_08007110`, `func_08005A3C`) are all the
literal one-liner `*(u8|void*)((char*)(*(void**)(self+4)) + OFFSET)` --
zero iteration needed, first quicktest pass matched every time.

### Mechanical trap re-confirmed: literal pool vs trailing unlabeled
bytes when splitting a monolithic `.s` file mid-function

Hit once this round (`func_08005A3C`/`func_08007078` split of
`asm/code_08005A00.s`), cost one wasted `make compare` cycle (caught
cleanly, no broken commit): the sequence after a mid-file target
function's own body is often **two distinct things back to back** --
(1) the target's OWN literal pool (a `.LADDR: .4byte ...` label whose
address is the function's own tail, already fully reproduced by the C
port's compiler-generated pool) and (2) separately, **unlabeled raw
Thumb bytes belonging to an uncatalogued NEXT function** (no
`thumb_func_start`, just `.byte` dumps -- same phenomenon already noted
round 7 for `0x08010F14`). **When cutting the "everything after the
target" chunk into the new split file, start strictly AFTER the
target's own literal-pool label, never at or before it** -- including
that label duplicates 4 (or more) bytes that the ported C already
emits on its own, shifting every following address by exactly that
much and producing a huge cascading `bindiff.sh`/`asmdiff.sh` diff that
looks unrelated to the actual (small, correct) function content. Size-
check rule already in `DECOMP_RULES.md` ("vérifier taille puis
contenu") catches this immediately (`readelf -S` on the ported `.o`
matches the port's own expected size; the diff is entirely downstream).
**At least 3 of these uncatalogued uninitialized-function tails were
seen again this round** (`asm/code_0800711C.s`, inside
`asm/code_08005A58.s` right after `func_08005A3C`'s pool, inside
`asm/code_08008DE8.s` right after `func_08008DB8`) -- all left
untouched/unlabeled, out of scope for this round's mission, flagged for
whoever eventually catalogues the full symbol table.

### Genuinely NOT converged this round: the "SmartPtr field assignment"
shape (`func_080070D4`, `func_08005A00`)

These two functions (identical shape, only the opaque init callee
differs -- `func_08005B68` vs `func_080050F8`) are called by
`func_08004C68` between/after each of the 3 name captures to store the
freshly-built widget's result into the sequence's own state object.
Disassembly (`asm/code_080070D4.s` before this round's split, 33
instructions):

```
push {r4, lr}; sub sp, #0xc
adds r4, r0, #0            @ r4 = field (param0 -- address of a SmartPtr<T>-shaped slot)
ldr r1, [r1, #4]             @ r1 = *(param1 + 4)
mov r0, sp
bl func_08005B68               @ func_08005B68(&sp[0], r1) -- fills sp[0] via hidden-ptr/out-param convention
ldr r2, [sp]                     @ r2 = sp[0]
mov r0, sp
str r0, [sp, #4]                   @ sp[4] = &sp[0]        <-- reference/alias slot, see below
str r2, [sp, #8]                     @ sp[8] = r2 (raw copy)
adds r1, r0, #0                        @ r1 = &sp[0]
movs r0, #0
str r0, [r1]                             @ sp[0] = 0 (through the alias)
str r2, [r4]                               @ *field = r2
ldr r1, [sp]                                 @ r1 = sp[0] (== 0)
cmp r1, #0; beq skip
    ldr r0,[r1]; ldr r2,[r0,#8]; adds r0,r1,#0; movs r1,#3; bl _call_via_r2   @ vt[2](r1, 3) -- provably dead, r1==0
skip:
adds r0, r4, #0; add sp, #0xc; pop {r4}; pop {r1}; bx r1
```

**What's established with confidence** (structural, from the bytes
alone): this is `SmartPtr<T>`-shaped teardown logic identical in kind to
the already-matched "richer destructor" family's child teardown
(`if (child) { vt = *(void***)(child+4)... ` -- except here the check
is on OFFSET 0 of the checked pointer, not offset+4, meaning whatever
type is being torn down here has its OWN vtable at offset 0, i.e. is a
"normal" single-inheritance polymorphic object, not a multi-inheritance
child like the destructor family's). The `if (r1 != 0) vt[2](r1, 3)`
tail is `SmartPtr<T>::~SmartPtr()`'s `delete inner;` compiled out, and
it fires on a value **already known to be exactly 0** at that point in
straight-line control flow -- meaning agbcp did NOT eliminate this
dead branch (contrary to what happens when the same "if (x) ...;
x=0;"-then-later-"if(x)" shape is written directly in hand-rolled C --
confirmed by testing, see below).

**What was tried, and why each attempt failed to reproduce this exact
shape**:

1. Hand-rolled C with an explicit `if (rhs.inner != nullptr) { ... }`
   after nulling `rhs.inner` directly in a local `struct { void
   *inner; }`: **agbcp folds the dead branch away entirely** (15
   instructions produced vs. 33 expected) -- confirms agbcp DOES do
   this one narrow dead-code elimination when the whole chain (null-
   write, then read, then compare) is visible in one un-indirected
   local variable within a few straight-line statements. This directly
   contradicts the general "agbcp is weak/non-optimizing" prior from
   `DECOMP_RULES.md`'s anti-pattern list -- **that prior needs
   qualifying**: agbcp is weak on arithmetic/bitfield peepholes and
   branch restructuring, but DOES do at least this one simple same-
   variable dead-store-then-dead-load elimination. Not yet understood
   exactly how narrow this optimization is (single local, single basic
   block? more?) -- would need a dedicated micro-benchmark round to
   characterize.
2. `*field = func_08005B68(arg).Move()` (using the real
   `SmartPtr<T>::Move()` from `include/smart_ptr.hh`, letting the
   compiler-generated destructor of the anonymous temporary do the
   dead check implicitly instead of a hand-written `if`): **still
   folded away** (16 instructions) -- so it's not specifically the
   *hand-written* `if` that's optimized; implicit compiler-inserted
   destructor calls on a temporary get the same treatment when the
   temporary's nulling and the destructor check are both in the same
   local scope with nothing else observably touching the slot's
   address in between.
3. `SmartPtr<T> tmp(func_08005B68(arg));` (naming a local initialized
   directly from another function's SmartPtr-by-value return):
   **does not compile** -- hits the already-documented private-no-op-
   copy-ctor trap (`DECOMP_RULES.md`, "Piège `SmartPtr<T>`"), confirmed
   to also apply to plain local-variable initialization, not just
   `return` statements as previously documented. **Extending that
   rule**: `SmartPtr<T> local(FunctionReturningSmartPtrByValue());`
   NEVER compiles under this codebase's `SmartPtr<T>`, regardless of
   context (return statement, local init, or reference-parameter
   binding, see attempt 4) -- only construction from a raw `T*` (the
   explicit ctor) is legal for naming a local.
4. Two-step version with a custom local class exposing
   `operator=(MySmartPtr &rhs)` (hypothesis: the "reference alias"
   slot at `sp+4` in the target is the machine-level trace of a
   reference PARAMETER of an inlined `operator=(SmartPtr&)`, which
   would explain why the null-check survives -- writes through an
   *aliasing pointer* the narrow peephole from attempt 1 can't see
   through): **does not compile**, `agbcp` rejects binding a non-const
   reference parameter directly to an rvalue temporary
   (`func_08005B68(arg)` used directly as the argument expression) --
   this IS standard-conforming C++ (pre-C++11, no rvalue refs), so this
   avenue requires a named lvalue temporary bound to the reference,
   which reopens attempt 3's private-copy-ctor wall for any SmartPtr-
   typed named local initialized from a SmartPtr-by-value return.

**Honest state**: not converged, no working hypothesis left untested
that doesn't hit one of these two walls (dead-code folding when
straight-line, or a compile error when routed through a reference/named
copy). The `sp+4`/`sp+8` "store address-of-self then store value-copy"
double-write immediately after the `func_08005B68` call is the one
piece of the disassembly not yet explained by ANY tested hypothesis --
worth a fresh angle next round: possibly a *by-value* struct-return
convention detail specific to a 2-word type (not `SmartPtr<T>`'s 1
word) that has been misidentified as `SmartPtr<T>`-shaped, or a
different helper class entirely (e.g. an iterator/reference-counted
handle used only for this specific field-assignment idiom, not the
same `SmartPtr<T>` used everywhere else in this repo). **Classifying
this as a new, distinct difficulty class from both "register pressure"
and the already-documented `SmartPtr<T>` return-statement trap** --
recommend a dedicated round with budget to test 3-4 more C++ shape
hypotheses before falling back to "infeasible in C" the way `Unpack`
was, which has NOT been established here (unlike `Unpack`, nothing
here violates the ABI itself -- this is a shape-hunting problem, not a
structural one).

### Not attempted this round (budget)

- `func_0806EA30` (selector-widget setter counterpart to
  `func_0806EA6C`'s getter): calls `func_0806DB38` first, which is a
  genuine "register pressure" class function (`r8`+`sb`+`sl` used in
  its body, ~180+ lines, multiple nested calls) per the existing
  `DECOMP_RULES.md` classification -- **not attempted**, flagged
  consistent with that class's "don't retry without dedicated budget"
  rule. Note `func_0806EA30` ITSELF might still be portable calling
  `func_0806DB38` as an opaque callee (same trick used throughout this
  round for other opaque `InitFn`s) -- worth a quick, cheap try next
  round even without decompiling `func_0806DB38`'s body, since only
  `func_0806EA30`'s OWN shape matters for a match, not its callee's.
- `func_08008980` (hardware.s, `sb`/`r8` used in its own prologue --
  register-pressure signal) and `func_08008A68` (hardware.s, shorter,
  not yet disassembled in full) -- not attempted, no budget left this
  round. `func_08008980` should be treated with the same caution flag
  as `func_0806EA30` (register-pressure signature present) before
  attempting; `func_08008A68` looked short in a first glance and may be
  tractable -- good first candidate for whoever picks this up.
- `func_08004C68` itself: **NOT attempted this round.** With 10/15
  callees now resolved (bit-exact matched or already-matched before
  this round) and 5 still open (2 in the newly-characterized "SmartPtr
  field assignment" class directly blocking two of the three name-
  capture call sites, 3 not yet attempted), and given round 6's prior
  finding that the full ~150-instruction port ALSO needs to resolve the
  double-vtable-stamp-via-genuine-subclass question (`SmartPtr<T>`
  return trap) independent of the callee signatures -- judged, honestly,
  still out of reach of a single round's budget. Recommend: close the
  remaining 5 callees (or at least establish firm prototypes for all of
  them, which does NOT require their bodies to be bit-exact-ported,
  only correctly shaped extern declarations) before the next
  `func_08004C68` attempt.

### Repo state at end of round 8

- 7 new commits (`95de198`, `bbf7765`, `476d93c`, `9c50133`,
  `b7e035a`, see table above -- 2 of the 7 matched functions are
  bundled into 2 of these commits since a single monolithic-file split
  produced both atomically).
- `make compare` bit-exact (`sha1sum -c fomt.sha1` -> `Réussi`) on a
  full clean rebuild after every commit in this round, no exceptions.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. No concurrent-session activity observed (other
  worktrees `w16`/`w17` mentioned as active in parallel on unrelated
  targets, per the mission brief -- no interference seen in `git log`).

## Round (worktree w20, isolated, branche `parallel-20`) -- chasse "méthode
sœur" par classe déjà matchée, 1 match, 1 near-miss documenté, 2 cibles
écartées par pré-évaluation de risque

Méthodologie demandée : plutôt que de choisir une cible au hasard dans
`asm/*.s`, partir des classes qui ont DÉJÀ au moins une méthode matchée
(`include/*.hh` + `src/*.cc` correspondant) et chercher des `func_ADDR`
sœurs, encore en asm, proches en adresse ou listées dans le même header.

### Étape 1 -- scanner tous les `include/*.hh` ayant un `src/*.cc` pour des
déclarations non matchées

Premier script (naïf, cherchant des motifs `Classe::Méthode` absents du
`.cc`) a produit une quinzaine de "gaps" apparents (`actor::GetMap/GetX/
GetY`, `entity::GetQ16X/...`, `field::PlotAt/PutAtRandom/RandThing/...`,
`farmer::func_0800Exxx` x50, `held_item::func_0800Fxxx` x5,
`script_engine::Clear/OnCall/Pop/Top`, `scene::~AScene/~AUnk_0800080C/
SceneMain`). **Tous se sont révélés faux positifs sauf un**, pour deux
raisons distinctes :
- Beaucoup de méthodes courtes sont **inline dans le header lui-même**
  (`actor.hh`, `entity.hh`, `field.hh`) -- mon grep sur `.cc` ratait ces
  définitions puisqu'il n'y en a pas, le corps vit entièrement dans le
  `.hh`. Un script plus robuste doit vérifier l'inline AVANT de conclure
  à un gap.
- L'idiome `EC RetType func_ADDR(...)` (fonction libre, pas méthode `::`)
  est très utilisé (`farmer.hh`, `held_item.hh`) -- mon premier script ne
  cherchait que le motif `Classe::Nom`, qui ne matche jamais ce style.
  **Second script, correct** : extraire tous les `func_[0-9A-F]{8}` du
  `.hh` et du `.cc` et faire un `comm -23` -- résultat : **zéro gap** sur
  la totalité des paires `.hh`/`.cc` existantes pour cet idiome. Autrement
  dit, toutes les classes ayant une paire `.hh`/`.cc` dans ce dépôt sont
  déjà complètes pour leurs fonctions libres `func_ADDR` déclarées en
  header (`HeldItem`, `Farmer`, etc. sont donc **entièrement matchées**,
  pas des cibles).

Seul gap réel trouvé par ce balayage complet : `SceneMain` (`scene.hh`
ligne 23, `void SceneMain(SmartPtr<AScene> scene_ptr);`) -- un vrai nom
sémantique (pas `func_ADDR`), jamais implémenté, à côté de deux
destructeurs déjà matchés dans le même fichier (`AScene::~AScene`
= `func_080007EC`, `AUnk_0800080C::~AUnk_0800080C` = `func_0800080C`),
exactement le patron "méthode sœur" recherché.

### Étape 2 -- balayage complémentaire des déclarations `extern`/`EC`
locales dans `src/*.cc` sans `.hh`

Un second grep (`func_[0-9A-F]{8}\(.*\);$` sans `ALIAS`) sur tous les
`src/*.cc` a listé les callees encore non portés référencés en avant :
la quasi-totalité sont des callees **déjà matchés ailleurs dans ce dépôt**
(le fameux `func_080007EC`/destructeur commun à toute la famille "riche").
Candidats réellement non matchés identifiés : `func_0803DA24`
(`data_schedules.cc`), `func_0805E860`/`func_080AC070`
(`entity_actor.cc`), `func_080D6D98` (`hardware.cc`), `func_08034F00`/
`func_08035380` (`npc_entity.cc`). `func_08034F00` s'est avéré un faux
positif de plus : déjà implémenté en `NAKED` inline asm directement dans
`npc_entity.cc` (juste jamais visible via `thumb_func_start` dans
`asm/*.s` puisqu'il n'y est plus).

### Match : `func_080D6D98` -- initialiseur de free-list du pool
d'entrées hardware

**Commit `a3343...` (voir `git log`).** Fonction minuscule (16
instructions, uniquement `r0`-`r3`, aucune pression de registres),
directement adjacente à `func_080D6D8C`/`func_080D6DB8` à l'intérieur de
la section linkonce `.text.code_080D68C0` (`asm/code_linkonce.s`).
Contexte immédiatement disponible côté appelant déjà matché
(`src/hardware.cc` : `unk_00 = func_080D6D98(unk_04, 0x10, 0);`, à
rapprocher de `FreeEntry`/`AllocEntry` déjà portés dans la même classe) --
confirme le principe de départ de cette session (méthode sœur d'une
classe déjà comprise = cible plus sûre). Sémantique reconstituée sans
ambiguïté depuis le désassemblage seul : construit en place une liste
chaînée descendante sur `self[0..num)`, terminée par `val` (`nullptr` au
site d'appel), et retourne `self[0]` (tête de la free-list) -- exactement
le pattern attendu d'un initialiseur de pool à listes libres. Forme C qui
a matché du premier coup à l'instruction près SAUF l'ordre d'évaluation :

```c
Unk_hardware_ent_080D6D98 * ent = self + (num - 1);   // PAS (self + num) - 1
```

`self + num - 1` (parsé `(self+num)-1` en C, associativité gauche standard)
compile un `adds` avant le `subs` ; le désassemblage cible fait le
`subs #4` AVANT le `adds` -- seule la parenthèse explicite `self + (num -
1)` reproduit cet ordre. Petit ajout à noter à côté de la règle #5 déjà
connue (ordre des statements = ordre des instructions) : **ça s'applique
aussi à l'ordre des SOUS-EXPRESSIONS à l'intérieur d'une même expression
arithmétique**, pas seulement à l'ordre des statements entiers. Découpage
de la section linkonce fait selon la méthode déjà documentée (fichier
`asm/code_080D6DB8.s` créé pour la partie après la fonction portée,
`fomt.lds` mis à jour en gardant les wildcards `*(.gnu.linkonce.t...)`
APRÈS les nouvelles entrées, cf. piège déjà documenté). `make compare`
bit-exact confirmé sur rebuild propre x2 avant commit.

### Near-miss documenté, NON commité : `SceneMain` (`func_0800082C`,
`asm/scene.s`)

Pas de pression de registres (`r4`-`r7` seulement, prologue simple) --
ne relève PAS de la classe "pression de registres" déjà fermée. Mais
c'est le **premier vrai consommateur de `SmartPtr<T>` par assignation**
dans ce dépôt (jusqu'ici `SmartPtr<T>` n'était utilisé que côté retour de
valeur, cf. piège déjà documenté sur le ctor de copie privé/no-op) --
aucun idiome établi pour `scene_ptr = nullptr;` / `next = other.Move();`
enchaînés. Reconstruction sémantique de haut niveau réussie (boucle sur
`scene_ptr.Get()`, `Run()` -> `SmartPtr<AUnk_0800080C> next`, puis si
non-null `vfunc_0C()` -> nouveau `scene_ptr`, sinon la boucle se termine)
et confirmée cohérente avec le désassemblage instruction par instruction
(les 4 blocs de destruction gardés par test nul correspondent exactement
aux destructions temporaires de `SmartPtr` attendues à chaque point de
séquence). **Mais la taille ne matche pas** : meilleure variante
obtenue = 202 octets compilés contre 230 octets cible (-28 octets,
~12-14 instructions manquantes), toutes les variantes testées (next/
result nullifiés dans des ordres différents, extraction du pointeur brut
dans une variable nommée séparée avant reconstruction) gardent une
frame de pile à 3 emplacements (12 octets, `sp+0/+4/+8`) alors que la
cible en utilise 7 (28 octets, jusqu'à `sp+0x18`) -- signal clair qu'il
manque des temporaires/objets locaux distincts dans ma reconstruction,
pas juste un problème d'ordre. Piste non testée avant d'arrêter (budget
de cette session épuisé sur cette cible) : la paire d'emplacements
`(adresse, valeur)` stockée deux fois dans le désassemblage cible
(commentaires d'origine `@ (&var_04, var_04)`) suggère que `Move()`
n'est PAS inliné directement au site d'appel mais passe par un chemin
qui matérialise À LA FOIS le pointeur `this` de l'objet temporaire ET sa
valeur extraite dans des emplacements distincts et PERSISTANTS (pas
réutilisés) -- peut-être un idiome différent de `.Move()` pour ce genre
d'assignation en chaîne (`operator=` prenant une référence plutôt qu'un
raw pointer, actuellement absent de `smart_ptr.hh`), ou bien `SmartPtr`
lui-même n'a pas exactement le layout/l'API supposée ici (rappel :
`smart_ptr.hh` porte deux `// TODO` sur ce point précis, dont un
directement sur `Move()`). **Ne pas re-tenter sans revoir d'abord
`smart_ptr.hh` lui-même** plutôt que de continuer à shape-hunter le
site d'appel -- cohérent avec la règle déjà connue "un near-miss d'1
registre sur un CALL vers une fonction/classe déjà supposée correcte
vient souvent du CALLÉ, pas de l'appelant", ici appliquée à un TYPE
(`SmartPtr<T>`) plutôt qu'à une fonction. À noter : `func_08004C68`
(round 6, non convergé) touche aussi `SmartPtr<T>` -- deuxième signal
indépendant que l'abstraction `SmartPtr<T>` telle qu'actuellement écrite
dans ce dépôt n'est peut-être pas encore tout à fait le bon modèle.
Fichiers de travail laissés uniquement dans le scratchpad de session
(jamais dans l'arbre de travail), `git status` vérifié propre avant
d'arrêter cette piste.

### Cibles écartées par pré-évaluation de risque (pas tentées)

- **`func_08035380`** (`asm/code_entities_08034CEC.s`, déclarée mais non
  définie dans `npc_entity.cc`) : prologue `push {r4,r5,r6,r7,lr}; mov
  r7,sl; mov r6,sb; mov r5,r8; push {r5,r6,r7}` -- signature exacte de la
  classe "pression de registres" déjà fermée (4/4 échecs cette nuit),
  fonction de surcroît volumineuse (~757 lignes de `.s`). Écartée sans
  tentative, cohérent avec la discipline de ne pas retenter cette classe
  sans idée nouvelle.
- **`func_0805E860`** (`asm/code_0805E760.s`, déclarée dans
  `entity_actor.cc`) : PAS dans la classe "pression de registres" (`r0`-
  `r4` seulement, 16 lignes, cible de taille comparable à
  `func_080D6D98`). Écartée pour une raison DIFFÉRENTE : elle dépatche un
  appel virtuel (`_call_via_r3`, slot vtable +0xC) sur un pointeur lu à
  `self+0`, où `self` est `SpriteAnimator*` -- mais `SpriteAnimator`
  (`include/unknown_types.hh:122`) est actuellement un simple
  `STRUCT_PAD(0x00, 0x14)` opaque, ses champs réels (dont ce pointeur
  vtable-isé à l'offset 0, et la nature du retour struct-par-valeur de
  8 octets consommé) ne sont PAS caractérisés. Cf. règle déjà connue :
  ne jamais deviner le layout d'un champ enfant avant de le caractériser
  côté dépôt patch (Ghidra) -- risque sémantique, pas risque de forme/
  pression de registres, donc pas couvert par le tri "compte les
  registres hauts" habituel. Écartée sans tentative faute de
  caractérisation préalable du type `SpriteAnimator`/de l'objet pointé.

### Repo state en fin de session (worktree w20)

- 1 commit (`func_080D6D98`), vérifié bit-exact via rebuild complet +
  `make compare` deux fois (avant et après le commit).
- `git status --short` propre après le commit.
- Aucune modification laissée en cours sur `SceneMain` (piste non
  convergée, aucun fichier `src/`/`asm/`/`fomt.lds` touché pour cette
  cible, toute l'itération faite dans le scratchpad de session).
- `origin` non touché, rien poussé, pas de PR.

## 2026-08-20, round 9 (worktree `w18`, branch `parallel-18`) -- systematic
scan for more hidden `.byte` blobs: 5 blobs found and matched, 17 functions
total

Brief for this round: generalize the round 8 (`func_08010F14`) discovery
into a *method* -- write a script to scan the whole `asm/*.s` tree for
short, unlabeled `.byte` data blobs squeezed between two real functions,
verify each candidate by hand-disassembly + xref + compile before trusting
it, port and match the best 2-3, document the rest (found and discarded
alike).

### Method (script: `tools/scripts/scan_hidden_code_blobs.py`)

Parses every `asm/*.s` file into column-0-label-delimited blocks, flags a
block as a genuine function only if a `thumb_func_start NAME` directive
sits immediately before its `NAME:` label (a real parser bug here cost an
hour: `thumb_func_start` almost always appears as the *tail* of the
PREVIOUS block's raw lines, not as a "preceding directive" of the new
block, because this is a line-based parser and the directive line is
textually still part of the block that hasn't ended yet -- fixed by having
`block_is_function` also scan the tail of the previous block, see the
script's docstring/comments), then looks for blocks that are 100% `.byte`
directives (no mnemonics, no `.4byte` -- `.4byte` is this codebase's
convention for genuine literal-pool/pointer constants, `.byte` is reserved
for genuinely undecoded raw bytes), 4-40 bytes long (1-2 Thumb instructions,
with slack for a small cluster of back-to-back tiny functions like the
`0x0800057C` case below), sitting between two real function blocks (walking
back past pure `.4byte` literal-pool blocks to find the "real" previous
neighbor). For each candidate it hand-decodes every 16-bit halfword with a
small partial Thumb decoder (covers all the common formats: data
processing, branches, load/store, push/pop, hi-reg/bx) and flags it
"plausible" only if every halfword decodes to a *known* Thumb encoding and
the last one is a branch/`bx` (a real function-ending shape) -- this is a
strong filter, not a proof; the real proof step (unchanged from round 8) is
always disassemble-by-hand -> compile via the quick harness -> compare
bytes, done for every candidate below before touching the tracked tree.

The script also separately reports (a) files that are 100% raw `.byte` with
*zero* `thumb_func_start` at all (`asm/code_080101A0.s`, ~424 bytes) -- a
fundamentally different, much bigger phenomenon (an entire never-split
region, not a hidden gap inside an otherwise-processed file), explicitly
out of scope for this round's "hidden short blob" signature and not
investigated further; and (b) larger (>40 byte) blobs matching the same
"sandwiched between two real functions" shape but not auto-verified
(false-positive risk from coincidental literal-pool bytes rises with size)
-- a worklist for a future round, not a set of confirmed finds.

### Candidates found and matched (4 blobs, all bit-exact)

1. **`func_0800711C`** (`asm/code_080070D4.s`, 12 bytes, right after
   func_08007110's own literal pool, right before the already-ported
   func_08007128) -- `return (char*)self + 0x461C;`, the same constant
   func_08007110 (the function right before it) adds after dereferencing
   `self+4`. Committed `4329ae7`.
2. **`func_0800057C`/`func_08000580`/`func_08000584`/`func_08000590`**
   (`asm/interrupt.s`, 32 bytes total, right after func_08000568, right
   before the already-ported `src/new.cc`) -- four tiny functions: two
   identical placement-new-shaped stubs ("ignore arg0, return arg1",
   matching the inline `operator new(size_t, void*)`/`operator
   new[](size_t, void*)` bodies declared in `tools/libagbc++/new`) and two
   forwarding thunks to the already-ported `operator new`/`operator delete`
   (linked as `__builtin_new`/`__builtin_delete`), byte-identical in shape
   to `__builtin_vec_new`/`__builtin_vec_delete` already compiled elsewhere
   inside `src/new.cc` itself (`nm build/src/new.o` offsets 0x48/0x78) --
   confirms agbcp does not fold/dedupe identical compiler-generated bodies
   across translation units, so multiple TUs each get their own private
   copy. Committed `7fd2ab1`.
3. **`func_080099EC`/`func_08009A04`/`func_08009A2C`/`func_08009A38`**
   (`asm/hardware.s`, 92 bytes total, right after func_080099D4, right
   before the already-ported `Farm::Farm(char const*)`) -- two constructors
   stamping already-known, heavily-referenced vtables
   (`vtable_unk_080E5BB4`/`080E5BD8`/`080E5BE8` from `asm/vtables.s`, used
   at dozens of still-unported call sites across the tree) onto raw offsets
   of an uncharacterized object (no site referencing those vtables is
   ported anywhere else yet, so ported as raw pointer arithmetic, not an
   invented C++ class -- same discipline as the "family riche" destructors,
   `src/code_0800371C.cc`), a matching "is this sentinel pair still in its
   constructed/empty state" predicate, and one unrelated leaf utility (a
   branchless nonzero-word predicate, `(neg(x)|x)>>31`, a GCC/agbcp idiom
   -- required writing the C literally as `u32 x = *(u32*)self; return
   ((u32)(-(int)x) | x) >> 31;` to get the exact register allocation;
   `x != 0` alone compiled to a branching `cmp`/`beq` shape instead, wrong
   instruction count). Committed `d417e87`.
4. **`func_080100F0`/`func_08010104`/`func_08010118`/`func_08010128`/
   `func_08010138`/`func_08010148`/`func_0801014C`** (`asm/game_scene.s`,
   104 bytes total, right after func_0801004C, right before the
   already-ported func_08010158) -- seven accessors, six reading the
   already-known global `gUnk_0300040C` (declared in
   `src/code_08011FE8.cc`) at various constant offsets, one a bare integer
   constant getter (`return 25;`). Strong coherence signal: func_08010158's
   own header comment already documents it as *clearing* this exact global
   in its destructor -- these are plausibly sibling accessors on the same
   object, though the class layout itself remains uncharacterized (ported
   as plain free functions, not methods). Committed `dc8fd26`.

Total: **5 blobs (`0x0800711C` counted separately from the other 4-blob
group above, since it was ported after the others -- see below), 17
hidden functions**, all verified byte-exact via the quick
compiler+assembler harness first, then via a full clean rebuild (`rm -rf
build fomt.gba fomt.elf fomt.map && make compare`, `sha1sum -c
fomt.sha1`) immediately before each commit, one blob per commit. No caller
found anywhere in `asm/`/`src/` for ANY of the 17 addresses (full-tree grep
negative on every one) -- same "no symbolic caller found" situation as
`func_08010F14` in round 8; not investigated further, out of scope for a
port+match round (would need a broader scan of jump/dispatch tables
elsewhere in the binary to explain how they're reached).

**Process note, told straight:** `func_0800711C` (item 1 above) was
actually the FIRST candidate found and hand-verified via the quick harness,
but got set aside mid-round while investigating the `code_080C7F00.s`
"Unpack family" false-positive (below) and the `0x0800057C` group, and was
never applied to the tracked tree in the moment. It only got caught and
finished because the scan script's `thumb_func_start`-adjacency bug (see
Method above) was found and fixed afterward, and a rerun of the corrected
script re-surfaced it as still-present. Lesson for future rounds: apply and
commit each verified candidate immediately, don't batch verification ahead
of application even under time pressure -- the fix-then-rerun catch this
time was lucky, not guaranteed.

### Candidate investigated and explicitly discarded: `code_080C7F00.s`
"Unpack family" blobs are real code, but already-diagnosed infeasible

The strict scan (correctly) never flagged these as candidates (their
"previous block" is a branch-target label containing real instructions,
not a `thumb_func_start`-marked function, so the adjacency filter excludes
them) -- found instead via manual inspection while eyeballing the medium-
size blob list. Several `.byte` blocks around `.L080D12D0`-`.L080D1426` in
`asm/code_080C7F00.s`, each sitting right after a `mov lr, pc; bx sb`
trampoline call, hand-decode as fully valid Thumb code (confirmed for one,
22 bytes at `.L080D137A`: `adds/lsls/bmi/lsls/add/strh/mov/cmp/bcc/pop
{r4}/bx r4` -- ends with the same `pop {r4}; bx r4` epilogue visible
elsewhere in the same function). These addresses (`0x080D1xxx`) fall
squarely inside the `Unpack`/body-mode bit-reader family that a prior
dedicated round (`worktree parallel-1`, see the "Classe de problème 'ABI
partagée entre `bl`'" section of `DECOMP_RULES.md`) already diagnosed as
**structurally impossible to port as C**: the bit-reader state is passed
in `r2`/`r3` across `bl` calls without reloading, violating the ARM/Thumb
calling convention itself, not just a stylistic quirk a C reformulation
could work around. This round's finding **confirms** that diagnosis
independently (real, valid, hand-written-style Thumb, not disassembler
noise) and additionally shows the family's code footprint is *wider* than
`DECOMP_RULES.md`'s existing location note suggested (previously pointed
only at `asm/code_809E804.s`, "around line 103423" -- also present, at
least in these trampoline-continuation fragments, in
`asm/code_080C7F00.s`). No action taken beyond documenting this -- per the
existing rule, this family is retired from the target list, not
re-attempted.

### Remaining leads for a future round (not pursued this round, budget/focus discipline)

- `tools/scripts/scan_hidden_code_blobs.py`'s "larger, not auto-verified"
  list: `asm/code_entities_08034CEC.s` `.L0803A804` (160 bytes, EOF-of-file
  after `func_0803A798`), `asm/code_08010F54.s` `.L08011ED8` (272 bytes,
  EOF-of-file after `func_08011DC4`), `asm/code_actor_0809BFE8.s`
  `.L0809E1B4` (288 bytes, EOF-of-file after `func_0809E1A4`). All three
  match the same "EOF of an already-processed file" shape that was real in
  all 4 short candidates matched this round -- good odds, but not
  auto-verified (size raises false-positive risk) and not manually
  disassembled this round. Next round should hand-decode these the same
  way before trusting them.
- `asm/code_080101A0.s` (424 bytes, ENTIRELY raw `.byte`, zero
  `thumb_func_start`) -- a different, bigger phenomenon (a never-split
  region, not a hidden gap), explicitly out of scope for the "hidden short
  blob" signature this round targeted. Would need the normal `asm/*.s`
  splitting method applied fresh, likely across multiple functions, not a
  quick single-blob port.
- Re-running `tools/scripts/scan_hidden_code_blobs.py` from a clean
  worktree after this round's 4 matches should print 0 short candidates
  (verified before writing this note) -- any that reappear in a future
  round are genuinely new, not something this round missed.

### Repo state at end of round 9

- Working tree clean after the last commit (`git status --short` empty,
  verified post-commit).
- Five new commits (`4329ae7`, `dc8fd26`, `d417e87`, `7fd2ab1`, plus the
  `tools/scripts/scan_hidden_code_blobs.py` addition) touching
  `src/`/`asm/`/`fomt.lds`/`tools/`, `make compare` bit-exact on a clean
  rebuild immediately before every commit that touched `src/`/`asm/`/
  `fomt.lds`.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. Worked alone in the isolated `w18` worktree per the
  round brief; did not touch anything outside the blobs listed above.

## Round 9 (worktree w21) -- func_08008980/func_08008A68 triage, 3 fresh
hypotheses on the "SmartPtr field assignment" shape (still not converged)

### Goal

Assigned mission (isolated worktree, solo on this repo): attack
`func_08008980`/`func_08008A68` (never disassembled before this round),
then bring genuinely new ideas to the `func_080070D4`/`func_08005A00`
"SmartPtr field assignment" shape blocked since round 8 -- re-reading
round 8's 4 documented hypotheses first, not repeating any of them.

### 1 new match: `func_08008A68`

Disassembled both hardware.s targets first to gauge complexity before
committing effort (per mission instructions):

- `func_08008980` (0x08008980): a big placement-style constructor --
  allocates a fresh 0x6c-byte object, wires up 6 sub-objects at offsets
  0x00/0x0c/0x1c/0x28/0x34/0x44 (each a `{0, 0, vtable}` triple, several
  cross-linked via pointers to each other), calls `func_080D78F8`,
  `func_08008D9C`/`func_08008D84`, and 3x `func_080095C0`, then stores
  the result at `*param0` and returns `param0`. **Confirmed
  register-pressure class**: uses `r4,r5,r6,r7,r8,sb,ip` simultaneously
  through the whole body (`mov sb,r0` and `mov r8,r1` both alive well
  into the function, `ip` also holds a live vtable constant across ~15
  instructions) -- matches `DECOMP_RULES.md`'s existing "pression de
  registres" class signature exactly. Also has a genuine, unexplained
  **double-vtable-stamp** on the sub-object at offset 0x0c (temp-stamped
  `vtable_unk_080E5BB4` via `ip`, then overwritten with
  `vtable_unk_080E5B90` before the object is otherwise touched) -- the
  same open "subclass override of a pure virtual method" question
  flagged in round 8 for `func_08004C68` itself, not resolved here
  either. **Not attempted this round** -- correctly flagged as
  high-difficulty in round 8, confirmed by direct inspection, out of
  reach without dedicated budget. Notably this function (and its 3
  siblings `func_08008444`/`func_080084DC`/`func_08008574`, all also
  still asm, all embedding a `bl func_08008980` at a fixed sub-offset
  0x490 inside their own even-bigger ~0x9B0-byte objects) is the true
  root allocator behind `AgbMain`'s and `func_0801004C`'s (a scene
  constructor, likely the game's top-level engine/HUD object) startup
  sequence -- a significant target, but not a quick one.

- `func_08008A68` (0x08008A68): teardown counterpart of `func_08008980`,
  called from the same 3 sites (`AgbMain`, `func_0801004C`,
  `asm/hardware.s` internally). Uses only `r4-r7`, **no `r8`/`sb`/`ip`**
  -- genuinely simpler, exactly as round 8's closing note predicted
  ("looked short in a first glance and may be tractable"). Matched on
  the first quicktest iteration: raw pointer-arithmetic port (no class
  invented, mirroring the "richer destructor" family's discipline),
  `void func_08008A68(void *field, unsigned int flags)` -- tears down
  the sub-object at `obj+0x34` (re-stamping the same two vtables
  `func_08008980` used there), calls the teardown counterparts of
  `func_08008980`'s own callees (`func_080D7944`, 2x`func_0800959C`,
  2x`func_080098AC`), deletes the object, and conditionally deletes
  `field` itself if `flags & 1`. Split out of `asm/hardware.s` (now
  ending at `func_08008DA8`, right before the already-split
  `code_08008DE8.s`); the tail becomes `asm/code_08008AE0.s`. One
  incidental fix needed: `__builtin_delete` isn't declared anywhere in
  this repo's headers (grep confirms zero prior use) -- `operator
  delete` (declared in `src/new.cc`) is the correct spelling, used
  instead. Verified bit-exact via clean rebuild + `make compare`,
  commit `2bab4c4`.

### `func_0806EA30` re-examined: confirmed to be the SAME "SmartPtr field
assignment" shape, not a separate register-pressure case

Round 8 filed `func_0806EA30` under "calls `func_0806DB38`, register
pressure class, not yet attempted" -- as a DIFFERENT open item from the
`func_080070D4`/`func_08005A00` "SmartPtr field assignment" class.
Disassembling it this round (`asm/code_0806EA30.s`, 33 instructions)
shows it is **byte-for-byte the identical instruction shape** as
`func_080070D4`/`func_08005A00`, only the opaque callee name differs
(`func_0806DB38` instead of `func_08005B68`/`func_080050F8`). **This is
not a 3rd, independent blocked function -- it's a 3rd confirmed instance
of the exact same unsolved class.** `func_0806DB38` itself (the
callee) IS a genuine register-pressure function (confirmed
separately, `r8`/`sb`/`sl` used, ~180 lines) -- but that's irrelevant to
matching `func_0806EA30` ITSELF, which (like the other two) only needs
`func_0806DB38` treated as an opaque black box. **Correcting
`DECOMP_RULES.md`'s classification**: 3 blocked sites share the
"SmartPtr field assignment" wall, not "2 blocked + 1 separate
register-pressure-callee case."

### 3 fresh hypotheses tested on the "SmartPtr field assignment" shape --
all negative, but each adds real information

Re-read round 8's 4 documented attempts in full before starting (dead
give-away peephole on same-scope locals; `.Move()` chaining; direct-init
`SmartPtr<T> tmp(ReturnByValue())` hits the private copy-ctor; reference
binding to an rvalue doesn't compile). None of the 3 tested below repeat
those exactly.

1. **Copy-initialization syntax (`=`) instead of direct-initialization
   (`()`)**: `SmartPtr<Widget> tmp = func_08005B68(arg);` instead of
   round 8's `SmartPtr<T> tmp(func_08005B68(arg));`. Old CFront-derived
   compilers are documented to sometimes treat these two forms via
   different code paths even though the standard treats them as
   equivalent for same-type initializers. **Result: identical failure**
   -- `agbcp` still routes this through
   `SmartPtr<Widget>::SmartPtr(SmartPtr<Widget>&)` (the private copy
   ctor) and rejects it with the same "invalid... initialization of
   non-const reference type" error as the `()` form. **Closes this
   specific avenue for good** -- the `=`/`()` syntax distinction is a
   dead end in this compiler, no need to try it again on any future
   `SmartPtr<T>` case.
2. **Explicit out-param convention instead of hidden-return-value
   convention**: hypothesis that `func_08005B68`'s real prototype takes
   `SmartPtr<Widget> *out` as an explicit first argument (default-
   construct `tmp` locally, pass `&tmp`, no by-value return at all) --
   this sidesteps the private-copy-ctor wall entirely (no copy/return
   involved) since `tmp` is default-constructed, not initialized from a
   call result. **Compiles**, but produces a **verifiably different,
   non-matching shape**: an extra pre-zero of `tmp` before the call (the
   default ctor), and critically `*field = tmp.Move()` invokes the REAL
   `SmartPtr<T>::operator=(T*)` on `field` -- which reads and compares
   against `field`'s OLD value before conditionally deleting it. The
   target disassembly never reads `field`'s old value at all. **This
   is useful negative confirmation, not just a dead end**: it proves
   `field` in the true source is NOT `SmartPtr<T>*` going through
   `operator=(T*)` -- whatever `field`'s real declared type is, the
   assignment must be a raw memberwise pointer write, not a method
   call. Ruled out for good: the out-param convention on the callee.
3. **Manual pointer-alias reproduction of the exact disassembled
   sequence** (read `tmp` through a separately-named alias pointer,
   null it through the alias, `if (dying) dying->Method2(dying, 3);`
   phrased as a 4th, distinct local rather than round 8's "hand-rolled
   struct" or the real `SmartPtr<T>` type): **agbcp promotes the entire
   thing to registers and eliminates it MORE aggressively than round
   8's attempt #1** -- collapses to `*field = func_08005B68(arg);` (8
   instructions, no stack slot at all, `tmp` never spills). **New,
   generalizable finding**: agbcp's same-scope dead-store/dead-load
   elimination (round 8, DECOMP_RULES.md anti-pattern list) is not in
   fact narrow to "single local, same expression" as round 8 tentatively
   qualified it -- empirically, it applies to **any address-taken local
   whose full lifetime (write, read, all aliasing) is visible within one
   function with no address ever escaping to an opaque external call**.
   Test 2 above (where `&tmp` DOES escape to the opaque `func_08005B68`
   call, forcing genuine stack residency) is the one case among all 7
   attempts across both rounds that does NOT get folded away -- pointing
   at escape-to-opaque-call as the one mechanism that reliably defeats
   the peephole, but combining that mechanism with a shape that also
   matches the target's field-write semantics (raw pointer write, not
   `operator=(T*)`) has not yet been found.

**Honest state, unchanged in substance from round 8**: still not
converged. 7 hypotheses tested across 2 rounds, all either fail to
compile (private copy-ctor wall) or produce a shape agbcp folds/reshapes
away from the 33-instruction target. The empirical rule discovered this
round (peephole applies broadly unless the address escapes to an opaque
call) narrows the search space usefully: any future hypothesis needs
`&tmp`'s address to escape to exactly one opaque call (matching
`bl func_08005B68`/`func_0806DB38` itself, since THAT's the only `bl` in
the target diassembly that could plausibly be "the escape") while still
producing a raw (non-`operator=`) field write with no compare against
the field's old value. **Not tried**: constructing `tmp` via the
hidden-return convention from `func_08005B68(arg)` (avoiding the
private-copy-ctor and out-param-shape problems, matching the no-pre-zero
disassembly) while ALSO ensuring the field write happens through an
explicit `*(RawT**)field = ...;` cast rather than any typed
`SmartPtr<T>*` -- i.e. combine the hidden-return convention (only
working construction idiom found in either round) with a `field`
parameter typed as a raw `T**`/`void**`, never `SmartPtr<T>*`, so no
`operator=` overload can ever be selected regardless of what the
compiler's overload resolution would otherwise pick. This exact
combination has not been tried by either round -- flagged as the
concrete next thing to try, not just "try harder."

### Not attempted this round (budget / correctly out of scope)

- `func_08008980` itself: confirmed register-pressure class by direct
  inspection (see above) -- not attempted, consistent with
  `DECOMP_RULES.md`'s existing guidance not to retry that class without
  dedicated budget. This is the first real look at it (not a retry), so
  it's now properly characterized rather than just flagged secondhand.
- `func_08004C68` itself: still not attempted. 11/15 callees now
  resolved (`func_08008A68` new this round); the 4 remaining
  (`func_080070D4`, `func_08005A00`, `func_0806EA30` -- all 3 confirmed
  same unsolved shape this round -- and `func_08008980`) are all
  genuinely hard, not just unattempted. Recommend the next round try the
  combined hypothesis above before re-attempting `func_08004C68`.

### Repo state at end of round 9

- 1 new commit (`2bab4c4`, `func_08008A68`).
- `make compare` bit-exact (`sha1sum -c fomt.sha1` -> `Réussi`) on a
  full clean rebuild after the commit.
- `origin` push URL untouched, nothing pushed, no PR, no network action.
  Solo worktree (`w21`/`parallel-21`), no concurrent-session interference
  observed.

## 2026-08-20, maintenance round (coordinateur, pas un worktree) -- split
`DECOMP_RULES.md` en quick-start + `DECOMP_ARCHIVE.md`, docs seulement

Mathias a fait remarquer que chaque agent commence systématiquement par
"se re-décompiler lui-même" -- en partie inhérent (chaque fonction est
unique) mais en partie évitable : `DECOMP_RULES.md` avait grandi à ~950
lignes avec de la vraie duplication issue de merges "garder les deux
côtés" appliqués à des sections qui en réalité se SUPERSÉDAIENT (ex. la
section "pression de registres" répétait le même paragraphe évolutif 5
fois, avec des compteurs d'échecs différents à chaque copie -- 3/3 puis
4/4 puis le near-miss round 6, jamais nettoyé). Chaque agent payait le
coût de lecture complet avant de toucher sa cible réelle, peu importe si
elle avait besoin de cet historique ou non.

Scindé en deux fichiers : `DECOMP_RULES.md` (450 lignes, dédupliqué) ne
garde que ce dont CHAQUE round a besoin -- discipline, anti-patterns
C->asm, conventions de nommage, méthodologie de découpage/harnais.
`DECOMP_ARCHIVE.md` (nouveau, 349 lignes) prend l'historique des matchs,
les récits complets des classes de difficulté, et la liste des cibles
priorisées -- consulté seulement quand une cible touche une famille déjà
documentée. Aucun changement de code, `make compare` reconfirmé bit-exact
après le split (docs uniquement).

- Rien poussé, `origin` intact.
- Les 3 agents en cours (w22 fable/`DrawGlyphAt`, w23 blobs cachés, w24
  méthodes sœurs) ont lu l'ancien `DECOMP_RULES.md` monolithique avant ce
  split -- pas de problème, leurs cibles ne dépendent pas de la
  structure du fichier. Au prochain merge, router leurs nouvelles
  entrées de table/historique vers `DECOMP_ARCHIVE.md`, pas
  `DECOMP_RULES.md`.
## 2026-08-20, round 10 (worktree `w24`, branch `parallel-24`) -- sister-method
hunt: 18 placement-constructor siblings of the "richer" AScene-derived
destructor family found and matched

Brief for this round: apply the "sister method" that worked well in round
(w20) -- instead of picking a random target, search `asm/*.s` for functions
NOT yet matched whose byte pattern strongly resembles a family ALREADY
matched and understood in this repo, since the C model is already known and
only needs adapting to the new site's offsets/constants. Two documented
templates given as starting points: the ~37 "richer" derived destructors
(all 37/37 already matched, not a target anymore) and the placement
constructors (3 widget families already matched via `func_08004C68`'s New
Game sequence).

### Method

Wrote a small parser (`/tmp/.../scratchpad/find_ctor.py`, not committed) that
splits every `asm/*.s` file into `thumb_func_start` blocks and flags any
block containing BOTH a `vtable_unk_ADDR` literal AND a `bl __builtin_new`
call -- the exact double signature of the already-known placement-constructor
shape (`func_08007078`/`func_0800598C`, round 8). Cross-referenced against
`arm-none-eabi-nm build/src/*.o | grep ' T func_'` (built once at the start
of the round) to exclude already-ported functions -- a naive `grep func_ADDR
src/*.cc` first pass produced false "matched" positives because it matched
`extern` declarations of still-opaque callees too, not just real
definitions; `nm` on the actual build output is the only reliable oracle for
"is this symbol really defined with a body in this repo".

The candidate list, sorted by instruction count, immediately surfaced a
cluster of ~15 functions at exactly 21 instructions, all in files whose
names correspond to already-matched "richer" 2-child destructors' asm
splits. Manual inspection of the first one, `func_0807EE14` (right before
the already-matched `func_0807EE44` destructor in `asm/code_0807DDA8.s`),
confirmed the hypothesis instantly: it stamps the EXACT SAME
`vtable_unk_080E7C4C` that `func_0807EE44`'s destructor also stamps, and
initializes the same two child fields (`self+4` MI, `self+8` plain) that the
destructor tears down -- a genuine constructor/destructor pair, previously
invisible because no one had searched for the constructor side specifically.

### Matches (19 functions total, verified bit-exact, 4 commits)

1. **`func_0807EE14`** (`55821f1`) -- first find, full writeup of the shape
   in `src/code_0807EE14.cc`'s header comment and in the new
   `DECOMP_RULES.md` section "Les constructeurs de placement, contreparties
   de la famille 'riche'". Body: vtable stamp, `operator new(0x710)`, opaque
   init call `func_0807E4D4(obj, a2)` stored at `self+4`, then a "move-in"
   of the plain child at `self+8` -- reads `*a1`, zeroes `*a1`, stores the
   old value. New C idiom not seen before in this repo (previous
   constructors only ever allocated both children, never received one
   pre-built via an out-parameter).
2. **14 sisters, identical body, only vtable/size/init-callee differ**
   (`42960fa`): `func_0805218C`, `func_080755EC`, `func_0807DD38`,
   `func_0807F580`, `func_0808045C`, `func_08080D94`, `func_08081A40`,
   `func_08082114`, `func_0808AB38`, `func_0808C56C`, `func_0808ECD8`,
   `func_08090E54`, `func_080931B0`, `func_08093A58` -- each cross-checked
   against its destructor sibling's `vtable_unk_ADDR` via `grep -l` in
   `src/*.cc` BEFORE compiling, confirming the pairing independently of the
   harness result. All 14 sit as the LAST function of their respective
   already-split asm files (the simple "tail-trim + append lds entry" case,
   no new asm file needed) -- verified individually via the quick
   compiler+assembler harness (exact mnemonic match including the
   `movs #k; lsls #n` constant-materialization for each distinct allocation
   size), then all together via one clean rebuild.
3. **`func_080A3744`** (`16aac6b`) -- 15th sister, same body, but no
   destructor stamping `vtable_unk_080E8278` was found anywhere in the tree
   (grep negative across `src/*.cc` and `asm/*.s`) -- ported anyway on shape
   match alone, harness-verified bit-exact like the other 14. Needed a real
   mid-file split (`asm/code_809E804.s`, not the last function in its file)
   rather than the tail-trim used for the other 14 -- new
   `asm/code_080A3774.s` holds the function that follows it.
4. **3 more, 1-child variant (no move-in)** (`3e23c90`): `func_080BC898`,
   `func_080C7EA8`, `func_080C0D1C` -- same shape as the ALREADY-known
   `func_08007078`/`func_0800598C` constructors (round 8), i.e. the simpler
   sibling of the 1-child "richer" destructors `func_080BC8C0`/
   `func_080C7ED0`/`func_080C0D44` (already matched). Found by the same
   scan script, just further down the candidate list (15-instruction
   bracket instead of 21). Confirmed the same vtable pairing via `grep -l`
   before compiling. All 3 are tail-trim splits.

### Constant-materialization note (generalizes a small but real risk)

Every allocation size in this family was written as a plain hex literal in C
(`operator new(0x710)`, `operator new(0xB78)`, etc.) -- NOT hand-reproduced
as the `movs #k; lsls #n` shift decomposition visible in the disassembly.
agbcp picks the encoding itself from the literal value: shift-decomposable
sizes (`0x710 = 0xe2<<3`, `0x10c = 0x86<<1`, etc.) compile to the exact same
`movs`/`lsls` pair seen in the target, and non-decomposable sizes (`0xB78`,
`0x98C` -- no `k<<n` with 8-bit `k` produces these) fall back to a literal
pool load, ALSO matching the target exactly. Verified across all 18 distinct
allocation sizes in this round without a single case needing manual shift
reconstruction -- useful data point against over-applying anti-pattern #1
(masks) to unrelated constant-loading contexts.

### Repo state at end of round 10

- 4 commits (`55821f1`, `42960fa`, `16aac6b`, `3e23c90`), each preceded by a
  clean rebuild (`rm -rf build fomt.gba fomt.elf fomt.map && make compare`)
  and `sha1sum -c fomt.sha1` showing "Réussi" immediately before the commit.
- `git status --short` clean after the last commit.
- `DECOMP_RULES.md` updated: new match-table rows + a dedicated section
  documenting the constructor family's two variants and the constant-
  materialization note above, for future rounds to reuse without re-deriving
  it.
- `origin` push URL untouched, nothing pushed, no PR, no network action.
  Solo worktree (`w24`/`parallel-24`), no concurrent-session interference
  observed (checked `git log`/`git status` before starting and before each
  commit).
- Scan script (`find_ctor.py`) left only in the session scratchpad, not
  committed -- rerun it in a future round if hunting for more sisters of
  this or another family; the `nm`-based "already ported" oracle it uses is
  the reusable part.


**Post-merge note (coordinateur)** : ce round a tourné sur `w24` avant
l'atterrissage du commit `cb06198` ("port hooks to source build", pivot
vers un payload embarqué réel) sur `main` -- le `Réussi` mentionné
ci-dessus porte sur l'ancien standard (ROM entière bit-exact contre
`baserom.gba`), qui ne s'applique plus après `cb06198`. Vérifié après
fusion que les 19 fonctions matchées ici n'entrent en collision avec
aucun site touché par `cb06198` (régions d'adresses disjointes dans
`asm/code_0804E9C8.s`, seul fichier partagé). Les 3 agents (w22, w23,
w24) ont tous été interrompus par la limite de crédit 5h du compte
(le message d'erreur mentionnait "monthly spend limit", mais Mathias
confirme que c'est bien la fenêtre 5h qui s'est refermée) -- w22/w23
n'ont rien committé, w24 a committé avant de tomber. w22 (fable,
`DrawGlyphAt`) relancé pour ne pas perdre sa progression (variante `g5`
à -2 octets/122 instructions au moment de l'interruption).

## Round (worktree w25, isolated, branche `parallel-25`) -- "SmartPtr field
assignment" (`func_080070D4`/`func_08005A00`/`func_0806EA30`) : 4
nouvelles hypothèses testées, toutes négatives, mécanisme du blocage
enfin cerné avec confiance

Mission : tenter précisément la combinaison signalée "pas encore
essayée" en fin de round 9 (`DECOMP_ARCHIVE.md`) -- construire `tmp` via
la convention hidden-return-value ET typer `field` en `T**`/`void**`
brut. **Chaque callee opaque (`func_08005B68`/`func_080050F8`/
`func_0806DB38`) est traité comme boîte noire**, conformément à la
méthode déjà établie ce round-là.

### Découverte préalable utile : le tail `vt[2](x, 3)` n'est PAS
`SmartPtr<T>::~SmartPtr()`

Avant de tester du code, relecture de `src/code_08004BDC.cc` et
`src/code_0809A518.cc` (déjà matchés) : les deux établissent que le motif
`ldr r0,[r1]; ldr r2,[r0,#8]; adds r0,r1,#0; movs r1,#3; bl
_call_via_r2` (`vt[2](x, 3)`) est un appel virtuel **explicite** appelé
`Unregister(int category)` dans ce dépôt -- une primitive générique de
gestion de liste d'acteurs, PAS un artefact de destructeur. Ceci est
important : **`SmartPtr<T>::~SmartPtr()`'s `delete inner;` ne peut
structurellement JAMAIS produire ce motif**, quel que soit `T` -- un
`delete` sur un pointeur polymorphe passe TOUJOURS par le slot 0 du
vtable (destructeur "deleting"), jamais le slot 2. **Donc le tail
observé dans les 3 fonctions cibles est forcément un appel EXPLICITE
écrit dans la source (`if (x) x->Unregister(3);`), jamais l'effet
implicite du destructeur de `tmp`** -- ceci corrige/precise
l'hypothèse de travail des rounds 8/9, qui assumait (sans le vérifier
contre ce précédent) qu'il s'agissait du destructeur de `SmartPtr<T>`.

### 4 hypothèses testées (harnais rapide, aucune n'a atteint `make compare`)

**8. Combinaison demandée à la lettre** : `SmartPtr<Widget> tmp =
func_08005B68(arg);` (syntaxe `=`) avec `field` en `void**` brut.
**Ne compile pas** -- identique à l'échec déjà documenté rounds 8/9
(`SmartPtr<Widget>::SmartPtr(SmartPtr<Widget>&)` privé). Confirme, une
3e fois, que **cette syntaxe précise ne compile jamais** dans ce
compilateur quel que soit le contexte -- close définitivement, ne pas
retenter.

**9. Construction par défaut puis assignation** (`SmartPtr<Widget> tmp;
tmp = func_08005B68(arg);`, en pariant sur l'`operator=` implicite
généré par le compilateur, qui prend `const SmartPtr&` et peut donc
biner une rvalue là où l'`operator=(SmartPtr&)` non-const explicite
round 8 échouait) : **compile**, mais produit une forme radicalement
différente -- pré-zéro de `tmp` (comme round 9 #2) PLUS **deux appels
`__builtin_delete`** (un pour l'assignation implicite, un pour le
destructeur final), zéro trace du motif `vt[2](x,3)`. Le destructeur
implicite de `Widget` (qui n'a qu'`Unregister` comme virtuelle, pas de
destructeur virtuel explicite) n'est PAS virtuel dans ce compilateur --
`delete inner` appelle `operator delete` directement, jamais via une
table virtuelle. **Fermé** : la voie "assignation implicite" ne
produira jamais le tail observé, indépendamment du problème de pré-zéro
déjà connu.

**10. `func_08005B68(arg).Move()` appelé sur la rvalue anonyme**
(`void *raw = func_08005B68(arg).Move(); *field = raw;`) : **compile**,
23 octets contre 60 attendus -- le destructeur du temporaire anonyme
(désormais avec `inner` déjà mis à zéro par `.Move()`) est éliminé
purement et simplement (même mécanisme que rounds 8/9 : `Widget` sans
destructeur virtuel explicite -> pas de dispatch vtable possible de
toute façon pour ce destructeur implicite non-virtuel -- cohérent avec
l'hypothèse 9 ci-dessus). Fermé pour la même raison structurelle.

**11. Convention out-param authentique, `tmp` en pointeur BRUT (pas
`SmartPtr<T>`) pour éviter le pré-zéro du constructeur par défaut, PLUS
vérification explicite `if (tmp) ((Widget*)tmp)->Unregister(3);`
écrite à la main** : **le candidat le plus proche obtenu ce round**.
Compile, taille 44 octets contre 60 attendus (écart de 16 octets, soit
~4 instructions manquantes). Reproduit EXACTEMENT le tail `vt[2](x,3)`
visé (le check `if(tmp)` survit intact, car `tmp` provient d'un appel
opaque sans zéro-écriture locale connue -- cohérent avec la règle
round 9 "l'adresse doit s'échapper vers l'appel opaque pour survivre au
peephole"). Ce qui manque : la double-écriture `sp+4`/`sp+8`
(`mov r0,sp; str r0,[sp,#4]; str r2,[sp,#8]; adds r1,r0`) visible entre
le retour de `func_08005B68` et le stockage dans `field` -- **tentative
de la reproduire en réintroduisant un vrai `SmartPtr<Widget>*` via un
cast de pointeur sur le stockage brut** (`SmartPtr<Widget> *tmp =
(SmartPtr<Widget>*)&tmp_storage;`, `tmp->Move()`/`tmp->Get()`) :
**échec, mais informatif** -- dès qu'un `Move()`/zéro RÉEL a lieu sur
l'adresse locale, agbcp élimine intégralement le check `if` qui suit
(0 instruction, pas juste le store/load), **même** avec une copie
préalable (`saved = tmp->Get(); tmp->Move(); *field = saved; if
(tmp->Get()) ...`) censée découpler le check de la valeur utilisée pour
`field`. Autrement dit : **la présence de la double-écriture sp+4/sp+8
ET la survie du check final sont mutuellement exclusives dans tout ce
qui a été tenté** -- soit on obtient le zéro-dance (et le check est
alors éliminé, provably-dead), soit on garde le check vivant (mais sans
le zéro-dance, car sa valeur doit rester "inconnue" du compilateur pour
échapper au repliement).

### État honnête : toujours pas convergé, mais le mécanisme de blocage
est maintenant identifié avec précision

Onze hypothèses testées au total (7 rounds 8/9 + 4 ce round), aucune
n'a atteint `make compare`. **Nouvelle compréhension actionnable** :
le tail `vt[2](x,3)` du binaire original observe un check
"structurellement mort" (l'opérande est zéro juste avant, prouvé par
lecture directe du désassemblage) que le VRAI compilateur d'époque n'a
PAS éliminé, alors que `agbcp` (cette réimplémentation) élimine
systématiquement ce motif précis dès qu'il peut prouver localement que
la valeur checkée est zéro -- **avec ou sans** stockage intermédiaire,
tant qu'aucun appel opaque ne s'intercale entre le zéro-write et le
check. Piste concrète non testée faute de budget ce round : insérer un
VRAI appel opaque supplémentaire entre le zéro et le check (pas pour
matcher la taille, mais pour vérifier empiriquement si un `bl` opaque
quelconque, sans rapport avec l'adresse de `tmp`, suffit à désactiver
le repliement -- si oui, chercher QUEL appel légitime pourrait occuper
cette position dans la vraie source ; si non, le blocage est plus
probablement une divergence structurelle irréductible entre `agbcp` et
le compilateur d'origine sur ce point précis, auquel cas cette classe
mériterait d'être reclassée "possiblement infaisable avec ce
compilateur" à côté de `Unpack`, mais SEULEMENT après ce test
supplémentaire -- pas encore fait ce round, donc pas encore prononcé).
`func_0806EA30` (3e site) non testé séparément ce round : les 4
tentatives ci-dessus ont toutes échoué sur `func_080070D4` avant
d'atteindre `func_0806EA30`, cohérent avec la consigne mission de ne
tenter la généralisation qu'après un premier match confirmé.

### Repo state en fin de round w25

- Aucun fichier `src/`, `asm/`, `fomt.lds`, `include/` modifié -- toutes
  les tentatives sont restées dans le harnais rapide
  (`/tmp/claude-.../scratchpad/w25qt/qt.cc`, hors du dépôt). `git status
  --short` vide avant et après le round.
- Aucun commit ce round (rien à commiter -- discipline "ne jamais
  commiter un match qui ne matche pas" respectée, aucun match trouvé).
- `origin` intact (push toujours désactivé), rien poussé, aucune PR.
- Pas de conflit observé avec d'autres worktrees actifs en parallèle.

## 2026-08-20, round (worktree `w22`, branche `parallel-22`) -- `func_0804E5AC`
(`DrawGlyphAt`, variante recoloration) -- échec honnête, généralisation
directe NE suffit PAS

Contexte : le commit `247e6f3` (round précédent, même worktree) venait de
faire tomber `func_0804E4AC` (`DrawGlyphAt`, corps plain) après 4 tentatives
échouées sur un écart irréductible de 2 octets. La forme C exacte qui a
débloqué ce mur est documentée dans `src/code_0804E4AC.cc` (voir les
commentaires "MATCHING-CRITICAL SHAPES"). Cible de ce round :
`func_0804E5AC`, la variante RECOLORATION jamais tentée jusque-là -- même
structure de blit 4-tuiles (TL/BL/TR/BR conditionnels) que le corps plain,
mais chaque `CpuFastSet` est remplacé par une boucle de remap de couleur par
nibble (`docs/VWF.md` dans le dépôt patch documente la formule exacte :
masque `0x11111111`, `anchor + delta*((v|v>>1)&masque) + (v>>1&masque)`,
confirmé bit-a-bit contre le désassemblage).

### Ce qui a été fait

1. Désassemblage relu en entier (`asm/code_0804E5AC.s`, 452 lignes,
   contenait EN FAIT 3 fonctions : `func_0804E5AC`, `func_0804E7A0`,
   `func_0804E7DC` -- seule la première était la cible). Signature
   confirmée par l'appelant déjà décompilé `DrawStringRecolor`
   (`src/code_0804E958.cc`) : `(dims, dest, x, y, code, color_a, color_b)`.
2. Reconstruction C calquée statement-par-statement sur le désassemblage,
   en transplantant DIRECTEMENT les idiomes qui ont débloqué `func_0804E4AC` :
   - même structure de contrôle (gardes tile_x/tile_y, x_ok/y_ok imbriqués,
     `goto out` unique, délégation `func_0804E9CC` pour le cas non aligné) ;
   - `row_tiles` en copie explicite de `width_tiles*tile_y`, sauvegardée et
     réutilisée pour TR (miroir de `grid_rows`/`br_tile_x` dans la version
     plain) ;
   - adresse construite en PLUSIEURS instructions successives plutôt qu'une
     expression unique partout où le désassemblage montre un ping-pong de
     registres (`tl = offset<<5; ...; tl += dest;` puis `bl`, `tr`, et le
     `right_addr` de BR en trois réassignations, exactement le motif
     documenté pour la BR du corps plain).
3. Split du fichier `.s` : `func_0804E5AC` extrait vers un nouveau
   `src/code_0804E5AC.cc`, le reste du fichier (`func_0804E7A0` +
   `func_0804E7DC`, toujours utilisées par `asm/code_0803A8A4.s` et
   `asm/code_0804E9C8.s`) déplacé vers un nouveau `asm/code_0804E7A0.s`
   (même mécanique que le split `code_0803EE94.s` -> `code_0804E4AC.cc` du
   round précédent). `fomt.lds` mis à jour en conséquence.

### Résultat : NE matche PAS bit-exact, écart caractérisé précisément

Build propre, `make compare` échoue (`sha1sum` : Échec). Diagnostic via
`asmdiff.sh` (⚠️ le script utilise `-bbinary` donc les adresses doivent être
converties en offset fichier, i.e. `addr - 0x08000000`, sinon le diff est
vide par erreur -- piège vécu ce round, à noter pour la prochaine fois) :

- La fonction compilée fait `0x1ec` (492) octets contre `0x1f4` (500)
  attendus -- **exactement 8 octets** (2 instructions) manquants, la même
  classe d'écart que le round 4/8 du corps plain avant sa résolution.
- Le désassemblage diverge dès le prologue : `dest` (paramètre `r1`) atterrit
  dans **`r9`** au lieu de **`sl` (r10)** dans l'original -- un swap de
  paires de registres hauts, MAIS cette fois entre `dest` et `delta` (qui
  devrait aller en `sb`/r9), pas entre `kind` et `dest` comme pour le corps
  plain. `kind`, contrairement au corps plain, n'est jamais gardé en
  registre dans l'original (`str` sur la pile juste après l'appel à
  `func_080D0D28`, rechargé aux deux seuls points d'usage) -- il n'est donc
  PAS un candidat à la course de registres ici, ce qui invalide directement
  l'hypothèse "même remède que le round précédent".
- La pile allouée fait `0x9c` (156) contre `0xa0` (160) attendus -- un mot de
  moins. Le candidat naturel est `row_tiles` (`width_tiles*tile_y`), stocké
  sur pile dans l'original (`str [sp,#0x9c]`) pour être rechargé au bloc TR ;
  dans ma reconstruction il reste en registre (pas de spill), ce qui
  suggère une pression de registres insuffisante à cet endroit précis --
  mais promouvoir `bl`/`tr` (les adresses locales des blocs BL/TR) en
  variables de portée fonction entière (au lieu de portée bloc) n'a PAS
  changé le résultat (toujours `0x1ec`), donc ce n'est pas simplement un
  problème de portée de déclaration.

### Diagnostic honnête

L'instruction de ce round était explicite : si l'écart de 2 octets (ici son
équivalent, 8 octets / 1 registre) réapparaît malgré la transplantation
directe de la forme qui a marché sur le corps plain, c'est un signal qu'il y
a un ingrédient supplémentaire propre à la recoloration -- pas la peine de
forcer. C'est exactement ce qui s'est passé : la généralisation directe
reproduit fidèlement la structure de contrôle et l'ORDRE des opérations
(vérifié statement-par-statement contre le désassemblage), mais échoue sur
l'allocation de registres pour un COUPLE DIFFÉRENT de variables (`dest`
vs `delta`, pas `kind` vs `dest`), avec en prime un spill de pile manquant
qui n'a pas de correspondance dans le corps plain (le corps plain n'a que
5 slots pile locaux hors `glyph_buf` ; ici il en faut 5 aussi mais un
d'entre eux -- `row_tiles` -- ne se spill pas naturellement chez moi alors
qu'il le fait dans l'original). Deux pistes non explorées faute de temps
pour la prochaine tentative :
- caractériser la vraie raison du spill de `row_tiles` (peut-être une copie
  redondante supplémentaire est nécessaire, du genre `br_tile_x`/`grid_rows`
  du corps plain, mais pour une variable différente -- `delta` ou `anchor`
  peut-être, pas testé) ;
- essayer d'inverser l'ordre `delta`/`anchor` par rapport à `dest` dans le
  texte source (actuellement : row_tiles, tl-offset, delta, anchor, tl+=dest
  -- peut-être `dest` doit être référencé plus tôt/plus souvent pour gagner
  la course face à `delta`).

### Repo state en fin de round (worktree w22)

- **Aucun commit.** Toutes les modifications (`src/code_0804E5AC.cc`,
  `asm/code_0804E7A0.s`, `fomt.lds`) ont été annulées après l'échec
  (`git checkout -- fomt.lds`, suppression des nouveaux fichiers,
  restauration de `asm/code_0804E5AC.s` via `git checkout --`).
- Rebuild propre + `make compare` reconfirmé RÉUSSI après annulation (état
  identique à `247e6f3`).
- `git status --short` propre.
- `origin` non touché, rien poussé, pas de PR.

## 2026-08-20, worktree w26/`parallel-26` -- généralisation du scan
"méthode sœur" (angle 1a), 4 fonctions matchées

Mission : continuer la chasse aux familles structurelles non cataloguées
depuis `dc8689a` (base commune avec w24, pas encore mergé dans cette
branche). Deux angles proposés : (1a) généraliser le scan de w24 --
`vtable_unk_ADDR` déjà connu SANS `__builtin_new`, ou l'inverse -- à
toute combinaison, pas seulement les paires destructeur/constructeur déjà
vues ; (1b) `bl __builtin_new`/`__builtin_delete` sans vtable connu ;
(2) accesseurs voisins de `gUnk_0300040C`.

Script Python (`/tmp/w26_scan_vtable_families.py`, non commité --
jetable) : parse tout `asm/*.s` en blocs `thumb_func_start`, exclut les
`func_ADDR` déjà présents dans un `src/*.cc`, et catégorise le reste par
(a) référence un `vtable_unk_ADDR` déjà connu d'un `src/*.cc` matché
SANS `__builtin_new`, (b) appelle `__builtin_new`/`__builtin_delete`
SANS référencer de vtable connu. Angle 1b a produit ~150 hits mais quasi
tous dans les gros fichiers `code_linkonce.s`/`code_080B3C3C.s`/
`code_809E804.s` (templates COMDAT, classe "pression de registres" ou
famille infaisable `Unpack` déjà fermée) ou des lots homogènes de petites
fonctions déjà pressenties ailleurs (`code_entities_08034CEC.s`,
candidat de blob caché non encore vérifié, laissé de côté faute de
temps) -- pas creusé plus loin ce round. **Angle 1a n'a donné que 8
hits**, bien plus exploitable : 4 se sont avérés être de vrais
constructeurs/init-steps sœurs de destructeurs déjà matchés.

**4 fonctions matchées, 3 commits** :

- `func_08004C48` (`25ff995`) -- constructeur de base, sibling direct de
  `func_08004C54` (tout premier destructeur "riche" matché, round 4/w4).
  Stamp vtable + `return self`, dernière fonction de son fichier déjà
  découpé (`asm/code_08004C0C.s`) -- split en queue trivial. Appelé
  depuis un site de placement-new dans `asm/code_linkonce.s`
  (`movs r0,#4; bl __builtin_new; bl func_08004C48`), confirmant le rôle
  constructeur plutôt qu'un simple helper de stamp.
- `func_080098DC` (`6f788cc`) -- init-step sibling de la classe
  documentée dans `src/code_080099EC.cc` (round 9/w18, blob caché).
  Fonction mi-fichier (pas adjacente à un split existant) dans le gros
  monolithe `asm/code_08008DE8.s` -- découpage standard en 3 (avant/
  cible/après). Délègue à deux helpers opaques encore non portés
  (`func_08009984`, `func_080098AC`).
- `func_080D79CC` + `func_080D7AD4` (`7201ee1`) -- paire de constructeurs
  d'un même sous-objet dont le teardown est déjà connu dans
  `func_08008A68.cc` (round 9/w21) : même vtable pair
  (`vtable_unk_080E5B0C`/`vtable_unk_080E5B18`), même corps
  byte-identique, seule différence l'offset d'embedding (`self` direct
  vs `self-0x1c`) -- motif déjà documenté pour la famille des
  destructeurs "riches". Une fonction non apparentée
  (`func_080D7AAC`, vtable/global différents) sépare les deux cibles
  dans le même fichier monolithique -> split en 5 morceaux
  (avant/cible1/milieu-non-porté/cible2/après).

**Piège vécu et corrigé avant tout commit** (méthode w26, à généraliser
dans `DECOMP_RULES.md` si récidive) : le premier découpage du fichier
`code_080D6DB8.s` a supprimé silencieusement un blob `.byte` caché de
116 octets (label local `.L080D79F8`, PAS de `thumb_func_start`) coincé
entre le pool littéral de `func_080D79CC` et `func_080D7AAC` -- attrapé
immédiatement par la vérification taille `readelf .text` (44 octets
compilés contre 224 attendus) AVANT tout `make compare`, donc jamais
committé de mauvais état. Corrigé en re-diffant contre
`git show HEAD:asm/code_080D6DB8.s` et en recollant les octets exacts en
tête du nouveau fichier, avant `func_080D7AAC`. Ce blob (3 séquences
quasi identiques de ~28 octets, ne différant que par la cible d'un
`bl`) ressemble à un troisième membre de famille de blob caché non
décodé -- **piste non explorée, à reprendre un jour** (candidat
`0x080D79F8`, 116 octets, dans `asm/code_080D7AAC.s`).

**Piste angle 2 (voisins de `gUnk_0300040C`)** : enumérée
(`gUnk_03000400`/`402`/`408`/`410`/`414`/`418`/`41C`/`420`/`430`/`450`/
`0CD4`) mais fermée rapidement -- `gUnk_03000404` est référencé par
`func_0800736C`, déjà classé "pression de registres" (échec documenté,
`DECOMP_ARCHIVE.md`) ; `gUnk_03000410`/`03000414` appartiennent à une
famille de constructeurs/destructeurs (`vtable_unk_080E5B54`/
`vtable_unk_080E8594`) partiellement effleurée ce round
(`func_080D7AAC`/`func_080D7B04` laissés en asm brut, non caractérisés)
-- piste réelle mais pas creusée faute de budget ; le reste
(`gUnk_03000418`/`41C`/`420`) vit dans le gros fichier
`asm/code_080C7F00.s`, usage `r8`/`sb` intensif -- signal "pression de
registres"/famille `Unpack`, pas engagé sans vérification préalable.

### Repo state at end of round 10/w26

- 3 nouveaux commits (`25ff995`, `6f788cc`, `7201ee1`), 4 fonctions
  matchées au total.
- `make compare` bit-exact (`sha1sum -c fomt.sha1` -> `Réussi`) sur
  rebuild propre après chaque commit, y compris après correction du
  piège du blob caché.
- Aucun label `.LADDRESS` dupliqué détecté pour les adresses nouvellement
  matchées.
- `origin` intact, rien poussé, aucune PR. Worktree solo (`w26`/
  `parallel-26`), pas de conflit observé avec les autres agents en cours
  (w24 travaille sur un ensemble d'adresses disjoint, pas encore mergé
  dans cette branche).

## Round 10 (worktree w23) -- the 3 remaining "larger, not auto-verified"
hidden-blob candidates from round 9: 2 matched, 1 solid near-miss

### Goal

Round 9 (w18) flagged 3 blobs found by `tools/scripts/scan_hidden_code_blobs.py`
as real-looking Thumb code but too large (>40 bytes) to auto-verify, and
explicitly deferred hand-disassembly to a future round:
`asm/code_entities_08034CEC.s` `.L0803A804` (160 bytes), `asm/code_08010F54.s`
`.L08011ED8` (272 bytes, file also contains an unrelated large
register-pressure function -- explicit caution flagged), `asm/code_actor_0809BFE8.s`
`.L0809E1B4` (288 bytes). This round attacked all 3.

### Match 1: `func_0803A804` group -- 7 functions, not 5 (correction of an
early misread), commit `0ae8f12`

Hand-disassembling `asm/code_entities_08034CEC.s`'s 160-byte tail
initially looked like 5 sub-functions but turned out to be **7** -- a
first-pass read merged two adjacent functions (`func_0803A840`,
gated on `unk_47` and calling `func_0805E8F0`; `func_0803A870`, the
`SetAnim`-shaped one) into a single description, and missed a trailing
4-byte 7th function entirely (`func_0803A8A0`,
`ldr r0,[r0,#0]; bx lr` -- a trivial `UnknownEntityThingBase::dummy`
getter) because it sat one line past the initial `Read` window. **Lesson
for future blob hand-disassembly: always re-verify against the true EOF
of the source file (`wc -l` / `git show HEAD:<file> | tail`), don't trust
an early truncated read of the raw `.byte` lines** -- the missing 4 bytes
caused a real `sha1sum` FAILURE on the first `make compare` attempt (ROM
shrank by 4 bytes, cascading a small diff into ~600k byte positions
downstream via shifted literal-pool addresses) that was only found by
diffing `baserom.gba` vs the built ROM byte-for-byte and confirming the
literal `vtable_unk_...` constant right before the blob had shifted by
exactly 4.

All 7 operate on `UnknownEntityThing` (`include/unknown_types.hh`) via
its known `sprite_animator` (+0x30) and `unk_44`/`unk_46`/`unk_47`
fields, matching the shape already ported in
`src/entity_actor.cc:AActorEntity::RefreshSprite` almost exactly (same
`func_0805E860` call + flag-set sequence) -- `func_0803A870` is a
dedup'd sibling of that call site with an extra cached-anim-id check at
`self+4` (an undocumented field; `UnknownEntityThingBase`'s header
comment guesses a vtable pointer lives there, unverified since no `.cc`
in this repo constructs that base class yet -- left as raw pointer
arithmetic rather than resolving that question). New matches:
`func_0803A804`/`func_0803A80C` (i16 getter/setter on a `sprite_animator`
sub-field), `func_0803A814` (tail-forwarding wrapper), `func_0803A820`
(branchless-nonzero predicate, same idiom already known), `func_0803A840`
(flag toggle), `func_0803A870` (`SetAnim`-style dedup helper),
`func_0803A8A0` (trivial getter). Source: `src/code_0803A804.cc`.

**New generalizable idiom confirmed** (2nd sighting after `func_0803A840`
in this same file): a `ldrb`/`ble`/... "if flag set, clear it and store;
else compute+maybe-store" shape where BOTH branches share a single tail
`strb rX,[rY]` compiles correctly only when the C source hoists the
"else" case's target pointer OUTSIDE the if/else (`u8 *out = &field;`
computed once, up front, re-pointed only in the "if" branch) rather than
assigning it fresh inside each branch -- this reproduces the target's
`bne`-to-bottom control flow (the common/simple case physically at the
end, right before the epilogue) and avoids an extra register move in the
"else" (which, in target's true source, is actually reached by the
`bne`, i.e. corresponds to the C `else`, not the `if`) -- get the
if/else polarity backwards and you get an extra unconditional `b.n` that
bloats the function by 2-6 bytes depending on shape.

### Match 2: `func_08011ED8` -- second constructor overload of
`func_08011DC4`'s class, commit `51cbacc`

Confirmed NOT the register-pressure function that this round's brief
explicitly warned about (that's a different, unrelated function
elsewhere in the same file) -- uses only `r4-r7`, no `r8`/`sb`/`sl`/`ip`.
Builds the exact same 0xF8-byte object as `func_08011DC4` (unported,
still asm) via a different overload: instead of copying a caller-supplied
`Location` by pointer (`ldm`), it builds one locally with only the first
word set to 2, the other two read straight off the stack **uninitialized**
-- a real quirk of the original, not a decompilation error, confirmed
by the fact that reproducing it exactly required a **20-byte local**
(5 words) even though only the first 12 bytes (3 words) are ever read or
written -- agbcc's stack allocator reserves space for the local's full
declared size regardless of what's actually touched, so an undersized
12-byte local produces a 12-byte frame (`sub sp,#12`) while the target
needs `sub sp,#20`. **New idiom, useful beyond this one function: when a
target's `sub sp,#N` is bigger than the sum of bytes your candidate local
variables actually touch, try widening the "front" local's declared
size** (as an oversized struct with untouched trailing fields) rather
than adding a second, genuinely separate unused local -- an actually-dead
second local gets its storage optimized away entirely by agbcc (verified:
adding `u32 pad[2]; pad[0]=pad[0];` did NOT change the frame size at
all), but a single oversized struct whose extra fields are simply never
referenced DOES reserve the extra space, because the struct's `sizeof`
is what drives the frame allocation, not per-field liveness.

Also confirmed (2nd sighting, generalizes round 9's finding for
`func_0800711C`): a flat `*(u32*)(obj+8+4) = 0;` expression gets
constant-folded by agbcp into a single `str r4,[r7,#12]`, losing a
genuine nested-substruct-pointer computation (`adds r0,r7,#0; adds
r0,#8; str r4,[r0,#4]; adds r0,#8` -- 4 instructions) that the real
source performs because it accesses the field through an intermediate
named sub-object pointer, not a flat offset. Fix: introduce the
intermediate `char *sub = obj + 8;` variable explicitly.

**New idiom found and reverted (important negative result):** a
hand-unrolled zero-fill loop written as `char *p = ...; *(u32*)p = 0; p
+= 4;` (repeated) gets compiled by agbcp into a compact `stmia r0!,{r4}`
(auto-increment single-register store) -- HALF the size of the target,
which uses the verbose `str r4,[r0,#0]; adds r0,#4;` form repeated. This
is the OPPOSITE problem from the usual "agbcp is too weak to optimize" --
here it has a real (if narrow) peephole that collapses a manually-unrolled
pointer-walk into `stmia`. Writing the SAME 7 stores as flat,
independently-addressed statements (`*(u32*)(obj+0xa0)=0; *(u32*)(obj+0xa4)=0;
...`, no shared pointer variable) avoids the peephole and reproduces the
verbose form exactly, while still benefiting from agbcp's separate
"reuse the last computed base + small delta" habit to avoid a full
r7-relative recompute on each line. **Rule: if a target shows a
`str`/`strb`/`strh` + `adds rX,#N` pair repeated verbatim (not `stmia`),
and your hand-unrolled C pointer-walk compiles to `stmia` instead, switch
to independent flat-offset statements (no local pointer variable
persisting across the repeats).**

### Near-miss (documented, not applied): `func_0809E1B4`, ~288-byte
"format a value into a scattered-offset message buffer" helper

Fully disassembled, fully understood structurally, confirmed real code
(not data) and NOT the register-pressure class -- but **not bit-exact
after ~10 distinct structural rewrites**, all converging on the exact
same single symptom, so filed as a genuine near-miss rather than an
abandoned target.

**Function role** (semantic, not needed for correctness but useful
context): reads a `Farmer`'s `ActorLocation` (`self->location` via the
already-ported `func_0800E924`), and depending on whether
`(i32)(loc.map << 22) > (i32)0x4CC00000` (an `if`/`else`, NOT an `if`
followed by unconditional code -- see structural correction below),
computes an index from `loc.map`'s low 10 bits (masked via the
already-known double-shift idiom, DECOMP_RULES rule 1bis) offset by a
constant (`-308` in the `if` branch, `-52` in the `else`), calls one of 4
still-unported opaque helper functions (`func_0809D79C`/`func_0809D7D8`
in the `if` branch, `func_0809D418`/`func_0809D470` in the `else`) with
`(self, idx)`, and for each result runs a small fixed-count loop
(`4`/`9`/`9`/`13` iterations) that copies bytes one at a time from a
computed offset into one of 4 known `gUnk_...` byte tables
(`gUnk_08103B38`/`08103C74`/`08103F98`/`0810400C`, source strings at a
per-call stride of 5/7/5/5×2 bytes computed via literal shift-add, not a
plain multiply) to SCATTERED destination offsets read from a matching
`gUnk_...` word-array "offset table"
(`gUnk_08103B10`/`08103C3C`/`08103F84`/`08103FE4`) into the caller's
`dest` buffer -- almost certainly assembling a formatted in-game text
string (season/day-of-week name substituted at fixed positions in a
template) from lookup tables, though the exact semantic meaning (which
message, which field) was not pinned down and isn't needed for a
bit-exact port.

**Real structural bug caught and fixed mid-round**: an early read of the
disassembly mistook the function for "if (cond) { block A } <block C/D
unconditionally>" -- the `b.n` at the end of block A actually jumps
STRAIGHT to the epilogue, skipping block C/D entirely, i.e. it's a
genuine `if`/`else`, not `if` + fallthrough. Confirmed by tracing that
`r5` (the `Farmer*`, computed once at function entry) is read again,
unmodified, at the very start of the `else` branch -- which only makes
sense if the `if` branch's later clobbering of `r5` (reused as scratch
for an offset-table pointer, see below) never executes on that path.
**General lesson: when a conditional branch's target sits WELL AFTER a
large block of code that itself ends in an unconditional branch, check
where THAT unconditional branch actually goes before assuming the
large block is optional-but-followed-by-shared-code -- it may instead be
one whole arm of an if/else, with the other arm reached only via the
original conditional branch.**

**The near-miss itself**: every single instruction address, mnemonic,
immediate, branch target, and literal-pool value matches the target
exactly (270 bytes of code either side, confirmed via full manual
address-by-address comparison, not just spot-checks) -- except that in
each of the two branches, one 2-byte instruction encodes the WRONG
register: the "compute `idx` from the freshly-read `ActorLocation`'s
`map` field" instruction targets `r5` in every tested C formulation of
this round, but the target uses `r4`. Correspondingly, the FIRST
scatter-loop's offset-table pointer (a genuinely-independent, more
short-lived value) ends up in the register the other one didn't take --
i.e. the two candidate free registers at that point (`r4`, freed from
holding the `ActorLocation`'s stack address once its field is read; `r5`,
freed from holding `Farmer*` once the `func_0800E924` call returns) get
assigned to (`idx`, offset-table-pointer) in the OPPOSITE order from
target in every attempt.

**~10 structural variants tried, all producing byte-IDENTICAL output for
this specific choice** (i.e. this is a very stable/deterministic
behavior of `agbcp`'s allocator, not noise): reordering the `+`
operands; splitting the field-extraction into its own statement;
hoisting `idx`'s declaration before the `ActorLocation` read; changing
`idx`'s type `i32`->`u32`; changing `Farmer*` to `void*`; removing the
named `farmer` variable entirely and inlining `(char*)save+0x1bd8` at
each of the 3 call sites (confirmed `agbcp` DOES CSE this repeated
subexpression into a single computation, matching target's single
`adds r5,r2,r0` -- so that's not the lever either); inlining the
`ActorLocation` read as an rvalue member access
(`func_0800E924(...).map`) instead of a named `loc2` variable (byte
IDENTICAL output either way, confirms `agbcp` treats both forms the
same at the register-allocation level); writing the offset+constant as
subtraction (`field - 308`) instead of add-a-negative-literal; a bare
`register` storage-class hint on `idx` (no effect, this compiler
appears to ignore it without an explicit `asm("rN")` binding, which
isn't used anywhere else in this repo and wasn't attempted, being an
unprecedented technique for this codebase).

**Honest assessment**: this looks like a genuine, narrow gap in
understanding of `agbcp`'s register-allocation heuristic for "two
same-priority free registers become available at slightly different
points within a block, one from a stack-address load's last use, one
from a call argument's last use" -- not a shape/order/idiom problem
(everything else about the port is proven correct by the exhaustive
byte-for-byte structural match). **Do not re-attempt via C-source
restructuring without first understanding this specific allocator
behavior more deeply** (e.g. by finding a SIMPLER existing ported
function in this repo with the exact same "two registers free up near
each other, one gets reused by the next new variable" shape and diffing
against ITS source, rather than more blind trial-and-error on this
function specifically) -- 10 attempts against 1 unmoving symptom is a
strong signal that further guessing here has a low expected payoff per
unit of budget. The full working (but not-yet-matching) candidate is
preserved in this note's git history context only, not applied to any
file in this repo (per the non-negotiable rule against committing
non-bit-exact matches).

### Repo state at end of round 10

- 2 new commits (`0ae8f12` for the `func_0803A804` group of 7,
  `51cbacc` for `func_08011ED8`), both verified bit-exact via a full
  clean rebuild + `sha1sum -c fomt.sha1` -> `Réussi` immediately before
  each commit.
- `func_0809E1B4` (`asm/code_actor_0809BFE8.s`) intentionally NOT
  touched in the repo -- fully analyzed and documented above as a
  near-miss, no files modified for it, `git status --short` confirmed
  clean of any trace before moving on.
- `origin` push URL untouched, nothing pushed, no PR, no network action
  against origin. Solo worktree (`w23`/`parallel-23`).
- Re-running `tools/scripts/scan_hidden_code_blobs.py` at the end of
  this round would still list `asm/code_actor_0809BFE8.s`'s
  `.L0809E1B4` blob (the near-miss) as the sole remaining "larger, not
  auto-verified" candidate -- everything else the script flagged as of
  round 9 is now resolved (matched or, for the `Unpack` family,
  previously diagnosed as infeasible).

## 2026-08-20, worktree `w27`/`parallel-27` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 3 : piste 2 confirmée (1 registre), mais nouveau résidu
distinct découvert -- 3e échec honnête, plus un blocage repo-wide inédit

Contexte : reprise de `func_0804E5AC` après l'échec round 10/w22 (2 pistes
laissées : caractériser le non-spill de `row_tiles`, tester l'inversion
d'ordre `delta`/`anchor` vs `dest`). Désassemblage relu intégralement
depuis zéro (`asm/code_0804E5AC.s`, confirmé identique au round précédent :
3 fonctions dans le fichier, seule `func_0804E5AC` ciblée, appelant
`func_0804E9CC` -- pas `func_0804E9C8` -- pour le cas non aligné).

### Piste 2 confirmée : `anchor` n'est PAS une variable partagée comme
`delta`

Différence clé identifiée en relisant le désassemblage : `delta` (`color_b
- color_a`) est calculé UNE SEULE FOIS et persiste en `sb` (r9) à travers
les 4 blocs TL/BL/TR/BR (`mov r7, sb` à chaque bloc) -- mais `anchor` (le
nibble bas de `color_a` étalé sur les 4 octets) est RECALCULÉ intégralement
à chaque bloc (reload de `color_a` depuis la pile + refaire les 4
`ands`/`lsls`/`orrs`), jamais gardé en registre partagé. Round 10/w22
traitait apparemment les deux de la même façon (partagées ou toutes deux
recalculées), ce qui fait qu'`anchor` devenait un 5e candidat à un registre
haut persistant alors qu'il n'y a que 4 slots (`ip`=tile_x, `r8`=
width_tiles, `sb`=delta, `sl`=dest) -- assez pour faire basculer l'arbitrage
`dest`/`delta` entre `sl` et `sb`. En codant `anchor` comme variable LOCALE
recalculée dans chaque bloc conditionnel (au lieu d'une variable de portée
fonction), `dest` atterrit correctement dans `sl` dès la première
compilation candidate -- **piste 2 validée, l'écart d'1 registre du round
précédent est résolu**.

### Nouveau résidu, distinct des 2 pistes du round précédent : encodage
compact vs verbeux de l'addition `+ (u32)dest`

Malgré la correction ci-dessus, la fonction candidate compile à `0x1c8`
(456) octets contre `0x1f4` (500) attendus -- écart de 44 octets, bien
plus large que l'écart historique de 2/8 octets. Diagnostic (comparaison
mnémonique normalisée, désassemblage brut du candidat vs désassemblage du
vanilla à la même adresse) : dans les 4 blocs TL/BL/TR/BR, l'original
construit l'adresse finale (`décalé<<5 + dest`) en DEUX instructions
verbeuses (`mov r0, sl` puis `adds rX, rY, r0` -- copie de `dest` dans un
registre bas PUIS addition 3-opérandes classique), alors que ma
reconstruction compile systématiquement vers la forme 2-opérandes compacte
`add rX, sl` (accumulation directe dans le registre haut, encodage Thumb
`ADD(4)` à 1 instruction/2 octets au lieu de 2 instructions/4 octets).
Cette différence, répétée sur les 4 blocs, explique une bonne partie de
l'écart de 44 octets.

**Deux tentatives pour forcer la forme verbeuse, toutes deux sans effet
(taille identique à l'octet près, désassemblage byte-identique)** :
1. Séparer le décalage (`tl_shifted = ... << 5;`) et l'addition finale
   (`tl = tl_shifted + (u32)dest;`) en deux instructions C distinctes au
   lieu d'un `+=` composé -- aucun changement (le compilateur choisit
   quand même la forme compacte).
2. Construire l'adresse via arithmétique de pointeur explicite
   (`(u32*)((u8*)dest + tl_shifted)`) au lieu d'arithmétique entière castée
   -- aucun changement non plus.

Conclusion : le choix compact-vs-verbeux ne semble PAS piloté par la forme
syntaxique de l'expression C (contrairement à l'hypothèse de départ, qui
aurait généralisé l'idiome "réassignations successives" du corps plain) --
il dépend probablement d'un autre facteur de pression de registres au point
précis de l'addition, non identifié à ce stade (budget de round épuisé
avant d'isoler la cause). Symptôme additionnel cohérent : `row_below`
(comparé à `grid_rows` puis relu pour BL/BR) atterrit dans un registre
(`r9` dans ma reconstruction) au lieu d'être spillé sur la pile comme
l'original (`str`/`ldr [sp,#0x98]`) -- `row_tiles`, lui, se spille
correctement désormais (contrairement au round précédent). Piste pour la
suite : caractériser précisément QUELLE valeur occupe le registre bas
libre dans l'original à cet instant précis (peut-être `row_below` doit
justement RESTER en registre plus longtemps dans une formulation
différente, entrant en collision avec le registre bas que `mov r0,sl`
utiliserait sinon -- pas testé, faute de temps).

### Blocage repo-wide inédit découvert ce round (hors-sujet direct, mais
critique) : `make compare` ne peut PLUS jamais réussir en l'état actuel de
la branche

En tentant le premier rebuild propre de routine, `make compare` a échoué
dès la toute première tentative avec `src/franglais_payload.s: Error: file
not found: build/franglais_stub.bin` -- aucune règle Makefile ne génère ce
fichier. Root cause identifiée : le commit `cb06198` ("franglais: port
hooks to source build", déjà sur la branche dont ce worktree hérite,
**pas** un commit d'agent decomp) a commencé à câbler le patch franglais
directement dans ce dépôt de décompilation, avec des hooks TOUCHANT du code
tôt dans le ROM (`crt0.s`, `farmer.cc`, `item.cc`, `script_engine.cc`,
`code_0800E2E4.cc`). Vérifié : même avec un `build/franglais_stub.bin`
vide créé à la main pour débloquer le lien, `cmp baserom.gba fomt.gba`
diverge dès l'octet 361 (zone `crt0`) -- **ce n'est pas un stub manquant à
générer, c'est un changement de comportement RÉEL et volontaire** qui rend
`sha1sum -c fomt.sha1` structurellement impossible à faire réussir tant que
ce commit reste dans l'historique de la branche. Ça bloque LES 3 AGENTS
PARALLÈLES actuels, pas seulement ce round -- aucun match, même
parfaitement bit-exact sur sa propre fonction, ne pourra passer la
vérification finale non-négociable tant que `cb06198` n'est pas
retiré/corrigé ou que la discipline de vérification n'est pas adaptée
(ex. vérification scoped par fonction plutôt que sha1 ROM entière). Vérifié
aussi : `baserom.gba` était absent de ce worktree fraîchement créé (copié
depuis `w26` pour pouvoir travailler -- fichier gitignored, aucun impact
sur `git status`) ; les worktrees `w1`-`w21`/`w23`-`w26` (créés avant
`cb06198`) n'ont pas ce problème.

### Repo state en fin de round (worktree w27)

- **Aucun commit.** Toutes les modifications (`src/code_0804E5AC.cc`,
  `asm/code_0804E7A0.s`, `fomt.lds`) annulées après l'échec (`git checkout
  --` + suppression des nouveaux fichiers). `git status --short` propre
  confirmé après nettoyage.
- Vérification de portée réduite (comparaison mnémonique + taille
  `.text`, pas de `make compare` sha1 complet -- **impossible** ce round
  pour la raison ci-dessus, indépendante de `func_0804E5AC`) : la région
  ROM de `func_0804E5AC` elle-même est restée byte-identique au vanilla
  avant toute tentative (sanity check confirmé via `objdump -bbinary
  --adjust-vma=0x08000000`).
- `origin` non touché, rien poussé, pas de PR.
- **Signal fort pour Mathias** : le blocage `make compare`/`fomt.sha1`
  décrit ci-dessus mérite une décision explicite (revert de `cb06198`,
  correction du stub, ou changement de discipline de vérification) avant
  que les prochains rounds parallèles ne perdent du temps à buter dessus
  sans le savoir.

## 2026-08-20, worktree w28/`parallel-28` -- angle 2 repris (voisins de
`gUnk_03000410`), **RIEN COMMITÉ** : régression d'infra bloquante
découverte (`make compare` cassé depuis `cb06198`)

Mission : reprendre l'angle 2 laissé ouvert par w26 (`func_080D7AAC`/
`func_080D7B04`, `vtable_unk_080E5B54`/`gUnk_03000410`, famille
destructeurs "riches" sœur de `func_08008A68`/`func_080D7944`).

**3 candidats identifiés et vérifiés au niveau harnais (compilateur+
assembleur, sans lien complet)** :

- `func_080D7AAC` (`asm/code_080D7AAC.s`) et `func_080D7B04`
  (`asm/code_080D7B04.s`) : deux destructeurs **octet-pour-octet
  identiques** (40 octets chacun) -- stamp `vtable_unk_080E5B54` à `+4`,
  `gUnk_03000410 = *(void**)self` (unlink tête de liste), delete
  conditionnel sur `arg & 1`. Portage C compilé via le harnais rapide et
  comparé au désassemblage brut du binaire `.byte` original : **match
  bit-exact confirmé** (mêmes 20 instructions, mêmes octets).
- `func_080D7944` (dans `asm/code_080D6DB8.s`, déjà référencée en avant
  par 3 fichiers `src/*.cc` matchés -- `code_08008A68.cc`,
  `code_080D79CC.cc`, `code_080D7AD4.cc` -- comme callée opaque jamais
  portée) : version "riche" de la même famille (stamp 2 vtables, unlink
  liste, restore IME via `func_080004F4` si sauvegardé, delete
  conditionnel). **Near-miss d'1 instruction, PAS convergé** : le
  désassemblage cible fait `movs r0,#1; ands r5,r0` (résultat de
  `arg & 1` écrit DANS le registre de `arg`, r5), alors que toute
  formulation C testée (`if (arg & 1)`, `arg &= 1; if (arg)`,
  `arg = 1 & arg`, avec/sans variable intermédiaire nommée) compile
  systématiquement en `movs r0,#1; ands r0,r5` (résultat dans le
  registre scratch r0, arg intact) -- confirmé identique au idiome déjà
  matché de `func_08008A68` (`ands r0,r7`) qui utilise pourtant la MÊME
  expression source `flags & 1`. Taille totale identique (0x4c octets),
  donc écart d'exactement 1 encodage d'instruction (2 octets), pas une
  divergence structurelle. Hypothèse non testée : la différence vient du
  nombre de registres bas simultanément vivants (`func_08008A68` utilise
  r4-r7, `func_080D7944` seulement r4-r5) influençant le choix de
  destination de l'allocateur de agbcp -- piste pour la prochaine
  tentative, pas assez de budget ce round pour explorer plus de
  variantes.

**RIEN N'A ÉTÉ COMMITÉ.** En tentant d'appliquer `func_080D7AAC`/
`func_080D7B04` au dépôt (split `asm/*.s` standard + entrées `fomt.lds`)
et de vérifier via `rm -rf build fomt.gba fomt.elf fomt.map && make
compare`, `sha1sum -c fomt.sha1` a échoué -- **mais l'investigation a
montré que l'échec est totalement indépendant de mes changements** :

### Découverte : `make compare`/`sha1sum -c fomt.sha1` est cassé depuis
`cb06198` ("franglais: port hooks to source build", mergé dans `main`
avant le merge de `parallel-26`, donc présent dans TOUTE branche
descendante -- `w1` à `w28` inclus)

Preuve reproduite sur un `git stash -u` complet (aucun changement de moi,
état identique à `HEAD`) : `make compare` échoue quand même
(`sha1sum -c fomt.sha1` -> "Échec"). Cause racine identifiée :

1. `cb06198` a lié un vrai payload franglais (`src/franglais_payload.s`,
   `.INCBIN "build/franglais_stub.bin"`) à l'adresse **`0x08800000`**,
   soit exactement la fin de la ROM vanilla (`baserom.gba` fait
   8388608 octets = `0x800000`). Tout contenu non-vide à cet endroit
   **agrandit `fomt.gba` au-delà de `baserom.gba`**, donc un `sha1sum`
   plein-fichier ne peut structurellement plus jamais réussir, quel que
   soit le contenu du stub.
2. Pire : même en comparant seulement les 8 premiers Mo (préfixe exact de
   `baserom.gba`), le hash NE correspond PAS au hash vanilla (vérifié :
   `head -c 8388608 baserom.gba | sha1sum` == hash enregistré dans
   `fomt.sha1`, mais `head -c 8388608 fomt.gba | sha1sum` diffère) --
   les "hooks" du commit modifient légitimement des octets À L'INTÉRIEUR
   des 8 Mo d'origine (c'est le but des hooks : brancher vers le nouveau
   payload), donc même une comparaison "préfixe 8 Mo" ne peut plus
   servir de gate bit-exact automatique.
3. `fomt.sha1` (`b8471ae`, bien avant `cb06198`) n'a jamais été mis à
   jour pour refléter ce changement -- la règle non négociable du dépôt
   ("`sha1sum -c fomt.sha1` doit afficher Réussi avant tout commit")
   est donc actuellement **impossible à satisfaire pour QUICONQUE**,
   indépendamment de la qualité d'un match.
4. `build/franglais_stub.bin` lui-même n'existe dans aucun worktree frais
   (absent du suivi git, `build/` gitignored) -- chaque worktree doit le
   recréer à la main ; un stub vide (0 octet) fait échouer le LIEN lui
   -même (symboles dupliqués visibles seulement si les fichiers source
   du round précédent restent non-stashés -- piège vécu et corrigé
   pendant l'investigation, cf. ci-dessous) tandis qu'un stub de la
   bonne taille (copié depuis `~/dev/jeux-langues-assets/fomt-decomp/
   build/franglais_stub.bin`, 4096 octets) permet au moins de LIER et
   PRODUIRE un `fomt.gba`, révélant alors le vrai problème (2) ci-dessus.

**Conclusion pratique de ce round** : impossible de committer un match
bit-exact vérifié par le gate officiel du dépôt tant que ce problème
n'est pas corrigé en amont (soit régénérer `fomt.sha1` pour la nouvelle
réalité post-`cb06198` avec une méthode de comparaison qui exclut/
neutralise les octets légitimement modifiés par les hooks franglais,
soit revenir travailler le pur decomp sur un ancêtre antérieur à
`cb06198`). **Recommandation forte pour Mathias** : les commits
`cb06198`/`2011c54` (intégration du patch franglais, auteur co-signé
"Copilot") semblent être arrivés sur `main` de ce dépôt `fomt-decomp`
alors que ce dépôt est censé documenter STRICTEMENT le jeu vanilla
(cf. règle "point de vue vanilla" de `DECOMP_RULES.md`) -- vérifier si
ce mélange est intentionnel ; si non, il casse le gate de sécurité de
TOUS les agents de decomp en parallèle depuis ce point.

Les 3 candidats ci-dessus (`func_080D7AAC`, `func_080D7B04` vérifiés
bit-exacts au niveau harnais ; `func_080D7944` near-miss 1 instruction)
restent des cibles prêtes à committer dès que le gate est réparé --
inutile de refaire l'analyse, juste réappliquer le split `asm/*.s` +
`fomt.lds` documenté ci-dessus.

### Repo state at end of round 10/w28

- **Aucun commit.** `git status --short` vide, arbre de travail identique
  à `HEAD` (`b7e6296`, merge de `parallel-26`) -- tous les fichiers
  candidats (`src/code_080D7AAC.cc`, `src/code_080D7B04.cc`, splits
  `asm/*.s`, edits `fomt.lds`) ont été supprimés/restaurés après l'échec
  du gate, conformément à la discipline "ne jamais laisser un état cassé
  entre deux tentatives".
- `origin` intact, rien poussé, aucune PR.
- `build/franglais_stub.bin` local à ce worktree contient maintenant une
  copie du stub 4096 octets de `~/dev/jeux-langues-assets/fomt-decomp`
  (fichier gitignored, n'affecte pas l'état git) -- prochain agent sur ce
  worktree : ne pas supposer qu'un `make compare` propre passera tant que
  le point ci-dessus n'est pas corrigé en amont.

### Addendum -- nouveau standard officiel confirmé par le coordinateur,
`func_080D7AAC`/`func_080D7B04` committés

Le coordinateur confirme : `w27` (worktree parallèle) a trouvé la même
régression indépendamment. `DECOMP_RULES.md` a été mis à jour (section
"Discipline non négociable", en tête de fichier) : le check
`sha1sum -c fomt.sha1` sur la ROM entière est **définitivement caduc**
depuis `cb06198` (payload franglais intentionnellement non-vanilla, pas
un bug à corriger) -- **pas la peine d'attendre un "gate réparé"**.
**Nouveau standard officiel, déjà en vigueur** : vérification ISOLÉE par
fonction --
1. taille du `.text` du `.o` compilé (`arm-none-eabi-readelf -S
   build/src/code_ADDR.o`) comparée à `next_addr - this_addr` ;
2. diff de désassemblage (`arm-none-eabi-objdump -d` du `.o`) borné à
   cette taille contre le désassemblage brut de `baserom.gba`
   (`objdump -D -bbinary -marmv4t -Mforce-thumb
   --adjust-vma=0x08000000 --start-address=ADDR --stop-address=ADDR+size`) ;
3. lien complet (`make fomt.elf`) vérifié sans erreur, avec un
   `build/franglais_stub.bin` factice (`head -c 4096 /dev/zero >
   build/franglais_stub.bin`, gitignored) juste pour satisfaire la
   dépendance non liée au payload franglais -- pas de bit-exactness
   globale attendue, seulement absence d'erreur de LIEN
   (symbole dupliqué/non résolu) ;
4. `grep -rl -- "ADDR" asm/*.s` pour confirmer l'absence de blob dupliqué
   (piège hidden-blob déjà documenté).

Le harnais rapide déjà utilisé pour `func_080D7AAC`/`func_080D7B04` EST
cette vérification (étape 2 sous une forme équivalente, compilateur+
assembleur direct sans lien) -- suffisant, aucune ré-analyse nécessaire.

**Committé (`076eb72`)** : `func_080D7AAC` (`src/code_080D7AAC.cc`) et
`func_080D7B04` (`src/code_080D7B04.cc`), les deux vérifiés selon les 4
points ci-dessus (taille 0x28/40 octets chacun, matchant exactement
l'écart à la fonction suivante ; désassemblage instruction-pour-
instruction identique à `baserom.gba` ; lien propre ; aucun label
dupliqué). `asm/code_080D7B04.s` renommé `asm/code_080D7B2C.s` (la cible
était la première fonction du fichier, le trio de wrappers triviaux
`func_080D7B2C`/`38`/`44` devient le nouveau contenu sous sa propre
adresse).

`func_080D7944` (near-miss d'1 instruction, `ands r5,r0` attendu vs
`ands r0,r5` produit par toute formulation C testée) : **laissé en l'état,
documenté comme near-miss honnête**, pas de nouvelle piste ce round --
ne pas forcer (consigne du coordinateur). Prêt à reprendre pour un futur
round avec un angle neuf (hypothèse non testée : influence du nombre de
registres bas simultanément vivants sur le choix de destination de
l'allocateur d'agbcp, cf. ci-dessus).

### Repo state final (après addendum)

- 2 fonctions matchées et committées ce round (`func_080D7AAC`,
  `func_080D7B04`, commit `076eb72`), plus le commit docs `325ecac`.
- `git status --short` vide, arbre de travail propre (build/, fomt.elf,
  fomt.map supprimés après vérification -- gitignored de toute façon).
- `origin` intact, rien poussé, aucune PR.

## 2026-08-20, worktree w30/`parallel-30` -- `func_080D7944` matché
(near-miss d'1 instruction résolu), pas de doublon avec `func_080D7AAC`/
`func_080D7B04`

Mission initiale : reproduire et committer `func_080D7AAC`/`func_080D7B04`
(candidats vérifiés au niveau harnais par w28, jamais committés). En
cours de route, le coordinateur a signalé que `w28` avait entre-temps été
relancé et avait lui-même committé ces deux fonctions (`076eb72`, déjà
sur `main`) -- travail abandonné ici avant tout commit pour éviter un
doublon au merge (`src/code_080D7AAC.cc`/`src/code_080D7B04.cc` supprimés,
`git status --short` vide reconfirmé avant de continuer).

Priorité 2 : `func_080D7944` (destructeur "riche" de la même famille,
`asm/code_080D6DB8.s`, near-miss d'1 instruction laissé ouvert par w28 --
`ands r5,r0` attendu, `ands r0,r5` produit par toute formulation testée).

**Résolu.** Vérifié d'abord sur le baserom réel (pas seulement les notes
paraphrasées de w28) via désassemblage direct
(`--adjust-vma=0x08000000 --start-address=0x080D7944
--stop-address=0x080D7990`, `~/dev/jeux-langues-assets/fomt-decomp/
baserom.gba`) : confirme `movs r0,#1; ands r5,r0` à `0x080D7972`. Toutes
les formulations déjà tentées par w28 (`flags &= 1`, `flags = flags & 1`,
`1 & flags`, variable intermédiaire, `do {} while(0)`) rejouées ici,
même résultat négatif (`ands r0,r5`). Piste qui a débloqué : la double
négation explicite `if (!!(flags & 1))` -- déclenche chez agbcp un chemin
de normalisation booléenne différent qui écrit le résultat DANS le
registre du paramètre au lieu d'un scratch. Généralisé dans
`DECOMP_RULES.md` (nouvel anti-pattern #12).

Vérification par objet (nouveau standard, `main`) :
- `arm-none-eabi-readelf -S build/src/code_080D7944.o` : `.text` =
  `0x4c` octets, exactement `0x080D7990 - 0x080D7944`.
- Diff de désassemblage borné (`objdump -d` du `.o` vs `baserom.gba`
  `--adjust-vma=0x08000000 --start-address=0x080D7944
  --stop-address=0x080D7990`) : 20 instructions + pool littéral (3
  `.4byte`) byte-pour-byte identiques (bl targets non résolus dans le
  `.o` mais adresses de destination cohérentes).
- Lien complet réussi (`make` avec `build/franglais_stub.bin` factice
  copié depuis `~/dev/jeux-langues-assets/fomt-decomp`) : AS+LD passent
  sans erreur de symbole non défini/dupliqué ; seul le
  `sha1sum -c fomt.sha1` final échoue, comme attendu et documenté
  (`cb06198`, payload franglais non-vanilla lié en fin de ROM -- gate
  cassé pour tout le monde, pas une régression de ce round).
- Doublon silencieux : `grep -rl -- "080D7944" asm/*.s` vide après
  split (aucune autre copie de cette adresse) ; `fomt.map` confirme
  `func_080D7944` à `0x080d7944` taille `0x4c`, suivi immédiatement de
  `asm/code_080D7990.o` à `0x080d7990` taille `0x3c` (jusqu'à
  `0x080D79CC`, déjà matché).

Découpage du fichier monolithique `asm/code_080D6DB8.s` (qui contenait
déjà `func_080D7944` en dernière fonction, suivie d'un blob `.byte` non
désassemblé jusqu'à `0x080D79CC`) : partie "avant" tronquée à la ligne
1608 (juste avant `thumb_func_start func_080D7944`), partie "après" (le
blob `.byte` restant, sans `thumb_func_start` -- même style que
`asm/code_080D79F8.s`) déplacée dans un nouveau fichier
`asm/code_080D7990.s`. Entrées `fomt.lds` insérées dans l'ordre :
`asm/code_080D6DB8.o(.text); src/code_080D7944.o(.text);
asm/code_080D7990.o(.text); src/code_080D79CC.o(.text);`.

**Commité** : `src/code_080D7944.cc`, `asm/code_080D6DB8.s` (tronqué),
`asm/code_080D7990.s` (nouveau), `fomt.lds`. Ajout accompagnant dans
`DECOMP_RULES.md` (anti-pattern #12, `!!(x & 1)` vs `x & 1`/`x &= 1` nu).

Priorité 3 non atteinte ce round faute de temps -- reste ouverte pour un
prochain round (autres voisins de `gUnk_03000410`, ou cible de
`DECOMP_ARCHIVE.md`).

### Repo state at end of round (worktree w30)

- 1 commit local ajouté sur `parallel-30` (`func_080D7944` + doc
  `DECOMP_RULES.md`). `git status --short` vide après commit.
- `origin` non touché (push toujours désactivé délibérément), rien
  poussé, aucune PR.
- `build/franglais_stub.bin` local à ce worktree (gitignored, copié
  depuis `~/dev/jeux-langues-assets/fomt-decomp`) -- même limitation que
  les rounds précédents : `sha1sum -c fomt.sha1` ne peut structurellement
  pas passer tant que le gate n'est pas corrigé en amont ; vérification
  faite par objet (taille + diff borné) conformément au nouveau standard.

## 2026-08-20, worktree `w29`/`parallel-29` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 4 : résidu réduit de 44 à 24 octets (piste concrète), toujours
pas de match -- 4e échec honnête, nouvelle cause identifiée

Contexte : reprise post-round 10/w27 (voir plus haut, ligne ~4779), qui avait
résolu la piste `anchor` (doit être recalculé PAR BLOC, pas partagé comme
`delta`) mais laissé un résidu de 44 octets sur l'encodage compact-vs-verbose
de `shifted_index + (u32)dest` dans les 4 blocs TL/BL/TR/BR (original :
`mov r0, sl` puis `adds` 3-opérandes ; reconstruction : `add rX, sl` compact
1 instruction). Les 2 tentatives de round 10/w27 (variable de shift séparée,
arithmétique de pointeur explicite) n'avaient eu aucun effet sur cette forme.

Fichier `src/code_0804E4AC.cc` (le corps plain, déjà matché depuis le round
"5e tentative", commit `247e6f3`) relu comme référence structurelle -- il
contient LES DEUX formes (verbose pour son bloc TL, compact pour son bloc
BL) dans la MÊME fonction, ce qui prouve que le choix n'est pas une
propriété globale du compilateur mais un artefact **local à chaque site**
de l'addition. Vérifié en désassemblant `build/src/code_0804E4AC.o` :
bloc TL -> `mov r2, r9` puis `adds r6, r0, r2` (verbose, car le résultat
`tl` est casé dans r6 alors que l'accumulateur du calcul est en r0 --
incompatible avec l'encodage Thumb `ADD(4)` qui exige `Rdn += Rm`, même
registre des deux côtés) ; bloc BL -> `add r1, r9` (compact, car là
l'accumulateur ET la variable finale coïncident déjà dans r1). **La règle
identifiée** : verbose si le compilateur assigne l'adresse finale à un
registre DIFFÉRENT de celui qui vient d'accumuler `(shifted_index)`,
compact sinon.

### Lecture littérale du désassemblage original de `func_0804E5AC` (pas
deviné depuis la forme C) : `row_product` partagé TL/TR, jamais BL/BR

Au lieu de retenter une piste C générique, relecture ligne à ligne du
désassemblage original des 4 blocs :
- TL sauvegarde `row_product` (= `width_tiles * tile_y`, AVANT le
  `+ tile_x` et AVANT le `<< 5`) sur la pile (`str r3, [sp, #0x9c]`) juste
  avant d'entrer dans la boucle de recolor -- TR le recharge et refait
  `+ tile_x` puis `<< 5` depuis zéro, plutôt que de réutiliser l'adresse
  finale de TL + `0x20` (le raccourci qu'utilise le corps PLAIN pour son
  propre bloc TR). Seule explication cohérente : l'adresse finale de TL
  est un pointeur consommé par auto-incrément dans la boucle inline
  (`stm r7!, {r1}` répété 8 fois) -- le registre ne contient donc plus la
  valeur de départ une fois la boucle TL terminée, contrairement au corps
  plain qui n'a pas de boucle et garde `tl` intact pour son raccourci TR.
- BL, à l'inverse, NE sauvegarde PAS son propre `row_product`
  (`width_tiles * row_below`) pour que BR le réutilise -- BR le recalcule
  intégralement depuis zéro. Asymétrie confirmée, gardée telle quelle
  (pas "corrigée" en fausse symétrie TL/TR == BL/BR).
- Dans les 4 blocs, le calcul couleur (`delta`/`anchor`) est intercalé
  ENTRE le `<< 5` et le `+ dest` final -- jamais avant le shift, jamais
  après le dest-add.

### Candidat reconstruit à partir de cette lecture -- progrès réel, pas de
match

Réécriture complète de `func_0804E5AC` (signature confirmée depuis l'appelant
`src/code_0804E958.cc` : `u32 func_0804E5AC(u32 dims, void * dest, u32 x,
u32 y, u32 code, u32 color_a, u32 color_b)`), avec : boucle `do { } while`
manuelle par bloc (pointeurs `src`/`dst` locaux, jamais de pointeur réutilisé
au-delà de son propre bloc -- cohérent avec le point ci-dessus), `mask`
(`0x11111111`) déclaré UNE FOIS à l'échelle fonction (déclarer une copie
locale par bloc, testé, casse l'allocation de `dest` -- voir plus bas),
`anchor` recalculé par bloc (piste round 10/w27, conservée), `row_product`
partagé TL/TR uniquement.

Résultat mesuré (harnais compilateur seul, `build/src/code_0804E5AC.o`,
`arm-none-eabi-objdump -h`) : `.text` = `0x1dc` (476 octets) contre `0x1f4`
(500) attendus -- **résidu de 24 octets, en baisse depuis les 44 du round
précédent**. Désassemblage borné confirmé : le bloc TL reproduit maintenant
EXACTEMENT la forme verbose originale (`mov r0, sl` puis `adds r6, r1, r0`
3-opérandes), et `dest` reste bien casé dans `sl` sur toute la fonction
(`mov sl, r1` au prologue, jamais spillé) -- les deux points bloquants des
3 tentatives précédentes sont donc résolus pour au moins ce bloc.

**Tentative pour aller plus loin, révèle un piège d'allocation global** :
remplacer les boucles `do-while` par des `while` (avec le test amont que
montre pourtant le désassemblage original -- `cmp r4,r2; beq skip` avant
d'entrer), le pointeur de fin par une expression littérale
`&glyph_buf[k+8]` (au lieu de `src + 8`), et `mask` par une déclaration
locale par bloc (au lieu d'une déclaration unique à l'échelle fonction) :
taille descend à `0x1ec` (492, résidu 8 octets -- semble mieux !) MAIS le
désassemblage révèle que ce n'est qu'une coïncidence numérique : `dest`
(arg1) se retrouve désormais SPILLÉ sur la pile (`str r1, [sp, #0x8c]` au
prologue, rechargé à chaque site au lieu de `mov r0, sl`) -- la disposition
entière de la pile change (offsets 0x8c/0x90/0x94/0x98/0x9c tous décalés
par rapport à l'original), donc plus proche en taille mais structurellement
FAUX. Isolé lequel des 3 changements cause la régression en les révertant
un par un : c'est la déclaration LOCALE de `mask` par bloc (pas le
`while`, pas le pointeur littéral) qui fait perdre `sl` à `dest` --
signal qu'agbcp semble faire une allocation de registres qui dépend du
nombre total de variables/constantes déclarées dans le scope, pas
seulement de la liste de vies locale à chaque site (cohérent avec le
soupçon déjà noté round 10/w27 sur un facteur de pression de registres
non identifié). Reverté vers la version à 24 octets (mask unique,
`do-while`, `src + 8`) après confirmation que ce n'était pas une piste.

### Résidu restant caractérisé (pas résolu) : collision `anchor`/`end`
sur le registre r2 dans la boucle TL

Dans le candidat à 24 octets, le calcul du pointeur de fin de boucle
(`end = src + 8`) compile en 2 instructions (`mov r0, sp; adds r0, #44`)
au lieu de l'unique `add r2, sp, #0x2c` de l'original, et nécessite une
copie supplémentaire (`adds r7, r0, #0`) pour survivre à la boucle --
alors que l'original garde `end` directement dans `r2` sans copie. Cause
identifiée par lecture des registres vivants dans la boucle originale :
`r2` porte `end` ET RIEN D'AUTRE dans l'original (anchor y est en `r5`,
delta en `r6`) ; dans ma reconstruction, `anchor` finit alloué en `r2`
(le même registre où `end` voudrait aller), forçant le compilateur à
choisir un autre registre libre (`r7`) pour `end`, avec le coût d'une
copie explicite. Testé un réordonnancement (calculer `anchor` avant
`delta` au lieu d'après) : aucun effet sur la taille -- l'allocation de
`anchor` sur `r2` ne semble pas piloté par l'ordre séquentiel simple des
2 affectations. Piste NEUVE pour la suite, non testée faute de temps :
forcer `anchor` sur un registre différent de `r2` via une variable-copie
explicite supplémentaire (idiome règle 11 de `DECOMP_RULES.md`), ou
inverser l'ordre où le pointeur de fin de boucle et `anchor` sont
matérialisés dans le texte C (calculer `end` AVANT le bloc couleur, pas
après).

### Verdict et repo state en fin de round (worktree w29)

**Pas de match -- 4e tentative sérieuse sur cette fonction, résidu à un
niveau différent à chaque fois (44 -> 24 octets ce round), signal
cohérent avec le diagnostic déjà posé fin round 10/w27** : cette variante
"recolor" de `DrawGlyphAt` est sensiblement plus dure que le corps plain
(`func_0804E4AC`, résolu en 5 tentatives) à cause d'une interaction
d'allocation de registres entre le calcul adresse et le calcul couleur qui
n'a pas encore de règle générale identifiée -- seulement des symptômes
locaux. Recommandation pour Mathias, cohérente avec la note de fin de
round 10/w27 : soit consacrer un round dédié avec budget étendu (itération
fine sur l'ordre exact des micro-affectations, un bloc à la fois, en
comparant après CHAQUE changement au lieu de grouper plusieurs
hypothèses), soit comparer avec une décompilation Ghidra amont si elle
existe pour ce binaire, soit accepter que cette variante reste ouverte
plus longtemps que le corps plain (elle n'est pas seule dans ce cas :
`DrawGlyphAt` plain a mis 5 tentatives).

- **Aucun commit de code.** `src/code_0804E5AC.cc` (nouveau), le split
  `asm/code_0804E5AC.s` -> `asm/code_0804E7A0.s`, et l'edit `fomt.lds`
  ont tous été annulés/supprimés après l'échec (`git reset` + `git
  checkout HEAD --` sur les fichiers renommés/modifiés, suppression du
  nouveau fichier `.cc`). `git status --short` vide confirmé.
- Vérification effectuée : harnais compilateur seul (taille `.text` +
  désassemblage borné, standard officiel documenté en tête de
  `DECOMP_RULES.md`) -- pas de `make compare` sha1 ROM entière (toujours
  structurellement impossible tant que `cb06198` reste sur la branche,
  cf. round 10/w27) ; lien complet néanmoins vérifié une fois avec
  `build/franglais_stub.bin` factice (`head -c 4096 /dev/zero`) pour
  confirmer l'absence d'erreur de lien -- aucune référence non définie ni
  symbole dupliqué.
- `origin` non touché, rien poussé, pas de PR.

## Round w32 (worktree `parallel-32`) -- chasse "3 angles neufs", aucun match sûr trouvé

Consigne : continuer la méthode "sœur" (w20/w24/w26/w28/w30) sur 3 angles
pas encore essayés : (1) méthodes virtuelles non portées des vtables déjà
cataloguées, (2) wrappers/thunks appelant une fonction déjà matchée, (3)
élargir `scan_hidden_code_blobs.py` au-delà de sa limite dure de 40 octets.

**Bilan des 3 angles -- tous négatifs, mais informatifs** :

1. **Vtables connues, méthodes non portées** : `grep -rl vtable_unk_
   src/*.cc` donne 50 vtables distinctes déjà référencées ; un script
   croisant chaque `vtable_unk_ADDR` contre TOUS les blocs `thumb_func_start`
   non matchés d'`asm/*.s` donne **0 hit**. Confirme que les rounds
   précédents (w24/w26 constructeurs de placement, w28/w30 sœurs
   destructeurs) ont déjà épuisé cette veine -- plus aucune fonction
   asm restante ne référence un `vtable_unk_ADDR` connu.
2. **Wrappers appelant une fonction déjà portée** : script recensant tous
   les `func_ADDR` réellement matchés dans le `.elf` (`arm-none-eabi-nm
   fomt.elf | grep ' T func_'`, 2696 symboles) puis cherchant, parmi les
   blocs `thumb_func_start` NON matchés de <=12 lignes d'instructions, un
   `bl func_ADDR` vers l'un de ces symboles : **1 seul hit**,
   `sub_080868A8` (`asm/code_08085568.s`) qui appelle `func_080CABEC`
   (déjà matché). Écarté après inspection : `sub_080868A8` lit `sl`/`r8`
   comme état déjà positionné par son appelant (`func_08085F08`, une
   fonction à très forte pression de registres qui pousse `sl`/`sb`/`r8`
   en pile au prologue) -- signature de la classe "ABI partagée entre
   `bl`" déjà documentée comme structurellement infaisable en C
   (`DECOMP_RULES.md`), pas un simple thunk portable.
3. **`scan_hidden_code_blobs.py` au-delà de 40 octets** : le script gère
   déjà ce cas (`medium_blocks`, non auto-vérifiés, listés pour revue
   manuelle) -- **0 nouveau court blob** (4-40 octets, tous déjà matchés
   par les rounds précédents), **1 seul blob "medium" restant** :
   `.L0809E1B4` dans `asm/code_actor_0809BFE8.s`, 288 octets (déjà
   identifié comme piste ouverte dans `DECOMP_ARCHIVE.md`, jamais
   attaqué). Inspection manuelle complète (désassemblage brut +
   `--adjust-vma`) : c'est une VRAIE fonction unique (`push
   {r4,r5,r6,r7,lr}; sub sp,#0x10`, épilogue propre `add sp,#0x10; pop
   {r4-r7}; pop {r0}; bx r0`, ~270 octets utiles + pool littéral
   terminal), pas de fusion de plusieurs petites fonctions. Appelle
   `func_0800E924` (déjà porté, `ActorLocation` d'un `Farmer const&`,
   `src/farmer.cc:188`) et 4 fonctions encore en asm
   (`func_0809D79C`/`func_0809D7D8`/`func_0809D418`/`func_0809D470`) --
   3 boucles de copie octet-à-octet depuis des tables globales
   (`gUnk_08103B10`/`38`/`gUnk_08103C3C`/`74`/`gUnk_08103F84`/`98`/
   `gUnk_0810400C`/`gUnk_08103FE4`, toutes des globaux `unk_` génériques,
   aucun nom sémantique disponible) avec des tailles de champ 4/9/13.
   Aucun registre `r8`-`ip` utilisé (PAS classe "pression de registres"),
   mais **aucun appelant symbolique trouvé** (`grep` négatif dans tout
   `asm/`/`src/`, comme `func_08010F14` en son temps) -- impossible de
   déduire les types exacts des 2 premiers paramètres (r0/r1) sans site
   d'appel de référence, et la sémantique des 3 boucles de copie (rendu
   de texte formaté ? affichage debug de coordonnées ?) resterait une
   pure supposition sans un caller. **Pas tenté** -- prématuré de deviner
   la structure C sans un point d'ancrage sémantique, contraire à la
   discipline du dépôt ("ne jamais inventer"). Reste la piste la plus
   concrète pour un futur round avec budget dédié : chercher d'abord
   un appelant via une table indirecte (dispatch de widgets/callbacks,
   pattern déjà vu ailleurs dans ce dépôt) avant de tenter le port.
4. Contrôle croisé de 2 autres pistes listées dans "Autres cibles
   ouvertes" de `DECOMP_ARCHIVE.md` : `func_08050DF0`
   (`franglais_transition_ctl_query`) est en fait **déjà matché**
   (présent dans `fomt.elf` comme symbole `T`) -- l'entrée d'archive est
   obsolète, à corriger dans un futur ménage de `DECOMP_ARCHIVE.md`.

**Aucun commit de code ce round.** Worktree resté propre (`git status
--short` vide avant et après), seul un `build/franglais_stub.bin` factice
généré pour valider le lien complet (`make compare`, échec sha1 attendu et
confirmé, aucune erreur de lien/symbole) -- non commité (`build/` est dans
`.gitignore`). `origin` non touché, rien poussé, pas de PR.

## 2026-08-20, worktree `w31`/`parallel-31` -- `func_0804E5AC` (`DrawGlyphAt`
recolor) round 5 : résidu réduit de 24 à 4 octets (meilleur résultat à ce
jour), cause du reliquat isolée précisément -- 5e échec honnête

Contexte : reprise post-round 4/w29 (résidu 24 octets, collision suspectée
`anchor`/`end` sur `r2`). Repos dans un état propre confirmé (`git status`
vide, rien hérité de w29). Relecture INDÉPENDANTE et complète du
désassemblage original (`asm/code_0804E5AC.s`, lignes 1-272), sans se fier
aux hypothèses des rounds précédents, en notant l'allocation de registre de
CHAQUE instruction des 4 blocs TL/BL/TR/BR.

### Découverte structurelle : les 4 blocs ne sont PAS des copies symétriques

Confirmation et précision de ce que soupçonnaient round 3/w27 et round 4/w29,
avec le détail exact cette fois :
- **TL** : `row_product` sauvegardé sur pile pour TR ; `start`/`end` du
  buffer source calculés directement en adresses SP-littérales
  (`add rX, sp, #imm`, 1 instruction chacun).
- **BL** : ne sauvegarde pas son row_product (recalculé par personne
  ensuite) ; `start`/`end` également littéraux SP-directs (1 instruction
  chacun).
- **TR** : seul bloc où `end` est calculé comme `start + 8` -- copie
  (`adds r4,r5,#0`) PUIS addition immédiate (`adds r4,#0x20`), 2
  instructions, alors qu'une adresse SP-littérale équivalente aurait été
  tout aussi valide et moins chère. Signal que la vraie source écrit
  `end = start + 8` pour CE bloc précisément, pas `&glyph_buf[N]`.
- **BR** : ordre des opérandes de l'addition tile_x + produit INVERSÉ par
  rapport aux 3 autres blocs (`tile_x + width_tiles*row_below`, tile_x en
  premier, cf. règle 5bis de `DECOMP_RULES.md`) ; `start`/`end` de nouveau
  littéraux SP-directs comme TL/BL.
- **`delta` calculé UNE SEULE FOIS dans TL et persisté** (confirmé octet
  pour octet -- BL/TR/BR relisent le registre persistant, ne refont jamais
  la soustraction) ; **`anchor` recalculé intégralement dans CHACUN des 4
  blocs** (confirme round 3/w27). Le "mask" `0x11111111` est rechargé
  depuis le pool littéral séparément dans chaque bloc (4 `ldr [pc,#N]`
  distincts dans l'original), jamais partagé/persisté.

### Reconstruction avec cette lecture précise -- progrès net

Réécriture depuis zéro appliquant les points ci-dessus + littéral `mask`
direct dans chaque `& 0x11111111` (pas de variable nommée -- testé : une
variable `u32 mask` unique à l'échelle fonction ajoute un chargement
persistant dans un registre haut qui casse l'allocation de `end`, cf.
plus bas ; le littéral nu laisse le compilateur recharger depuis le pool
à chaque site, comme l'original).

Progression mesurée (harnais compilateur seul) :
1. Première passe (mask en variable persistée) : `.text` = `0x1ec` (492)
   -- résidu 8 octets.
2. Mask remplacé par littéral nu dans les 4 blocs : `.text` = `0x1f0`
   (496) -- **résidu 4 octets, meilleur résultat toutes tentatives
   confondues** (round 3 : 44 ; round 4 : 24 ; ce round : 4).

### Cause du résidu de 4 octets isolée précisément (non résolue)

Dans le bloc TL, le calcul de `end` (adresse SP-littérale `&glyph_buf[8]`)
compile chez moi en 4 instructions au lieu de 2 :
```
add r1, sp, #44   @ calcul dans un registre bas (obligatoire, ADD SP-relatif
                  @ ne peut cibler qu'un registre bas r0-r7)
mov ip, r1        @ copie vers un registre haut -- absent de l'original
mov r7, ip        @ copie vers un DEUXIÈME registre -- absent aussi
cmp r3, ip
```
contre l'original :
```
add r2, sp, #0x2c
cmp r4, r2
```
Le compilateur alloue `end` sur `ip` (registre haut) dans ma reconstruction,
ce qui force le calcul en 2 temps (ADD SP-relatif ne peut écrire que dans
r0-r7) PUIS une copie supplémentaire vers `r7` pour le test de fin de
boucle après la boucle -- 4 octets de coût net. L'original alloue `end`
directement dans un registre bas (`r2`), sans jamais passer par un
registre haut, d'où 1 seule instruction.

**Six tentatives pour déplacer `end` hors de `ip`, toutes neutres ou
négatives, aucune n'a résolu le problème :**
1. `end = start + 8` au lieu de `&glyph_buf[8]` (mimant TR) -- aucun effet
   (toujours `0x1f0`).
2. Variables `u32 *tl, *start, *end;` déclarées groupées puis assignées vs
   déclarées-et-initialisées une par une (style inline) -- aucun effet.
3. Inverser l'ordre de calcul `end` avant `start` -- **régression** à
   `0x1ec` (résidu 8, pire).
4. Réduire `anchor` de 4 variables nommées (`n,b8,hw,anchor`) à 1 seule
   réassignée 4 fois -- aucun effet sur la taille (mais code plus propre,
   conservé).
5. Fusionner `shifted` dans l'expression de `tl` (une seule expression
   composée au lieu de deux statements) -- **régression** à `0x1ec`.
6. `start`/`end` via `glyph_buf`/`glyph_buf + 8` (nom de tableau) au lieu
   de `&glyph_buf[0]`/`&glyph_buf[8]` -- aucun effet.
7. Charger `color_a` une seule fois dans une variable locale `ca` partagée
   entre le calcul de `delta` et celui de `anchor` (pour supprimer un
   `ldr [sp,#0x1c4]` redondant repéré en diff normalisé) -- aucun effet
   sur la taille totale (le rechargement persiste ailleurs, `agbcp` ne
   garde pas les paramètres passés sur la pile en registre au-delà d'un
   statement, même via variable locale intermédiaire).
8. Calculer `start`/`end` AVANT `tl` (au lieu d'après, contredisant l'ordre
   du désassemblage original) -- **régression** à `0x1ec`, confirmant que
   l'ordre `tl` puis `start` puis `end` (déjà celui du désassemblage
   original) est la SEULE position qui atteint `0x1f0`.

**Diagnostic final** : le point bloquant restant est un choix d'allocation
de registre interne à `agbcp` (rattacher `end` à un registre haut `ip`
plutôt qu'un registre bas) qui n'a répondu à AUCUNE reformulation testée
de l'ordre des statements, du typage (pointeur vs entier), du nommage, ou
du regroupement des déclarations -- tous les leviers listés dans
`DECOMP_RULES.md` (règles 1-12) ont été essayés sans succès sur ce point
précis. Diff normalisé instruction-par-instruction (harnais + `objdump
-bbinary --adjust-vma` sur `baserom.gba`) confirme que **tout le reste de
la fonction (prologue, les 3 guards de validité, les 2 flags d'alignement,
le calcul has_right/has_bottom, TOUTE la boucle BL, la moitié de TR/BR) est
déjà identique à l'original au niveau mnémonique** -- le résidu de 4 octets
est concentré à 100% sur ce seul point (le calcul de `end` dans le bloc
TL).

### Verdict et repo state en fin de round (worktree w31)

**Pas de match -- 5e tentative sérieuse sur cette fonction, mais progrès
net et mesurable : résidu divisé par 6 (24 -> 4 octets) par rapport au
round précédent**, avec une lecture indépendante du désassemblage qui a
confirmé/précisé l'asymétrie des 4 blocs (jusqu'ici seulement pressentie)
et isolé la cause du résidu à UN point unique et bien caractérisé (pas une
accumulation diffuse comme les rounds précédents). Recommandation pour
Mathias, dans la continuité de round 4/w29 : le signal est maintenant assez
fort et localisé pour justifier soit (a) un round dédié qui n'itère QUE sur
ce point précis (calcul SP-relatif d'une adresse locale qui finit sur un
registre haut), en essayant des idiomes non encore testés (ex. forcer un
"anchor point" via une fausse relecture intermédiaire du buffer, ou une
réorganisation de TOUT l'ordre des 4 blocs plutôt que du seul bloc TL), soit
(b) une comparaison avec une décompilation Ghidra amont si elle existe pour
ce binaire (le point 3 de la mission), soit (c) accepter cette variante
comme fermée pour l'instant -- elle a maintenant consommé 5 rounds sérieux,
plus que le corps plain (`func_0804E4AC`, résolu en 5) sans encore
converger, mais avec un résidu résiduel bien plus petit et mieux compris
qu'à n'importe quel round précédent.

- **Aucun commit de code.** Tout le travail (candidat C, itérations, tests
  harnais) est resté dans un scratch dir hors du dépôt
  (`/tmp/w31scratch/`, jamais copié dans `src/` ni référencé dans
  `fomt.lds`). `git status --short` vide confirmé avant et après le round
  -- rien à annuler.
- Vérification effectuée : harnais compilateur seul (taille `.text` +
  diff de désassemblage borné, normalisé, contre `baserom.gba` réel via
  `objdump -bbinary -marmv4t -Mforce-thumb --adjust-vma=0x08000000`) --
  standard officiel de `DECOMP_RULES.md`, pas de `make compare` (toujours
  hors de portée pour la raison `cb06198` documentée round 10/w27, sans
  rapport avec cette fonction).
- `origin` non touché, rien poussé, pas de PR.

## Round 11 (worktree w33, branche `parallel-33`) -- placement constructors, balayage exhaustif angle 1

Consigne : reprendre l'angle "constructeurs de placement" (round 10/w24)
en vérifiant si la liste avait été balayée exhaustivement, puisqu'un autre
agent (w32) travaillait en parallèle sur les vtables/callers -- angle
volontairement différent pour éviter tout recoupement.

**Méthode** : reproduction du script du round 10/w24 (non commité à
l'époque, refait ici) -- parcours de tous les blocs `thumb_func_start` de
`asm/*.s`, filtre sur "contient un littéral `vtable_unk_ADDR` ET un `bl
__builtin_new`", croisé avec `arm-none-eabi-nm build/src/*.o | grep '
T func_'` (build propre fait au préalable, `build/franglais_stub.bin`
factice `head -c 4096 /dev/zero`) pour exclure tout ce qui est déjà porté.
153 blocs candidats trouvés au total ; la grande majorité sont de gros
`Run()` de scène qui référencent des vtables et appellent `__builtin_new`
de façon incidente (plusieurs objets construits dans un même corps), pas
la forme resserrée de constructeur de placement -- filtré manuellement en
inspectant le désassemblage brut de chaque candidat à ligne-compte réduit
(<=100 lignes, 1-2 vtables). 15 sites retenus comme correspondant
clairement à la forme "constructeur de placement" déjà documentée.

**Résultat : 15/15 matchés et commités** (`d6fabdf`) -- voir
`DECOMP_ARCHIVE.md` section "Round 11 (w33)" pour le détail complet des
noms, adresses, et des 3 sous-variantes (dont 2 réellement nouvelles :
layout inversé `func_080756B0`, layout étendu self+0xc/self+0x10
`func_0807D070`/`func_08088168`).

**Piège vécu et corrigé avant tout commit** : 4 des 15 sites
(`func_08077C40`, `func_0807B038`, `func_0807D070`, `func_0807E438`)
avaient un blob `.byte` caché (fonction non matchée, pas de
`thumb_func_start`) collé entre leur propre fin et la fonction réelle
suivante -- mon script de découpage naïf (calqué sur la méthode
`DECOMP_RULES.md`, généralisée pour gérer plusieurs cibles dans un même
fichier) capturait tout le bloc jusqu'au PROCHAIN `thumb_func_start`, donc
incluait silencieusement ce blob dans la partie "supprimée" au lieu de le
laisser dans le nouveau fichier de queue. Détecté en comparant la taille
`.text` du `.o` fraîchement compilé à l'écart d'adresse réel
(`next_addr - this_addr` calculé sur le `fomt.elf` lié) : 4 fonctions sur
15 montraient un `.o` plus PETIT que l'écart attendu (44-224 octets
manquants selon le site). Corrigé en réinjectant le blob `.byte` intact
(recopié depuis les fichiers extraits en scratch avant leur suppression)
dans le nouveau fichier `asm/code_NEXT.s`, juste avant le `thumb_func_start`
réel qui suit. Revérifié après coup : rebuild complet, `fomt.map` confirme
que tous les symboles en aval (`func_08077CE0`, `func_0807B0F0`,
`func_0807D194`, `func_0807E4B8`, et les autres fonctions déjà portées
juste après chaque site à un seul candidat) retombent exactement sur leur
adresse vanilla attendue -- aucun décalage résiduel.

**Vérification appliquée à chacun des 15, standard officiel
`DECOMP_RULES.md`** : harnais rapide (compilateur+assembleur, comparaison
octet à octet contre le désassemblage brut original) pendant le
tâtonnement, PUIS taille `.text` du `.o` du build propre comparée à
`next_addr - this_addr`, PUIS diff de désassemblage borné à cette taille
exacte contre `baserom.gba` (`--adjust-vma=0x08000000`) -- bit-exact sur
les 15. Rebuild complet propre (`rm -rf build fomt.gba fomt.elf fomt.map`)
avant le commit : lien réussi sans référence non définie ni symbole
dupliqué ; `sha1sum -c fomt.sha1` échoue comme attendu (payload franglais
intentionnellement non-vanilla, non-signal documenté dans
`DECOMP_RULES.md`). Aucune étiquette `.LADDRESS` résiduelle trouvée pour
aucune des 15 adresses matchées (`grep -rl` vérifié individuellement pour
chacune).

**État du worktree en fin de round** : propre (`git status --short`
vide), un seul commit ajouté depuis `main`/point de départ (`d6fabdf`,
15 fonctions dans un seul commit -- justifié par le fait que toutes ont
été vérifiées ensemble dans le même cycle de rebuild final, contrairement
au cas "un blob = un commit" du scan de blobs cachés qui concerne des
candidats indépendants les uns des autres). `origin` non touché, rien
poussé, pas de PR.

**Cibles explorées mais écartées pour ce round** (candidats du même scan,
risque/complexité jugés trop élevés pour ce budget, laissés pour un futur
round) :
- `func_08083A7C` (asm/code_08082184.s) : même famille mais avec 7
  paramètres au total (4 registres + 4 arguments passés sur la pile aux
  offsets `sp+0x28/0x2c/0x30/0x34`) et 7 champs stockés (self+0 à
  self+0x1c) -- ABI/layout nettement plus complexe que les 2 sous-
  variantes étendues confirmées ce round, pas tenté par prudence.
- `func_08092570` (asm/code_08090EC4.s) : la valeur "volée" de
  l'out-param est stashée sur la pile et son ADRESSE (pas la valeur) est
  passée à l'appel d'init opaque -- signature de la classe de difficulté
  "assignation de champ SmartPtr" déjà documentée comme difficile
  (7 hypothèses testées et négatives sur `func_08004C68`, cf.
  `DECOMP_ARCHIVE.md`) ; pas tenté pour ne pas rouvrir ce chantier sans
  budget dédié.
- `func_0806D8C8`, `func_080DB320`, `func_080DB658`, `func_08004B58`,
  `func_08004B94` : variantes avec dispatch virtuel de destructeur en fin
  de corps (`bl _call_via_r2` sur le champ volé) ou construction
  composite imbriquée (helper 4 ou 0xc octets construit sur pile puis
  passé à un `func_080041DC` déjà connu) -- shape différente de la
  famille standard, pas creusées faute de temps ce round, laissées comme
  piste pour un futur agent.

## Round 12 (worktree w35, branche `parallel-35`) -- reprise des 5 candidats différés round 11 (w33)

Consigne : reprendre les 5 candidats "dispatch/composite constructor"
laissés en attente par le round 11 (`func_0806D8C8`, `func_080DB320`,
`func_080DB658`, `func_08004B58`, `func_08004B94`), en commençant par
eux avant le 7-argument (`func_08083A7C`) et sans rouvrir le chantier
SmartPtr fermé (`func_08092570`).

**3/5 matchés et commités** (`8734...`/2 commits + 1 fix -- voir
`git log`) :

- `func_08004B58` (asm/new_game.s -> src/code_08004B58.cc) : variante
  "composite constructor" -- alloue un objet helper de 4 octets sur le
  tas (son propre vtable stamp), le passe par adresse-de-variable-locale
  au helper opaque déjà connu `func_080041DC` (déjà croisé round 6 dans
  l'écriture de `src/code_08004BDC.cc`, toujours non porté lui-même),
  stocke le résultat à `self+4`. Bit-exact du premier coup une fois le
  piège d'ordre ci-dessous corrigé.
- `func_08004B94` (même fichier) : même famille mais le "helper" est
  VOLÉ à un out-param appelant (`a2`, move-in convention identique aux
  constructeurs de placement "2-enfants" déjà connus) plutôt qu'alloué,
  puis, après construction, un second `bl _call_via_r2` conditionnel
  détruit l'ancienne valeur -- mais le test se fait sur une SECONDE
  lecture de `*a2` (pas la variable locale déjà volée), donc la branche
  est provablement morte À L'EXÉCUTION dans cette fonction précise, mais
  agbcp la garde car elle est écrite littéralement dans la source (pas de
  CSE/value-numbering, cf. anti-pattern #2 de `DECOMP_RULES.md`).
  **Bug de vérification vécu et corrigé DANS CE ROUND** : la première
  passe de ce match (commit initial) a été committée avec `stolen = *a2;
  *a2 = nullptr;` écrit dans l'ordre naïf -- la vérification par adresse/
  taille de symbole (`nm`) a semblé passer (taille de fonction inchangée,
  car nombre d'instructions identique, juste réordonné), mais un vrai
  diff bit-à-bit de l'ELF lié contre `baserom.gba` a révélé un registre
  ET un ordre différents (`ldr r1,[r4]` original vs `ldr r0,[r4]` chez
  nous, spill-avant-zero au lieu de zero-avant-spill). **Leçon
  généralisable pour tout futur round : ne JAMAIS s'arrêter à "l'adresse
  du symbole suivant tombe juste" comme preuve de bit-exactitude -- ce
  signal ne détecte QUE les divergences de TAILLE, pas les divergences de
  CONTENU à taille égale (permutation d'instructions, registre différent).
  Toujours faire le diff de désassemblage complet (ELF lié contre
  `baserom.gba`, `--adjust-vma=0x08000000`) avant de considérer un match
  vérifié, même quand la taille semble déjà convaincante.** Corrigé en
  routant la lecture volée via une variable temporaire NON adressée avant
  de l'aliaser à la variable dont l'adresse est prise (même piège que
  ci-dessous pour `func_08004B58`).
- `func_0806D8C8` (asm/code_08069E98.s -> src/code_0806D8C8.cc) :
  contrepartie placement-constructor du destructeur déjà matché
  `func_0806D918` (`src/code_0806D918.cc`) -- même shape que
  `func_08004B94` mais 4 registres d'arguments et allocation 0x4178
  octets via un second helper opaque encore non porté (`func_08069F14`).
  Corrigé du même piège d'ordre dès la première tentative (leçon
  appliquée immédiatement).

**Piège de "spill anticipé" généralisé, observé sur les 3 fonctions
ci-dessus** : quand le désassemblage montre `lire une valeur -> la
"garder de côté" (spill vers la pile) -> PUIS zéro la source`, écrire `T
tmp = *src; *src = nullptr;` directement en C fait agbcp spiller `tmp`
vers sa case mémoire (parce que son adresse est prise plus loin pour
l'appel du helper) **immédiatement à l'assignation**, AVANT le
zero-store -- ordre inversé par rapport à l'original qui zéro D'ABORD,
spill ENSUITE. Fix systématique : `T raw = *src; *src = nullptr; T tmp =
raw;` -- router la lecture à travers une variable intermédiaire NON
adressée avant de l'aliaser à la variable adressée force agbcp à retarder
le spill jusqu'au point où l'adresse est effectivement nécessaire,
reproduisant l'ordre et le registre (`r1` au lieu de `r0` dans ce cas)
exacts de l'original. Généralisation directe de la note déjà présente
dans `DECOMP_RULES.md` sur `func_0807EE14`/l'ordre alloc->stamp->spill.

**2/5 non résolus, caractérisés en détail pour un futur round**
(`func_080DB320` et `func_080DB658`, `asm/code_linkonce.s`, lignes
~12740 et ~12919 -- shape byte-pour-byte identique entre les deux, seule
la constante `vtable_unk_ADDR` change) :

Shape observée (16 octets de pile, `sub sp, #0x10`) :
```
    ldr r5, [r4, #4]        ; steal a1->f4
    movs r2, #0
    str r2, [r4, #4]        ; a1->f4 = 0
    ldr r3, [r4, #8]        ; plain copy a1->f8
    ldr r1, =vtable_unk_ADDR
    str r1, [r0]             ; obj->vt = vtable   (obj = fresh alloc(0xc))
    str r2, [sp, #4]         ; sp+4 = 0   (jamais relu ensuite)
    str r5, [r0, #4]         ; obj->f4 = stolen
    str r3, [r0, #8]         ; obj->f8 = plain
    str r0, [sp]              ; sp+0 = obj
    mov r1, sp
    str r1, [sp, #8]           ; sp+8 = &(sp+0)
    str r0, [sp, #0xc]          ; sp+0xc = obj  (dup, jamais relu ensuite)
    str r2, [r1]                 ; *(sp+0) = 0   (zéro via le pointeur, pas assignation directe)
    str r0, [r6]                  ; self->f0 = obj  (registre r0, pas relu depuis la pile)
    ldr r1, [sp]                   ; relit sp+0 -> toujours 0
    cmp r1, #0
    beq .Lend
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2                 ; vt->slot2(check, 3) -- branche morte à l'exécution, comme func_08004B94
.Lend:
```

**2 hypothèses testées, toutes deux négatives** (harnais rapide,
`/tmp/w35scratch/code_080DB320*.cc`, non committées) :

1. **4 locales brutes séparées** (`localB=0; obj->f4=...; obj->f8=...;
   tmp1=obj; ptmp1=&tmp1; tmp2=obj; *ptmp1=nullptr;` puis `if(tmp1)
   {...}`) -- compile mais agbcp élimine ENTIÈREMENT les 4 locales ET la
   branche (aucune trace des stores `sp+0/4/8/0xc` ni du check), preuve
   que pour des locales PUREMENT locales (adresse jamais passée à un
   appel opaque), agbcp fait bien la propagation de constante et le
   dead-code elimination inter-instructions -- contrairement à ce que
   `DECOMP_RULES.md` pourrait laisser penser ("compilateur non-
   optimisant"), cette élimination EST réelle pour ce cas précis
   (variable locale, écriture via pointeur-vers-elle-même, sans `bl`
   intermédiaire). Diffère du cas `func_08004B94`/`func_0806D8C8` où le
   check portait sur `*a2` (déréférencement d'un PARAMÈTRE pointeur,
   donc aliasing non prouvable par le compilateur) -- ici tout se passe
   sur la pile locale, sans paramètre intermédiaire, d'où l'élimination.
2. **`SmartPtr<T> local(obj); local.Move();` réel** (avec un type
   `AUnk_child_iface` doté d'un VRAI destructeur virtuel `virtual
   ~AUnk_child_iface();` pour que `delete inner` dans
   `include/smart_ptr.hh` génère le même appel vtable-slot-2/arg-3 que
   les autres fonctions de cette famille) -- hypothèse que le destructeur
   de fin de scope de `local` produirait le check+call mécaniquement,
   indépendamment de l'élimination inter-instructions. Compile, mais
   agbcp élimine ÉGALEMENT tout (this de `Move()` jamais spillé vers
   `sp+8`, pas de duplication `tmp2`, pas de check final) -- l'inlining
   des méthodes de `SmartPtr<T>` n'est PAS traité comme un "stage séparé"
   immunisé contre l'élimination : agbcp voit à travers l'inlining
   complet du corps de `Move()` + du destructeur, même chose que
   l'hypothèse 1.

**Piste NON encore testée pour un futur round** : la persistance du
check dans l'original implique que le compilateur NE PEUT PAS prouver
que `sp+0` reste à 0 entre l'écriture (`str r2,[r1]`) et la relecture
(`ldr r1,[sp]`) -- ce qui, empiriquement (hypothèses 1 et 2 ci-dessus),
n'arrive QUE quand le pointeur intermédiaire (`r1`/`ptmp1`) est lui-même
issu d'un paramètre ou d'une valeur dont la provenance n'est pas
statiquement traçable jusqu'à `sp` par agbcp -- pas un simple `&local`
littéral. Piste concrète : essayer de faire passer l'adresse
intermédiaire à travers un APPEL DE FONCTION opaque qui la retourne
(ex. un helper minuscule `void **AddrOf(void **p) { return p; }` compilé
séparément, ou -- plus vraisemblablement fidèle au vrai code source --
vérifier si `self` lui-même (`r6`, un PARAMÈTRE, pas une locale) est en
réalité le porteur de cette adresse (ex. `self` a un champ qui EST
`&local`, ou la fonction manipule en fait un membre de `self` plutôt
qu'une pile locale pure) -- relire le désassemblage en supposant que
`sp+0/4/8/0xc` ne sont PAS 4 locales indépendantes mais correspondent à
un layout de `self` accédé via une copie de `self` sur la pile (`self`
lui-même pourrait être passé par valeur/copié localement dans certains
ABI C++ pour des raisons de calling convention -- non vérifié). Cette
classe de difficulté ("assignation de champ via pointeur-vers-locale
qui résiste à l'élimination") est la MÊME famille que celle bloquant
`func_08004C68`/`func_08092570` (7+8 hypothèses déjà négatives au total
sur ce type de problème, cf. `DECOMP_ARCHIVE.md`) -- ne pas rouvrir sans
budget dédié, ou escalader vers un agent `fable` pour un angle créatif
neuf (stratégie d'escalade documentée dans `DECOMP_RULES.md`).

**Vérification appliquée aux 3 matchés** : harnais rapide pendant le
tâtonnement, PUIS (pour `func_08004B94`, après le bug ci-dessus révélé)
diff complet de désassemblage de l'ELF lié (`fomt.elf`, rebuild propre)
contre `baserom.gba` (`--adjust-vma=0x08000000`) sur la plage d'adresses
exacte de chaque fonction -- seules des différences cosmétiques
(annotations de symbole, rendu mot/demi-mot du pool littéral) subsistent,
zéro différence d'opcode réelle, pour les 3. Rebuild complet propre
(`rm -rf build fomt.gba fomt.elf fomt.map`) avant chaque commit ; lien
réussi sans référence non définie ni symbole dupliqué ; `sha1sum -c
fomt.sha1` échoue comme attendu (payload franglais non-vanilla). Aucune
étiquette `.LADDRESS` résiduelle pour aucune des 3 adresses matchées.

**État du worktree en fin de round** : propre (`git status --short`
vide), 3 commits ajoutés depuis `main` (2 matchs + 1 fix de
vérification). `origin` non touché, rien poussé, pas de PR.
