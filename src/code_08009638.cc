#include "prelude.h"

EC u32 func_08000528(u32 value);
EC void func_080099B0(void *self, void *other);
EC void func_080004F4(void);

EC void func_08009638(void *self, void *other)
{
    volatile u16 active;
    register void *saved asm("r6") = self;
    register void *argument asm("r8") = other;
    register volatile u16 *slot asm("r5") = &active;
    register u32 one asm("r4") = 1;
    one &= func_08000528(1);
    *slot = one;
    func_080099B0(saved, argument);
    register volatile u16 *check asm("r1") = &active;
    if (*check != 0)
        func_080004F4();
}
