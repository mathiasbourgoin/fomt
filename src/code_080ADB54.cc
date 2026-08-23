#include "prelude.h"

typedef void (*ObjectDestructor)(void *object, int arg);

EC void func_080ADB54(void *self, u32 index)
{
    u8 *base = (u8 *)self + 8;
    index <<= 2;
    void **slot = (void **)(base + index);
    void *object = *slot;
    if (object) {
        void **vtable = *(void ***)((u8 *)object + 0x14);
        ((ObjectDestructor)vtable[2])(object, 3);
        *slot = 0;
    }
}
