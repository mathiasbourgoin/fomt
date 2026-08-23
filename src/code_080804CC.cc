#include "prelude.h"

EC void func_0807F8C8(void *object);

EC void *func_080804CC(void *self, void *other)
{
    func_0807F8C8(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
