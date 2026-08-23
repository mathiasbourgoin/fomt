#include "prelude.h"

extern const u8 gUnk_08100A36[];

EC void func_08094994(void *, u8 *output, const u8 *input)
{
    register u8 *saved_output = output;
    register const u8 *cursor asm("r4") = input;
    register u32 count asm("r5") = 0;
    register u32 first asm("ip");
    register u8 *destination asm("r2");
    register u32 character asm("r1");
    register u32 index asm("r3");
    register const u8 *table asm("r6");

    if (*cursor == 0)
        goto done;
    first = gUnk_08100A36[0];
    destination = saved_output;

loop:
    character = *cursor++;
    index = 0;
    if (character == first)
        goto found;
    table = gUnk_08100A36;
lookup:
    {
        register u32 next asm("r0") = index + 1;
        index = (u8)next;
    }
    if (index > 0x60)
        goto invalid;
    {
        register u32 entry asm("r0") = index;
        entry += (u32)table;
        if (character != *(const u8 *)entry)
            goto lookup;
    }
found:
    if (index <= 0x60)
        goto valid;

invalid:
    *destination = 0;
    goto done;

valid:
    {
        register u32 encoded asm("r0") = index + 1;
        *destination = encoded;
    }
    destination++;
    count++;
    if (count > 11)
        goto done;
    if (*cursor != 0)
        goto loop;

done:
    if (count <= 12) {
        register u32 zero asm("r2") = 0;
        do {
            saved_output[count++] = zero;
        } while (count <= 12);
    }
}
