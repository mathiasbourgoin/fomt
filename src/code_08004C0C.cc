#include "prelude.h"

struct TempLink_08004C0C
{
    void *object;
    void **link;
    void *copy;
};

struct ObjectVtable_08004C0C
{
    void (*unused0)();
    void (*unused1)();
    void (*Destroy)(void *self, int arg);
};

EC void func_08004570(TempLink_08004C0C *out, void *input);

EC void *func_08004C0C(void **self, void *input)
{
    TempLink_08004C0C temp;
    func_08004570(&temp, *(void **)((u8 *)input + 4));

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
        ObjectVtable_08004C0C *vt = *(ObjectVtable_08004C0C **)remaining;
        vt->Destroy(remaining, 3);
    }

    return self;
}
