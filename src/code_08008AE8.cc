#include "prelude.h"

// Uncatalogued duplicate: byte-for-byte the same body as func_08008AE0
// (still unported, raw asm just above this in asm/code_08008AE0.s) --
// same non-deduplicated-accessor situation already seen for
// func_08008960/0800896C (round w68). Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its `block_pure_bytes`
// parsing bug (a pure-`.byte` block immediately followed by a
// `thumb_func_start` with no blank line) was fixed this round.
EC void *func_08008AE8(void *self)
{
    return (u8 *)*(void **)self + 0xc;
}
