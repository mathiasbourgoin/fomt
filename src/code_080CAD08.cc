#include "prelude.h"

// Uncatalogued 3-field setter, sitting right before the already-ported
// func_080CAD10. Field types/roles unconfirmed (kept as raw u32 words,
// `unk_`-style per DECOMP_RULES.md convention for uncertain fields).
// Assignment order matches the disassembly exactly (field+4 first,
// then field+8, then field+0 -- DECOMP_RULES.md rule 5). Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its
// `block_pure_bytes` parsing bug was fixed this round (see
// src/code_08008AE8.cc for the full writeup of that fix).
EC void func_080CAD08(void *self, u32 a, u32 b, u32 c)
{
    ((u32 *)self)[1] = a;
    ((u32 *)self)[2] = b;
    ((u32 *)self)[0] = c;
}
