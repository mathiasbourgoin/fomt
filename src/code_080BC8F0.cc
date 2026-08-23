#include "prelude.h"

EC void *func_080B44E0(void *object);

EC void *func_080BC8F0(void *self)
{
    return func_080B44E0(*(void **)((u8 *)self + 4));
}
