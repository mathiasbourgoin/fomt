#include "prelude.h"

EC u32 func_0803BE9C(void *self)
{
    register u8 *object asm("r0") = *(u8 **)self;
    register u32 low asm("r2") = object[0xB] >> 7;
    register u32 result asm("r0") = object[0xC] & 0x7F;
    return (result << 1) | low;
}
