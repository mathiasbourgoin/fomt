#include "prelude.h"

// Uncatalogued duplicate: same body as func_080948FC (still unported,
// raw asm immediately following in asm/code_080948FC.s). Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its `block_pure_bytes`
// parsing bug was fixed this round (see src/code_08008AE8.cc for the
// full writeup of that fix).
EC void *func_080948F8(void *self)
{
    return (u8 *)self + 0xc;
}
