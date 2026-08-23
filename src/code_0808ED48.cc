#include "prelude.h"

EC void func_0808E6FC(void *object);

EC void *func_0808ED48(void *self, void *other)
{
    func_0808E6FC(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
