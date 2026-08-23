#include "prelude.h"

EC void func_0808C0BC(void *object);

EC void *func_0808C5DC(void *self, void *other)
{
    func_0808C0BC(*(void **)((u8 *)other + 4));
    void *object = *(void **)((u8 *)other + 8);
    *(void **)((u8 *)other + 8) = nullptr;
    *(void **)self = object;
    return self;
}
