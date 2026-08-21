#include "prelude.h"

// DrawGlyphAtRecolor -- recoloring variant of DrawGlyphAt, the per-glyph
// blitter of the variable-width-font text system; naming follows the same
// vanilla-engine style as DrawGlyphAt in src/code_0804E4AC.cc and its
// caller DrawStringRecolor in src/code_0804E958.cc.
//
// Same 4-quadrant structure as the plain body (TL always, BL if a row
// below fits, TR/BR right column for wide glyphs), but instead of a raw
// CpuFastSet copy, each quadrant runs an inline per-word recolor loop:
// for each source word v of 8 4-bit pixels,
//   lo = (v | v >> 1) & 0x11111111  (1 where the pixel is nonzero)
//   out = anchor + delta * lo + ((v >> 1) & 0x11111111)
// where anchor spreads color_a's low nibble over all 8 nibbles and
// delta = color_b - color_a. Pixel-unaligned positions are delegated
// whole to func_0804E9CC (unaligned recolor blitter, still asm).
// Returns the resolved glyph kind (0 invalid, 1 narrow, 2 wide).
//
// MATCHING-CRITICAL SHAPES -- do not "clean up" (each one was isolated
// empirically against agbcp's allocator; see SESSION_NOTES.md, rounds
// 10/w22, 3/w27, 4/w29, 5/w31, 6/w34 and the final w66 round for the
// complete history of this function's six failed attempts):
//  - `right_tmp` is ONE variable serving two unrelated roles: the TR
//    block's recolor anchor AND the BR block's address accumulator.
//    This is the decisive shape that ended six rounds of near-misses:
//    the merged pseudo's reference count wins the r2 allocation race
//    against the TR loop-bound pointer, which no per-block formulation
//    could reproduce (the recolor twin of the plain body's shared
//    `right_addr`).
//  - the `start`/`stop` copies feeding TR's src/end are explicit local
//    copies whose extra references park the TR source pointer in r5;
//    without them it steals r2 and the whole block reallocates.
//  - `row_product`/`delta` are function-scope copies of the warm TL
//    locals `rp`/`d`, assigned AFTER the TL loop bounds are computed
//    (their assignments ARE the str [sp,#0x9c] / mov sb,r6 pair); the
//    TL loop reads the warm locals, later blocks read the copies --
//    same read-from-a-different-home idiom as the plain body.
//  - `rp = tile_y * width_tiles` (this operand order, rule 5bis applied
//    to muls): width_tiles must be the value moved into the scratch
//    register, so the product lands in a temp and the copy into
//    tile_y's dying register is materialized; the reversed order lets
//    the multiply accumulate in place and desyncs tile_y/the CSE'd 7.
//  - flags use a compute-in-temp-then-store-once shape (`hr`/`hb`/`rb`
//    assigned to the memory-homed vars in one statement each), not
//    direct stores.
//  - TL/BL fold their address to `(sum) + dest` in one statement each;
//    TR/BR build theirs by successive reassignments of one variable
//    (the plain body's BR idiom), with BR's sum written
//    `tile_x + width_tiles * row_below` (operands reversed vs TL/BL).
//  - `anchor` is recomputed inside each block (never hoisted), `delta`
//    is computed once in TL; the 0x11111111 mask is a bare literal at
//    every use (a named variable changes the loop-bound allocation).

EC u32 func_080D0D28(void * buf, u32 code);
EC void func_0804E9CC(u32 dims, void * dest, u32 x, u32 y, void * buf, u32 color_a, u32 color_b);

EC u32 DrawGlyphAtRecolor(u32 dims, void * dest, u32 x, u32 y, u32 code, u32 color_a, u32 color_b)
{
    u32 glyph_buf[32];

    u32 kind = func_080D0D28(glyph_buf, code);

    if ((u32)(kind - 1) <= 1)
    {
        u32 tile_x = x >> 3;
        u32 tile_y = y >> 3;
        u32 width_tiles = (dims << 16) >> 16;
        u32 height_tiles = dims >> 16;
        u32 grid_rows = height_tiles;
        u32 x_ok, y_ok, has_right, has_bottom, row_below;
        u32 row_product, delta;

        if (tile_x >= width_tiles)
            goto out;

        if (tile_y >= height_tiles)
            goto out;

        x_ok = 0;

        if ((x & 7) == 0)
            x_ok = 1;

        if (x_ok)
        {
            y_ok = 0;

            if ((y & 7) == 0)
                y_ok = 1;

            if (y_ok)
            {
                u32 hr = 0;
                u32 hb, rb;

                if (tile_x + 1 < width_tiles)
                    hr = 1;

                has_right = hr;

                hb = 0;
                rb = tile_y + 1;
                row_below = rb;

                if (rb < grid_rows)
                    hb = 1;

                has_bottom = hb;

                {
                    u32 rp = tile_y * width_tiles;
                    u32 sum = (rp + tile_x) << 5;
                    u32 d = color_b - color_a;
                    u32 n = 0xF & color_a;
                    u32 anchor;
                    u32 *src, *end, *dst;

                    n |= n << 4;
                    n |= n << 8;
                    anchor = (n << 16) | n;

                    dst = (u32 *)(sum + (u32)dest);
                    src = glyph_buf;
                    end = glyph_buf + 8;
                    row_product = rp;
                    delta = d;

                    while (src != end)
                    {
                        u32 v = *src++;
                        u32 lo = v & 0x11111111;
                        u32 hi = (v >> 1) & 0x11111111;
                        lo |= hi;
                        *dst++ = anchor + d * lo + hi;
                    }
                }

                if (has_bottom)
                {
                    u32 sum = (width_tiles * row_below + tile_x) << 5;
                    u32 d = delta;
                    u32 n = 0xF & color_a;
                    u32 anchor;
                    u32 *src, *end, *dst;

                    n |= n << 4;
                    n |= n << 8;
                    anchor = (n << 16) | n;

                    dst = (u32 *)(sum + (u32)dest);
                    src = glyph_buf + 16;
                    end = glyph_buf + 24;

                    while (src != end)
                    {
                        u32 v = *src++;
                        u32 lo = v & 0x11111111;
                        u32 hi = (v >> 1) & 0x11111111;
                        lo |= hi;
                        *dst++ = anchor + d * lo + hi;
                    }
                }

                if (has_right && kind > 1)
                {
                    u32 addr = row_product + tile_x;
                    u32 d, right_tmp;
                    addr = (addr << 5) + (u32)dest;
                    u32 n;
                    u32 *src, *end, *dst;

                    d = delta;
                    n = 0xF & color_a;
                    n |= n << 4;
                    n |= n << 8;
                    right_tmp = (n << 16) | n;

                    dst = (u32 *)(addr + 0x20);
                    {
                        u32 *start = glyph_buf + 8;
                        u32 *stop = start + 8;
                        src = start;
                        end = stop;
                    }

                    while (src != end)
                    {
                        u32 v = *src++;
                        u32 lo = v & 0x11111111;
                        u32 hi = (v >> 1) & 0x11111111;
                        lo |= hi;
                        *dst++ = right_tmp + d * lo + hi;
                    }

                    if (has_bottom)
                    {
                        u32 d2, n2, anchor2;
                        u32 *src2, *end2, *dst2;

                        right_tmp = tile_x + width_tiles * row_below;
                        right_tmp = (right_tmp << 5) + (u32)dest;
                        d2 = delta;
                        n2 = 0xF & color_a;
                        n2 |= n2 << 4;
                        n2 |= n2 << 8;
                        anchor2 = (n2 << 16) | n2;

                        dst2 = (u32 *)(right_tmp + 0x20);
                        src2 = glyph_buf + 24;
                        end2 = glyph_buf + 32;

                        while (src2 != end2)
                        {
                            u32 v = *src2++;
                            u32 lo = v & 0x11111111;
                            u32 hi = (v >> 1) & 0x11111111;
                            lo |= hi;
                            *dst2++ = anchor2 + d2 * lo + hi;
                        }
                    }
                }

                goto out;
            }
        }

        func_0804E9CC(dims, dest, x, y, glyph_buf, color_a, color_b);

    out:
        return kind;
    }

    return 0;
}

// asm/*.s call sites still reach this through its address-name symbol --
// keep the compatibility alias on the real definition.
EC u32 func_0804E5AC() ALIAS(DrawGlyphAtRecolor);
