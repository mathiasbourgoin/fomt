#include "prelude.h"

struct Unk_0809ECD8
{
    u8 pad[0x14];
    u8 value : 6;
};

EC u8 func_0809ECD8(void *self)
{
    return ((Unk_0809ECD8 *)self)->value;
}
