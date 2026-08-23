#include "prelude.h"

EC void func_0808114C(void *object);

EC void *func_08081AB0(void *self, void *other)
{
    func_0808114C(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
