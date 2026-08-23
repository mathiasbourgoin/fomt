#include "prelude.h"

struct TempLink_080070D4
{
    void *object;
    void **link;
    void *copy;
};

struct ObjectVtable_080070D4
{
    void (*unused0)();
    void (*unused1)();
    void (*Destroy)(void *self, int arg);
};

EC void func_08005B68(TempLink_080070D4 *out, void *input);

EC void *func_080070D4(void **self, void *input)
{
    TempLink_080070D4 temp;
    func_08005B68(&temp, *(void **)((u8 *)input + 4));

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
        ObjectVtable_080070D4 *vt = *(ObjectVtable_080070D4 **)remaining;
        vt->Destroy(remaining, 3);
    }

    return self;
}
