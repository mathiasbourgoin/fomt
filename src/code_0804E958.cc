#include "prelude.h"

// franglais_vwf_draw_string_recolor (docs/VWF.md in the franglais patch
// repo). Same accumulate-and-advance loop as franglais_vwf_draw_string_plain
// (code_0804E8F0.cc), but forwards a pair of recolor (anchor, target)
// colors to DrawGlyphAt-recolor (func_0804E5AC, still asm) on every call.

EC u32 func_0804E5AC(u32 dims, void * dest, u32 x, u32 y, u32 code, u32 color_a, u32 color_b);

EC void franglais_vwf_draw_string_recolor(u32 dims, void * dest, u32 x, u32 y, char const * s, u32 color_a, u32 color_b)
{
    u32 right_edge_x = (dims << 16) >> 13;
    u32 code = 0;
    char c = *s;

    while (c != 0 && x < right_edge_x)
    {
        code |= (u8) c;

        u32 glyph_kind = func_0804E5AC(dims, dest, x, y, code, color_a, color_b);

        switch (glyph_kind)
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

// asm/*.s callers still reference this by its address-name symbol (dozens
// of `bl func_0804E958` sites across code_0804E9C8.s, code_0805E760.s,
// code_809E804.s, etc. -- not worth touching individually) -- keep it as
// an alias onto the real definition above rather than renaming those
// sites.
EC void func_0804E958() ALIAS(franglais_vwf_draw_string_recolor);
