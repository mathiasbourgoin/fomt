#include "prelude.h"

struct ObjectVtable_0805E698
{
    void (*unused0)();
    void (*unused1)();
    void (*Destroy)(void *self, int arg);
};

EC void func_0805D170(void **out, void *input);

EC void *func_0805E698(void **self, void *input)
{
    void *temp;
    func_0805D170(&temp, *(void **)((u8 *)input + 4));

    void *remaining = temp;
    if (remaining) {
        ObjectVtable_0805E698 *vt = *(ObjectVtable_0805E698 **)remaining;
        vt->Destroy(remaining, 3);
    }

    void *object = *(void **)((u8 *)input + 8);
    *(void **)((u8 *)input + 8) = 0;
    *self = object;
    return self;
}
