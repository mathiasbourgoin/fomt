#include "prelude.h"

EC void func_080A25B0(void **out, void *object);

typedef void (*VirtualRelease)(void *self, int category);

EC void *func_080A3774(void *self, void *other)
{
    void *temporary;
    func_080A25B0(&temporary, *(void **)((u8 *)other + 4));
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
