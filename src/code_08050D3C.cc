#include "prelude.h"

EC void *func_0804F7A4(void *object, u32 arg1, u32 arg2, u32 arg3,
                       u32 arg4, u32 arg5, u32 arg6);

EC void *func_08050D3C(void **self, u32 arg1, u32 arg2, u32 arg3,
                       u32 arg4, u32 arg5, u32 arg6)
{
    return func_0804F7A4(*self, arg1, arg2, arg3, arg4, arg5, arg6);
}
