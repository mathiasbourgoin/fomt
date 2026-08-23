#include "prelude.h"

EC void *func_080CC70C(u8 *self, u32 index)
{
    register u8 *base asm("r2") = self;
    register u32 result asm("r0") = index << 1;
    result += index;
    result <<= 2;
    result += (u32)base;
    register u32 offset asm("r1") = 0x86;
    asm("" : "+r"(offset));
    offset <<= 2;
    result += offset;
    return (void *)result;
}
