#include "prelude.h"

EC u32 func_03000A1C(u32 value);

EC u16 func_080004F4(u32 value)
{
    value <<= 16;
    register u32 (*fn)(u32) asm("r1") = func_03000A1C;
    asm("" : "+r"(fn));
    return (u16)fn(value);
}
