#include "prelude.h"

EC u16 func_080004F4(u32 value);

EC u16 func_0800050C(u16 value)
{
    *(volatile u16 *)0x04000202 = value;
    return func_080004F4(value);
}
