#include "prelude.h"

EC void func_0800FFF4(void *self, u32 value)
{
    u32 *size = (u32 *)self;
    if (*size > 0x1D)
        return;

    u32 offset = *size;
    offset += 4;
    u8 *slot = (u8 *)self + offset;
    if (slot != 0)
        *slot = value;

    ++*size;
}
