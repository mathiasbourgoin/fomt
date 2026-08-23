#include "prelude.h"

extern const u8 gUnk_08100A36[];

EC void func_08094A00(void *, u8 *output, const u8 *input)
{
    register int count asm("r3") = 0;
    register u32 code asm("r0") = input[0];
    register const u8 *table asm("r4");
    if (code == 0)
        goto done;
    code--;
    if (code > 0x60)
        goto done;

    table = gUnk_08100A36;
loop:
    code += (u32)table;
    code = *(const u8 *)code;
    *output++ = code;
    count++;
    if (count > 11)
        goto done;
    code = input[count];
    if (code == 0)
        goto done;
    code--;
    if (code <= 0x60)
        goto loop;

done:
    *output = 0;
}
