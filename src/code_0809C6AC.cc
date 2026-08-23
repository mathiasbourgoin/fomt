#include "prelude.h"

EC void func_0809C6AC(u8 *self, u32 value)
{
    *(u16 *)(self + 0xc) = value;
}

EC void func_0809C6B0(u8 *self)
{
    register u32 value asm("r1") = 0xffff;
    *(u16 *)(self + 0xc) = value;
}
