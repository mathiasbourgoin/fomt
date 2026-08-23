#include "prelude.h"

EC void func_0807EF90(void *object);

EC void *func_0807F5F0(void *self, void *other)
{
    func_0807EF90(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
