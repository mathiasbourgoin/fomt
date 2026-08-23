#include "prelude.h"

#include <string.h>

struct Unk_0809E988
{
    u32 first;
    u32 second;
};

EC void func_0809E988(Unk_0809E988 *self, u32 index, Unk_0809E988 *value)
{
    memcpy(&self[index], value, sizeof(Unk_0809E988));
}
