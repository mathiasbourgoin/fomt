#include "prelude.h"

EC void func_080ADD74(void *self, u16 value)
{
    *(u16 *)((u8 *)self + 4) = value;
}
