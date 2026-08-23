#include "prelude.h"

EC void func_080D3778(const u8 *source, u8 *destination, u32 size)
{
    u32 remaining = size - 1;
    if (size == 0)
        return;

    do {
        *destination++ = *source++;
        --remaining;
    } while (remaining != (u32)-1);
}
