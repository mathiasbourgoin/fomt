#include "prelude.h"

EC u32 func_08050EBC(void *self, u32 mask)
{
    register u8 *field asm("r3") = *(u8 **)self + 0x550;
    register u32 value asm("r4") = *field;
    register u32 low asm("r0") = value;
    low <<= 26;
    low >>= 26;
    asm("" : "+r"(low));

    mask |= low;
    register u32 combined asm("r1") = mask & 0x3F;
    register u32 upper asm("r2") = 0x40;
    asm("" : "+r"(upper));
    upper = -upper;
    upper &= value;
    upper |= combined;
    *field = upper;
    return low;
}
