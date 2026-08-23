#include "prelude.h"

EC u32 func_08033914(u32 value)
{
    register u32 scale asm("r1") = 0xC0;
    asm("" : "+r"(scale));
    scale <<= 9;
    asm("" : "+r"(scale));
    value += 1;
    value *= scale;
    value >>= 8;
    scale = 0x80;
    asm("" : "+r"(scale));
    scale <<= 8;
    return value + scale;
}
