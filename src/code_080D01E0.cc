#include "prelude.h"

extern void *gUnk_03000418;

EC void func_080D01E0(u32 *block, u8 *end)
{
    register void **global asm("r2") = &gUnk_03000418;
    asm("" : "+r"(global));
    *global = block;
    register u8 *header asm("r1") = end;
    header -= 0x10;
    asm("" : "+r"(header));
    block[0] = (u32)header;
    register u32 zero asm("r1") = 0;
    block[1] = zero;
    block[2] = zero;
    block[3] = zero;
}
