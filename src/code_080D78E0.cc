#include "prelude.h"

extern void *gUnk_03000410;
typedef void (*Method_080D78E0)(void *self);

EC void func_080D78E0(void)
{
    register u8 *object asm("r0") = *(u8 **)gUnk_03000410;
    asm("" : "+r"(object));
    register Method_080D78E0 *table asm("r1") = *(Method_080D78E0 **)(object + 8);
    register Method_080D78E0 method asm("r1") = table[2];
    method(object);
}
