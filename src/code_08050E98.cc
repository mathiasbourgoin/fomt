#include "prelude.h"

EC u32 func_08050E98(void *self, u32 mask)
{
    register u8 *field asm("r3") = *(u8 **)self + 0x550;
    register u32 value asm("r4") = *field;
    register u32 low asm("r0") = value;
    low <<= 26;
    low >>= 26;
    asm("" : "+r"(low));
    register u32 result asm("r2");
    result = low;
    result &= ~mask;
    mask = (u32)-64;
    mask &= value;
    mask |= result;
    *field = mask;
    return low;
}
