#include "prelude.h"

struct Unk_080A039C
{
    u8 pad[3];
    u8 : 2;
    u8 value : 3;
};

EC u8 func_080A039C(void *self)
{
    return ((Unk_080A039C *)self)->value;
}
