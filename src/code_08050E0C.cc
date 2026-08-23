#include "prelude.h"

EC void func_08050478(void *object, u32 arg1, u32 arg2, u32 arg3,
                      u32 arg4, u32 arg5, u32 arg6, u32 arg7);

EC void func_08050E0C(void *self, u32 arg1, u32 arg2, u32 arg3,
                      u32 arg4, u32 arg5, u32 arg6, u32 arg7)
{
    func_08050478(*(void **)self, arg1, arg2, arg3,
                  arg4, arg5, arg6, arg7);
}
