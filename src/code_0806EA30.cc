#include "prelude.h"

struct TempLink_0806EA30
{
    void *object;
    void **link;
    void *copy;
};

struct ObjectVtable_0806EA30
{
    void (*unused0)();
    void (*unused1)();
    void (*Destroy)(void *self, int arg);
};

EC void func_0806DB38(TempLink_0806EA30 *out, void *input);

EC void *func_0806EA30(void **self, void *input)
{
    TempLink_0806EA30 temp;
    func_0806DB38(&temp, *(void **)((u8 *)input + 4));

    register void *object asm("r2") = temp.object;
    register void **stack asm("r0") = (void **)&temp;
    temp.link = stack;
    temp.copy = object;
    register void **slot asm("r1") = stack;
    register void *zero asm("r0") = 0;
    *slot = zero;
    *self = object;

    void *remaining = *(void *volatile *)&temp.object;
    if (remaining) {
        ObjectVtable_0806EA30 *vt = *(ObjectVtable_0806EA30 **)remaining;
        vt->Destroy(remaining, 3);
    }

    return self;
}
