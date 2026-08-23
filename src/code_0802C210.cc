#include "prelude.h"

EC void *__builtin_new(u32 size);
EC void *func_0802B9C0(void *self, void *context);

EC void *func_0802C210(void *context)
{
    void *self = __builtin_new(0x5C);
    return func_0802B9C0(self, context);
}
