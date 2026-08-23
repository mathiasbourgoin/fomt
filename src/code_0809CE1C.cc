#include "prelude.h"

struct Unk_0809CE1C
{
    u32 first;
    u32 second;
};

EC u32 func_0809CE1C(Unk_0809CE1C *self, u32 index)
{
    register u8 *entry asm("r0") = (u8 *)self + index * sizeof(Unk_0809CE1C);
    return *(u32 *)entry;
}
