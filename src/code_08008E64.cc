#include "prelude.h"

EC void func_080D0EBC(const void *source, void *destination, u32 control, void *channel);

EC void func_08008E64(const void *source, void *destination, u32 count)
{
    if (source == 0 || destination == 0)
        return;

    register const void *saved asm("r4") = source;
    register u32 control asm("r2") = count;
    if (control == 0)
        goto zero_control;
    {
        register u32 alignment asm("r3") = (u32)saved;
        alignment |= (u32)destination;
        alignment |= control;
        register u32 test asm("r0") = 1;
        test &= alignment;
        if (test != 0)
            goto zero_control;
        test = 3;
        alignment &= test;
        if (alignment == 0) {
            test = control << 14;
            control = test >> 16;
            test = 0x84;
            test <<= 24;
            control |= test;
        } else {
            test = control << 15;
            control = test >> 16;
            test = 0x80;
            test <<= 24;
            control |= test;
        }
    }
    goto perform;
zero_control:
    control = 0;
perform:
    func_080D0EBC(saved, destination, control, (void *)0x040000D4);
}
