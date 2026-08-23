#include "prelude.h"

EC void func_08009940(void *self, void *node)
{
    void *prev = *(void **)node;
    if (prev) {
        *(void **)prev = *(void **)((u8 *)node + 4);
        *(void **)*(void **)((u8 *)node + 4) = prev;
    }

    void *tail = *(void **)((u8 *)self + 0x10);
    *(void **)tail = node;
    *(void **)node = tail;
    *(void **)((u8 *)node + 4) = (u8 *)self + 0x10;
    *(void **)((u8 *)self + 0x10) = (u8 *)node + 4;
}
