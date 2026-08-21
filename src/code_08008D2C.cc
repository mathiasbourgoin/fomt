#include "prelude.h"

// 2 uncatalogued functions found immediately after func_08008D10 (itself
// found in the same sweep as a still-unported raw asm function, see
// asm/code_08008D10.s -- its 4th argument near-miss, an "index 5"
// materialized via a literal-pool load + `lsls #24`/`lsrs #24` byte
// extraction rather than a direct `movs r1, #5`, resisted every C
// reformulation tried this round; not a simple integer literal in the
// real source, root cause not found).
//
// self->field0 (u32 at offset 0) += / -= 0x40 -- no return value used by
// any known caller.
EC void func_08008D2C(void *self)
{
    *(u32 *)self += 0x40;
}

EC void func_08008D34(void *self)
{
    *(u32 *)self -= 0x40;
}
