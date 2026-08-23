#include "prelude.h"

EC void *GetMapData(void *map);
EC void Unpack(void *source, void *destination);

EC void func_080A5EA0(u8 *self)
{
    void *map_data = GetMapData(*(void **)(self + 4));
    void *source = *(void **)map_data;
    register u32 destination asm("r1") = 0xC0;
    asm("" : "+r"(destination));
    destination <<= 19;
    Unpack(source, (void *)destination);
}
