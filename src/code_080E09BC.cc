#include "prelude.h"

typedef void (*ReleaseFn)(void *, int);
EC void func_0800080C(void *self, int in_chrg);

EC void func_080E09BC(void *self, int in_chrg)
{
    void *child = *(void **)((u8 *)self + 4);
    if (child != 0) {
        void *vtable = *(void **)child;
        ReleaseFn release = *(ReleaseFn *)((u8 *)vtable + 8);
        release(child, 3);
    }
    func_0800080C(self, in_chrg);
}
