#include "prelude.h"

EC void func_08009984(void *self)
{
    u8 *base = (u8 *)self;
    void *node = *(void **)(base + 0xC);
    void *sentinel = base + 0x10;

    while (node != sentinel) {
        void *current = node;
        node = *(void **)((u8 *)node + 4);
        *(void **)current = 0;
        *(void **)((u8 *)current + 4) = 0;
    }

    *(void **)(base + 0xC) = base + 0x10;
    *(void **)(base + 0x10) = base + 0xC;
}
