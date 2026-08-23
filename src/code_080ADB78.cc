#include "prelude.h"

EC void *func_080A5A9C(void *object);

EC void *func_080ADB78(void *self)
{
    return func_080A5A9C(*(void **)((u8 *)self + 4));
}
