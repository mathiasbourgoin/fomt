#include "prelude.h"

EC u32 func_080D101C(void *object, u16 value);

EC u16 func_08000540(void *object, u16 value)
{
    return (u16)func_080D101C(object, value);
}
