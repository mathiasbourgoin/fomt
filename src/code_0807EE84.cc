#include "prelude.h"

EC void func_0807E558(void *object);

EC void *func_0807EE84(void *self, void *other)
{
    func_0807E558(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
