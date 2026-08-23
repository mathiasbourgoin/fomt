#include "prelude.h"

extern u8 gUnk_081074F6[];
EC const u8 *func_080E0E80(const u8 *first, const u8 *last, const u32 *value, u32 predicate, u32 context);

EC bool func_080ADBB4(const u8 *value)
{
    register u32 middle asm("r2") = value[0];
    register u32 low asm("r1") = middle << 30;
    asm("" : "+r"(low));
    low >>= 30;
    middle <<= 25;
    asm("" : "+r"(middle));
    middle >>= 27;
    u32 key = ((low << 4) - low) * 2 + middle;
    register const u8 *first asm("r0") = gUnk_081074F6;
    register const u8 *last asm("r4") = first;
    last += 0x1b;
    const u8 *found = func_080E0E80(first, last, &key, 0, 0);
    return found != last && key >= *found;
}
