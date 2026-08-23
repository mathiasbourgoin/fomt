#include "prelude.h"

EC void func_08081BBC(void *object);

EC void *func_08082184(void *self, void *other)
{
    func_08081BBC(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
