#include "prelude.h"

extern u8 gUnk_08105EDC[];

EC void *GetMapData(u32 map_id)
{
    return gUnk_08105EDC + map_id * 40;
}
