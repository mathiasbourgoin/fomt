#include "prelude.h"

extern u16 gUnk_08107FC6[];

EC u16 func_080C0B58(u8 *self)
{
    register u16 *table asm("r1") = gUnk_08107FC6;
    register u32 offset asm("r2") = 0xc3;
    asm("" : "+r"(offset));
    offset <<= 3;
    register u32 index asm("r0") = *(u32 *)(self + offset);
    index <<= 1;
    asm("add %0, %1" : "+r"(index) : "r"(table));
    return *(u16 *)index;
}
