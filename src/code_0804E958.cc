#include "prelude.h"

// franglais_vwf_draw_string_recolor (docs/VWF.md in the franglais patch
// repo). Same accumulate-and-advance loop as func_0804E8F0
// (franglais_vwf_draw_string_plain), but forwards a pair of recolor
// (anchor, target) colors to DrawGlyphAt-recolor (func_0804E5AC, still
// asm) on every call.

EC u32 func_0804E5AC(u32 dims, void * dest, u32 x, u32 y, u32 code, u32 color_a, u32 color_b);

EC void func_0804E958(u32 dims, void * dest, u32 x, u32 y, char const * s, u32 color_a, u32 color_b)
{
    u32 right = (dims << 16) >> 13;
    u32 code = 0;
    char c = *s;

    while (c != 0 && x < right)
    {
        code |= (u8) c;

        u32 kind = func_0804E5AC(dims, dest, x, y, code, color_a, color_b);

        switch (kind)
        {
        case 1:
            code = 0;
            x += 8;
            break;
        case 0:
            break;
        case 2:
            code = 0;
            x += 0x10;
            break;
        default:
            return;
        }

        s++;
        c = *s;
        code <<= 8;
    }
}
