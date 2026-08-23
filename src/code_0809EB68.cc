#include "prelude.h"

struct Unk_0809EB68
{
    u8 pad[0x14];
    u8 value : 4;
};

EC u8 func_0809EB68(void *self)
{
    return ((Unk_0809EB68 *)self)->value;
}
