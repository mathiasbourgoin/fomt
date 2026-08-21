// func_080507D0 (0x080507D0) -- called with small integer literals from
// a caller in asm/code_0804E9C8.s (see that file before the split).
// Resolved a near-miss by writing the lookup as pointer arithmetic
// instead of an array subscript -- see matching notes below.
//
// Clamps two small indices (a into [0, 7], b into a "b - 1 in [0, 6]"
// window, i.e. b in {1..7} maps to itself and everything else collapses
// to 1) and reads a byte out of the 2D table `gUnk_080F9F3C` (8 rows of
// 6 bytes each, row = idx0, column = b).
#include "prelude.h"

extern "C" u8 gUnk_080F9F3C[];

extern "C" u8 func_080507D0(u32 a, u32 b)
{
    u32 idx0 = a;
    if (idx0 > 7)
        idx0 = 0;

    if ((b - 1) > 5)
        b = 1;

    return *(gUnk_080F9F3C + idx0 * 6 + b);
}
