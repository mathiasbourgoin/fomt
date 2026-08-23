#include "prelude.h"

EC void func_08009968(void *, void *node)
{
    void *prev = *(void **)node;
    if (prev) {
        *(void **)prev = *(void **)((u8 *)node + 4);
        *(void **)*(void **)((u8 *)node + 4) = prev;
        *(void **)node = 0;
        *(void **)((u8 *)node + 4) = 0;
    }
}
