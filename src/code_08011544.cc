#include "prelude.h"

struct Unk_08011544
{
    u32 first;
    u32 second;
    u8 state;
};

EC void func_08011544(Unk_08011544 *self)
{
    self->second = self->first;
    self->state = 2;
}
