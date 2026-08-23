#include "prelude.h"

EC void *func_080A5A9C(void *object);

EC void *func_0801FD3C(void *self)
{
    return func_080A5A9C(*(void **)((u8 *)self + 4));
}
