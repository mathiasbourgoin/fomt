#include "prelude.h"

EC u32 func_0809D8A4(u32 *self)
{
    u32 result = 13;
    if (*self == 1)
        result = 28;
    return result;
}

EC u32 func_0809D8B8(u32 *self)
{
    register u32 result asm("r1") = 6;
    asm("" : "+r"(result));
    register u32 state asm("r0") = *self;
    asm("" : "+r"(state));
    if (state == 1)
        result = 28;
    else if (state == 2)
        result = 14;
    return result;
}
