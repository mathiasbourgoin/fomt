#include "prelude.h"
#include <string.h>

EC void func_08010014(void *self, const void *other)
{
    memcpy((u8 *)self + 0x24, other, 6);
}
