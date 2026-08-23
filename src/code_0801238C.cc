#include "prelude.h"

typedef void (*Method_0801238C)(void *self);

EC void func_0801238C(u8 *self)
{
    register u8 *object asm("r0") = *(u8 **)(self + 4);
    object += 0xA8;
    object = *(u8 **)object;
    register Method_0801238C *vtable asm("r4") = *(Method_0801238C **)object;
    register Method_0801238C method asm("r4") = vtable[9];
    method(object);
}
