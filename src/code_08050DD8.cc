#include "prelude.h"

EC u8 func_08050DD8(void *self)
{
    u8 *object = *(u8 **)self;
    u8 previous = object[0xD];
    object[0xD] = 0;
    return previous;
}
