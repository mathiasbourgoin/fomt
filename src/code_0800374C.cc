#include "prelude.h"

struct TempLink
{
    void *object;
    void **link;
    void *copy;
};

struct ObjectVtable
{
    void (*unused0)();
    void (*unused1)();
    void (*Destroy)(void *self, int arg);
};

EC void func_08000D64(TempLink *out, void *input);

EC void *func_0800374C(void **self, void *input)
{
    TempLink temp;
    func_08000D64(&temp, *(void **)((u8 *)input + 4));

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
        ObjectVtable *vt = *(ObjectVtable **)remaining;
        vt->Destroy(remaining, 3);
    }

    return self;
}
