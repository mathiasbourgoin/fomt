# `func_0805E99C` — bounded round w108

This round resumes the w107 compiler-shaping candidate without changing
`src/`, `asm/`, or `fomt.lds`.  The function therefore remains implemented by
the original assembly.

## Reproduction

The measurements use the same isolated harness and 648-byte target as w106
and w107:

```sh
cd /tmp/w90s10
./try.sh /absolute/path/to/analysis/e99c_round108/candidate_best.cc
python3 cmp2.py target.bin candidate_best.text.bin -v
```

The compiler is the repository `tools/agbcc/bin/agbcp` with the normal `-O2`
flags recorded in `/tmp/w90s10/try.sh`.

## Verified improvement

Three source-level changes compose without changing the target size:

1. a local loop cursor (`p = src`) makes the two independent ABI copies in
   the prologue appear in the target order;
2. materializing `(u8)y` and `0xFFFFFF00` before their expression puts the
   two final-block loads in the target order;
3. restoring the natural four-`u16` `AffineSet` assignments lets agbcp's
   `store_bit_field` machinery reproduce the coefficient block without the
   diagnostic fixed-register mask aliases used in w107.

Measured cumulatively, using the same comparator as w107:

```text
candidate                       size   instructions   structural   identical
w107 candidate_best             648    303            301/303      542/648
w108 + local cursor             648    303            302/303      546/648
w108 + separate y/mask          648    303            303/303      550/648
w108 + natural AffineSet        648    303            303/303      556/648
```

The best candidate is now structurally identical on all 303 Thumb
instructions.  The 92 differing bytes are register-color encodings (plus the
usual unresolved external `bl` relocation in the isolated object), not added,
removed, or reordered instructions.

`candidate_best.cc` still contains the w107 fixed-register diagnostic aliases
for shape, mode, flags, final x/y, and the y byte.  It remains a compiler
probe, not integration-quality source.

## Falsified focused experiments

- Replacing the OAM word operations by the apparently natural 32-bit C++
  bitfields grows the body to 660 bytes and the frame from 44 to 48 bytes.
  agbcp introduces an extra spill, so that representation is not the target
  source form.
- Naming the two flip temporaries preserves 303 instructions but regresses to
  554 identical bytes.
- Reversing the first final-attribute OR regresses to 301/303 structurally and
  541 identical bytes.
- Splitting that OR into explicit `&=` / `|=` statements also regresses to
  301/303 and 540 identical bytes.
- Materializing the mode bits before the RMW restores 303/303 but regresses to
  548 identical bytes.

These results reject further operand-order permutations as the next step.

## Remaining falsifiable hypothesis

The first remaining register-color difference is the horizontal-flip block at
offset `0x90`: the target gives the bit value to `r1` and the masked word to
`r0`, while the candidate chooses the inverse coloring.  The later differences
are the same kind of equivalent coloring in the descriptor-field and final
attribute chains (first divergence there at `0x1b0`).

The next useful experiment is to trace `local-alloc` for the quantities born
at the `0x90` flip expression and at the first final-attribute RMW, recording
their birth/death, reference count, suggestion, conflicts, and sorted
allocation order.  A source change should only be attempted after one of those
inputs differs from the target model; blind syntax permutations are now
falsified.

