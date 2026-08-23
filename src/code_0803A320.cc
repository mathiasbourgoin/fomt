#include "prelude.h"

extern i16 gUnk_080F16D2[];

EC i32 func_0803A320(void *, u32 index)
{
    register i16 *table asm("r0") = gUnk_080F16D2;
    asm("" : "+r"(table));
    register i32 offset asm("r1") = (i16)index;
    return table[offset];
}

EC i32 func_0803A334(void *, u32 index)
{
    register i16 *table asm("r2") = gUnk_080F16D2;
    asm("" : "+r"(table));
    register i32 offset asm("r1") = (i16)index;
    asm("" : "+r"(offset));
    offset += 0x40;
    register u32 mask asm("r0") = 0xFF;
    offset &= mask;
    return table[offset];
}
