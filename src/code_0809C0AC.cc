#include "prelude.h"

EC void func_0809C0AC(void *self, void const *value)
{
    u32 second = ((u32 const *)value)[1];
    u32 first = ((u32 const *)value)[0];
    *(u32 *)((u8 *)self + 0x10) = first;
    *(u32 *)((u8 *)self + 0x14) = second;
    *(u32 *)((u8 *)self + 0xc) = 2;
}
