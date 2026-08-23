#include "prelude.h"

extern u32 gUnk_03000450[];
extern u16 gUnk_03000430[];

EC u32 func_080D100C(u32 index, u32 value)
{
    register u32 *entry asm("r2") = gUnk_03000450;
    entry += index;
    register u32 old asm("r0") = *entry;
    *entry = value;
    return old;
}

EC u32 func_080D101C(u32 index, u16 value)
{
    register u16 *entry asm("r2") = gUnk_03000430;
    entry += index;
    register u32 old asm("r0") = *entry;
    *entry = value;
    return old;
}
