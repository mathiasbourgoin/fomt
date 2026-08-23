#include "prelude.h"

EC void func_0806A1F4(void *destination, void *source);

struct LocalOwner
{
    void *object;
    LocalOwner *self;
    void *copy;
};

struct OwnerVtable
{
    void (*slot0)();
    void (*slot1)();
    void (*Release)(void *self, int mode);
};

EC void *func_0806D948(void *self, const void *source)
{
    register void *saved asm("r4") = self;
    volatile LocalOwner owner;
    func_0806A1F4((void *)&owner, *(void *const *)((const u8 *)source + 4));
    register void *object asm("r2") = owner.object;
    register LocalOwner *local asm("r0") = (LocalOwner *)&owner;
    asm("" : "+r"(object), "+r"(local));
    owner.self = local;
    owner.copy = object;
    register void **field asm("r1") = &local->object;
    asm("" : "+r"(field));
    *field = 0;
    *(void **)saved = object;

    void *remaining = owner.object;
    if (remaining != 0) {
        OwnerVtable *vtable = *(OwnerVtable **)remaining;
        vtable->Release(remaining, 3);
    }
    return saved;
}
