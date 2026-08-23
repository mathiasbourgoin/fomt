#include "prelude.h"

typedef void (*Method_08093FB0)(void *self, void *argument, u32 zero);

EC void func_08093FB0(u8 *self)
{
    register Method_08093FB0 *vtable asm("r2") = *(Method_08093FB0 **)self;
    asm("" : "+r"(vtable));
    register void *argument asm("r1") = **(void ***)(self + 0x14);
    asm("" : "+r"(argument));
    register Method_08093FB0 method asm("r3") = vtable[0xE];
    asm("" : "+r"(method));
    register u32 zero asm("r2") = 0;
    method(self, argument, zero);
}
