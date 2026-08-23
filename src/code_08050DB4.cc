#include "prelude.h"

EC void func_08050424(void *object, u32 arg1, u16 arg2, u32 arg3);

EC void func_08050DB4(void **self, u32 arg1, u16 arg2)
{
    func_08050424(*self, arg1, arg2, 0);
}
