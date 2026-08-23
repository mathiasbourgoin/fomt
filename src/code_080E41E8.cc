#include "prelude.h"

typedef void (*ReleaseFn)(void *, int);
EC void func_080007EC(void *self, int in_chrg);

EC void func_080E41E8(void *self, int in_chrg)
{
    void *child = *(void **)((u8 *)self + 4);
    if (child != 0) {
        void *vtable = *(void **)child;
        ReleaseFn release = *(ReleaseFn *)((u8 *)vtable + 8);
        release(child, 3);
    }
    func_080007EC(self, in_chrg);
}
