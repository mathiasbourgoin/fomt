#include "prelude.h"

extern u8 gUnk_080F1A66[];
EC const u8 *func_080E0E80(const u8 *first, const u8 *last, const u32 *value, u32 predicate, u32 context);

EC bool func_0803D644(u32 group, u32 index)
{
    register u32 adjusted asm("r2") = ((group << 4) - group) * 2;
    adjusted -= 1;
    asm("" : "+r"(adjusted));
    u32 key = adjusted + index;
    register const u8 *first asm("r0") = gUnk_080F1A66;
    register const u8 *last asm("r4") = first;
    last += 0xe;
    const u8 *found = func_080E0E80(first, last, &key, 0, 0);
    return found != last && key >= *found;
}
