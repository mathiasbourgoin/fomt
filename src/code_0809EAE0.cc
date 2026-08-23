#include "prelude.h"

struct Unk_0809EAE0
{
    u8 pad[0x26];
    u8 flag : 1;
};

EC u8 func_0809EAE0(u8 *self)
{
    return ((Unk_0809EAE0 *)self)->flag;
}
