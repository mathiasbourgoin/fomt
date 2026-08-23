#include "prelude.h"

EC u32 func_080A0490(void *);

EC u32 func_080A0504(void *self)
{
    register u32 value asm("r1") = func_080A0490(self);
    register u32 result asm("r0") = (u32)-(i32)value;
    result |= value;
    return result >> 31;
}
