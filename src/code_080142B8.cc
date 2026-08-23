#include "prelude.h"

typedef void (*Method_080142B8)(void *self);

EC void func_080142B8(u8 *self)
{
    register u8 *object asm("r0") = *(u8 **)(self + 4);
    object += 0xA8;
    object = *(u8 **)object;
    register u8 *vtable asm("r2") = *(u8 **)object;
    register u32 offset asm("r3") = 0x8C;
    asm("" : "+r"(offset));
    offset <<= 1;
    vtable += offset;
    register Method_080142B8 method asm("r2") = *(Method_080142B8 *)vtable;
    method(object);
}

EC void func_080142D4(u8 *self)
{
    register u8 *object asm("r0") = *(u8 **)(self + 4);
    object += 0xA8;
    object = *(u8 **)object;
    register u8 *vtable asm("r1") = *(u8 **)object;
    register u32 offset asm("r2") = 0x8E;
    asm("" : "+r"(offset));
    offset <<= 1;
    vtable += offset;
    register Method_080142B8 method asm("r1") = *(Method_080142B8 *)vtable;
    method(object);
}
