#include "prelude.h"

extern u8 vtable_unk_080E8028[];
extern u8 gUnk_081009DC[];

EC void func_0809424C(u8 *self)
{
    register void *value asm("r1") = vtable_unk_080E8028;
    asm("" : "+r"(value));
    *(void **)self = value;
    value = gUnk_081009DC;
    asm("" : "+r"(value));
    *(void **)(self + 4) = value;
    register u32 word asm("r1") = 0;
    *(u32 *)(self + 8) = word;
    word = 1;
    self[0xD] = word;
}
