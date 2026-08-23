#include "prelude.h"

EC void func_0807D218(void *object);

EC void *func_0807DDA8(void *self, void *other)
{
    func_0807D218(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
