#include "prelude.h"

EC void CpuFastSet(const void *source, void *dest, u32 control);

EC void func_0804E7A0(u32 dimensions, void *dest, u32 color)
{
    register u32 fill asm("r3") = color & 0xF;
    register u32 shifted asm("r2");
    shifted = fill << 4;
    fill |= shifted;
    shifted = fill << 8;
    fill |= shifted;
    shifted = fill << 16;
    fill |= shifted;
    u32 count = (u16)dimensions * ((dimensions >> 16) << 5);
    u32 stored = fill;
    CpuFastSet(&stored, dest, ((count >> 2) & 0x001FFFFF) | 0x01000000);
}
