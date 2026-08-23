#include "prelude.h"

EC void func_08090960(void *object);

EC void *func_08090EC4(void *self, void *other)
{
    func_08090960(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
