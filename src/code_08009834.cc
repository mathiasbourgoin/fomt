#include "prelude.h"

EC void func_08009834(void *self)
{
    u8 *base = (u8 *)self;
    u8 old_count = base[0];
    u8 new_count = base[1];

    if (old_count > new_count) {
        u8 *current = base + 4 + new_count * 8;
        u8 *end = base + 4 + old_count * 8;
        do {
            current[1] = 2;
            current += 8;
        } while (current != end);
    }

    base[0] = new_count;
    base[2] = base[3];
}
