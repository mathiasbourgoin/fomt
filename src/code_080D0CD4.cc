#include "prelude.h"

EC int func_080D0CD4(u32 value)
{
    register u32 code asm("r1") = value;
    if (code > 0xffff)
        return -1;

    register u32 trail asm("r3") = 0xff;
    trail &= code;
    register u32 mask asm("r0") = 0xff;
    mask <<= 8;
    mask &= code;
    register int signed_mask asm("r0") = (int)mask;
    asm("" : "+r"(signed_mask));
    register u32 lead asm("r2") = signed_mask >> 8;
    if (trail - 0x40 > 0xbc || lead <= 0x80 || lead > 0xea || lead - 0xa0 <= 0x3f)
        return -1;

    if (lead <= 0x9f)
        lead -= 0x81;
    else
        lead -= 0xc1;
    trail -= 0x40;
    return lead * 189 + trail;
}
