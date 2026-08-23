#include "prelude.h"

extern u16 gUnk_08107458[];

EC u32 func_080AAF28(u32 first, u32 second)
{
    register u32 offset asm("r1") = second;
    offset <<= 24;
    asm("" : "+r"(offset));
    register u16 *table asm("r2") = gUnk_08107458;
    asm("" : "+r"(table));
    offset >>= 23;
    first <<= 2;
    offset += first;
    offset += (u32)table;
    return *(u16 *)offset;
}
