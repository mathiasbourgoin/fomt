#include "prelude.h"

EC void func_08094974(void *, u8 *destination, const u8 *source, u32 size)
{
    for (u32 i = 0; i < size; ++i)
        destination[i] = source[i];
}
