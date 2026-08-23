#include "prelude.h"

typedef u32 (*Method)(void *);

EC u32 func_0801FAA8(void *self)
{
    register Method *vtable asm("r2") = *(Method **)self;
    register Method method asm("r2") = vtable[0x10];
    return method(self);
}

EC u32 func_0801FAB8(void *self)
{
    register Method *vtable asm("r2") = *(Method **)self;
    register Method method asm("r2") = vtable[0x11];
    return method(self);
}
