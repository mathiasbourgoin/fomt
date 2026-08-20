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
||||||| 43c9148

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
||||||| 43c9148

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
||||||| 43c9148

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
||||||| 43c9148

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
||||||| 43c9148

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
||||||| 43c9148

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
||||||| 43c9148

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
||||||| 3bf9cbd

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
