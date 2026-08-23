#include "prelude.h"

EC void func_08094F6C(void **out, void *object);

typedef void (*VirtualRelease)(void *self, int category);

EC void *func_0809A558(void *self, void *other)
{
    void *temporary;
    func_08094F6C(&temporary, *(void **)((u8 *)other + 4));
    if (temporary != nullptr) {
        void *vtable = *(void **)temporary;
        VirtualRelease release = *(VirtualRelease *)((u8 *)vtable + 8);
        release(temporary, 3);
    }
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
