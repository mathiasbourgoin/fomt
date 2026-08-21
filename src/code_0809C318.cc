#include "prelude.h"

// Uncatalogued sibling of func_0809C304 (same `bl func_0809C22C` +
// indexed byte read idiom, still unported raw asm just above), reading
// 6 bytes further into self than its sibling does. Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its
// `block_pure_bytes` parsing bug was fixed this round (see
// src/code_08008AE8.cc for the full writeup of that fix).
//
// Statement order matters here (DECOMP_RULES.md rule 5): the
// disassembly computes the opaque call's result BEFORE materializing
// `self + 6` (the `adds r4, #6` happens right after the `bl`, not
// before it) -- writing the two locals in that same order reproduces
// the exact instruction sequence, whereas computing `self + 6` first
// makes agbcp fold it into the call setup instead.
EC u32 func_0809C22C(void *self);

EC u8 func_0809C318(void *self)
{
    u32 idx = func_0809C22C(self);
    u8 *base = (u8 *)self + 6;
    return base[idx];
}
