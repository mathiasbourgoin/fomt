#include "prelude.h"

// DrawString -- vanilla-engine-facing name (was franglais_vwf_draw_string_
// plain; renamed because that name embedded the patch project's own name
// and jargon, see docs/VWF.md in the franglais patch repo for the original
// analysis this is still based on). Walks a NUL-terminated string,
// accumulates 1- or 2-byte glyph codes (code = (code << 8) | next_byte,
// cleared each time DrawGlyphAt resolves a glyph), calls DrawGlyphAt per
// code, and advances x by 8px (short/"demi-chasse" font) or 0x10px (long
// font) -- stopping once x reaches the right edge of the window
// (dims & 0xFFFF) * 8. DrawGlyphAt itself (func_0804E4AC) is not ported
// yet. Plain C, not a class method: no `this`/vtable in the disassembly,
// just (dims, dest, x, y, s) arguments -- matches the actual shape of the
// original code, not an invented OO structure.

EC u32 func_0804E4AC(u32 dims, void * dest, u32 x, u32 y, u32 code);

EC void DrawString(u32 dims, void * dest, u32 x, u32 y, char const * s)
{
    u32 right_edge_x = (dims << 16) >> 13;
    u32 code = 0;
    char c = *s;

    while (c != 0 && x < right_edge_x)
    {
        code |= (u8) c;

        u32 glyph_kind = func_0804E4AC(dims, dest, x, y, code);

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
// of `bl func_0804E8F0` sites across code_0805E760.s, code_809E804.s,
// new_game.s, etc. -- not worth touching individually) -- keep it as an
// alias onto the real definition above rather than renaming those sites.
EC void func_0804E8F0() ALIAS(DrawString);
