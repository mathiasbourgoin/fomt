#include "prelude.h"

typedef void (*ReleaseFn)(void *, int);
extern u32 __vt_7AEntity[];
EC void __builtin_delete(void *object);

EC void func_080E4510(void *self, int in_chrg)
{
    *(void **)((u8 *)self + 0x14) = __vt_7AEntity;
    void *child = *(void **)((u8 *)self + 0x10);
    if (child != 0) {
        void *vtable = *(void **)((u8 *)child + 4);
        ReleaseFn release = *(ReleaseFn *)((u8 *)vtable + 8);
        release(child, 3);
    }
    if (in_chrg & 1)
        __builtin_delete(self);
}
