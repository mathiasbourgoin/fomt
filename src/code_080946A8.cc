#include "prelude.h"

typedef void (*Method)(void *);

EC void func_080946A8(u8 *self)
{
    self[0xD] = 1;
    register Method *vtable asm("r1") = *(Method **)self;
    register Method method asm("r1") = vtable[0xB];
    method(self);
}
