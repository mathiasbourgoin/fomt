#include "prelude.h"

EC void func_08050664(void *object, u32 arg1, u32 arg2, u32 arg3,
                      u32 arg4, u32 arg5, u32 arg6);

EC void func_08050E30(void *self, u32 arg1, u32 arg2, u32 arg3,
                      u32 arg4, u32 arg5, u32 arg6)
{
    func_08050664(*(void **)self, arg1, arg2, arg3, arg4, arg5, arg6);
}
