# `func_0805E99C` — round w106

This directory contains the reproducible evidence from round w106.  Nothing in
`src/`, `asm/`, or `fomt.lds` was changed: the function is still a near-match
and must remain in assembly.

## Result

Starting from the canonical w100 `t58.cc` candidate:

- target and candidate are both 648 bytes / 303 Thumb instructions;
- the baseline aligns structurally on 297/303 instructions;
- all long-lived register roles were verified automatically and already match:
  `r7=desc`, `r10=src`, `r6=width`, `r9=height`, `r8=mode`;
- the `reload1.c` hypothesis is falsified: `reload(global=1)` runs with
  `caller_save_needed=0`, and neither `save_call_clobbered_regs` nor
  `retry_global_alloc` is called;
- the two misplaced mask loads are therefore not a caller-save/retry effect.

`candidate_best.cc` is an investigative compiler-shaping candidate, not code
to merge.  Empty extended-asm constraints prove the remaining mask loads are
source-expansion / equivalence-note effects: they place both loads at exactly
the target positions.  Constraining the already-known transient roles for
shape, mode, and flags raises the score to:

```text
size                 648 / 648 bytes
instructions         303 / 303
structural alignment 301 / 303
identical bytes      534 / 648
```

The only structural differences left are:

1. the independent prologue copies `desc -> r7` and `src -> r10` are emitted
   in the opposite order;
2. the final attribute-building block uses an equivalent low-register
   coloring (beginning with the stack reload at offset `0x19c`).

The empty-asm constraints are diagnostic proof, not an acceptable decompile.
Attempts to force `x/y` directly caused extra spills and were rejected.

## Instrumentation

- `gdb_reload.gdb`: proves that retry/caller-save paths are not entered.
- `gdb_global_alloc.gdb`: logs the final global pseudo-to-hard-register map.
- `gdb_local_alloc.gdb`: logs each local quantity, lifetime, references, and
  selected hard register.

The scripts expect the canonical preprocessed candidate under `/tmp/w90s10`;
adjust the last `run` line when moving the scratch harness.

## Next falsifiable hypothesis

Reconstruct the source-level expression that makes the post-affine `x` and
`y` pseudos naturally receive `r3` and `r1` in the final attribute block,
without fixed-register variables.  The w106 trace shows the current build
assigns the corresponding global pseudos `177 -> r4` and `180 -> r2`.
Only after that coloring changes should the prologue pseudo-creation order be
revisited.  Do not resume random syntax permutations.
