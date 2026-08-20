#include "prelude.h"

// franglais_vwf_draw_string_plain (docs/VWF.md in the franglais patch repo).
// Walks a NUL-terminated string, accumulates 1- or 2-byte glyph codes
// (code = (code << 8) | next_byte, cleared each time DrawGlyphAt resolves a
// glyph), calls DrawGlyphAt per code, and advances x by 8px (short/"demi-
// chasse" font) or 0x10px (long font) -- stopping once x reaches the right
// edge of the window (dims & 0xFFFF) * 8. DrawGlyphAt itself (func_0804E4AC)
// is not ported yet.

EC u32 func_0804E4AC(u32 dims, void * dest, u32 x, u32 y, u32 code);

EC void func_0804E8F0(u32 dims, void * dest, u32 x, u32 y, char const * s)
{
    u32 right = (dims << 16) >> 13;
    u32 code = 0;
    char c = *s;

    while (c != 0 && x < right)
    {
        code |= (u8) c;

        u32 kind = func_0804E4AC(dims, dest, x, y, code);

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
