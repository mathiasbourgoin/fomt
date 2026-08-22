# `func_0805E99C` — bounded round w107

This round tested only the two structural residues left by w106.  It did not
modify `src/`, `asm/`, or `fomt.lds`.

## Reproduction

The candidates use the same isolated harness as w106:

```sh
cd /tmp/w90s10
./try.sh /absolute/path/to/analysis/e99c_round107/candidate_best.cc
python3 cmp2.py target.bin candidate_best.text.bin -v
```

The target is the 648-byte body of `func_0805E99C` extracted in w90.  The
compiler is the repository `tools/agbcc/bin/agbcp` with the normal `-O2`
flags recorded in `/tmp/w90s10/try.sh`.

## Positive signal

`candidate_fixed_xy.cc` gives the post-affine values the hard registers
observed in the target, without writing the aliases back to the stack:

```text
final_x = r3
final_y = r1
648 / 648 bytes
303 / 303 instructions
301 / 303 structurally aligned
539 / 648 identical bytes
```

The generated code is byte-identical to the target from offset `0x16c`
through `0x196`.  This confirms that the w106 pseudos `177 -> r4` and
`180 -> r2` are precisely the incorrect x/y coloring, rather than incorrect
semantics or lifetimes.

`candidate_best.cc` additionally constrains only the `(u8)y` conversion to
`r0`.  It extends the byte-identical range through `0x19a`:

```text
648 / 648 bytes
303 / 303 instructions
301 / 303 structurally aligned
542 / 648 identical bytes
```

The first remaining final-block difference is then only the order of two
independent loads at `0x19c`/`0x19e`: the target materializes `0xFFFFFF00`
in `r2` before reloading `cur.w0` into `r1`; the candidate reloads `cur.w0`
first.  The later equivalent accumulator coloring follows from that choice.

## Falsified shaping attempts

- Generic paired `+r` constraints on x/y introduce six spill/reload
  instructions (660 bytes), so the values cannot be shaped as ordinary
  read/write operands.
- Fixing the actual accumulator `t` to `r1` inserts copies after successive
  assignments (652 bytes); it does not reproduce the target allocator state.
- Reversing the commutative operands changes combine decisions and removes
  two instructions (644 bytes); the target is not explained by source
  operand order alone.
- Empty `+r` constraints on `desc`, or on `desc` then `src`, are optimized
  away and leave the prologue unchanged.  The argument-entry RTL remains in
  ABI order (`r0`, `r1`, `r2`, `r3`), hence the candidate still emits
  `src -> sl` before `desc -> r7`; the target emits the reverse order.

## Result and next falsifiable hypothesis

No byte-exact C match was obtained in this bounded set.  The diagnostic
fixed-register aliases remain compiler probes, not integration-quality
source.

The next useful experiment is compiler-side, not another syntax permutation:
break where reload emits the two entry moves and where global allocation
assigns the first attribute accumulator.  Compare the target-producing
source family, if found, for a different pseudo creation/death order before
`global_alloc`; specifically test whether the constant-mask pseudo is made
live before the `cur.w0` reload while x/y retain `r3/r1`.  A probe is accepted
only if it simultaneously reverses the entry moves and removes the
`0x19c` load-order residue without changing the 648-byte instruction shape.

