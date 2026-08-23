#include "prelude.h"

EC u32 func_08085EEC(u8 *self)
{
    register u32 offset asm("r1") = 0x43D8;
    asm("" : "+r"(offset));
    self += offset;
    register u32 value asm("r0") = *(u32 *)self;
    if (value > 1)
        value = 999;
    return value;
}
