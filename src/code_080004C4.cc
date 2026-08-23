#include "prelude.h"

EC u16 func_08000528(u16 value);
EC void *func_080D100C(u32 index, void *callback);
EC void func_03000958(void);

EC void func_080004C4(void)
{
    func_08000528(0xFFFF);
    *(void **)0x03007FFC = (void *)func_03000958;

    for (u32 i = 0; i <= 13; i++)
        func_080D100C(i, 0);
}
