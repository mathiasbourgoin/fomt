#include "prelude.h"

struct Pair_0805E860
{
    void *first;
    void *second;
};

typedef void (*GetPair_0805E860)(Pair_0805E860 *out, void *object, void *arg);

EC void func_0805E860(void *self, void *arg)
{
    register void *object asm("r1") = *(void **)self;
    register void **vtable asm("r3") = *(void ***)object;
    asm("" : "+r"(vtable));
    Pair_0805E860 pair;
    register Pair_0805E860 *out asm("r0") = &pair;
    asm("" : "+r"(out));
    register GetPair_0805E860 get_pair asm("r3") = (GetPair_0805E860)vtable[3];
    asm("" : "+r"(get_pair));
    get_pair(out, object, arg);

    *(Pair_0805E860 *)((u8 *)self + 4) = pair;
    *(u16 *)((u8 *)self + 0xC) = 0;
    void *first = *(void **)((u8 *)self + 4);
    *(u16 *)((u8 *)self + 0xE) = *(u16 *)((u8 *)first + 2) << 8;
    *((u8 *)self + 0x12) = 1;
}
