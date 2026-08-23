#include "prelude.h"

EC u32 func_08009344(u32 **self, u32 value)
{
    u32 *target = *self;
    u32 previous = *target;
    *target = value;
    return previous;
}
