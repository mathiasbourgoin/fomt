#include "prelude.h"
#include "gbasvc.h"

// DrawGlyphAt -- per-glyph blitter of the variable-width-font text system
// (see docs/VWF.md in the franglais patch repo for the original analysis
// this is based on; the name follows the vanilla-engine naming style, same
// convention as DrawString/DrawStringRecolor in src/code_0804E8F0.cc and
// src/code_0804E958.cc, the two loops that call this per glyph code).
//
// Resolves `code` into up to 4 8x8 tiles (32 bytes each) in a local
// 128-byte buffer via func_080D0D28 (glyph resolver, still asm), then
// blits them into the tile-grid window at `dest`: TL always, BL if a row
// below fits, TR/BR (the right column) only for wide glyphs (kind == 2).
// Pixel-unaligned positions are delegated whole to func_0804E9C8 (the
// unaligned blitter, still asm). Returns the resolved glyph kind
// (0 invalid, 1 narrow, 2 wide) -- DrawString advances x by it.
//
// Plain C, not a class method: no `this`/vtable in the disassembly, flat
// (dims, dest, x, y, code) arguments, same as the DrawString pair.
//
// MATCHING-CRITICAL SHAPES -- do not "clean up" (each was needed to match
// the original allocator's output, see SESSION_NOTES.md rounds 3/6/7/8 +
// this round for the full history of this function's 2-byte near-miss):
//  - `br_tile_x` and `grid_rows` are REDUNDANT COPIES of tile_x and
//    height_tiles. They are what finally reproduced the "phantom"
//    spill/reload of tile_x (str [sp,#0x84] at definition, ldr at the BR
//    blit only) that 3 previous reconstructions could not: the copy gets
//    no register (r4-r7 + r8/sb/sl are all committed) so its init IS the
//    str and its single use IS the ldr. Same idiom for grid_rows (guard
//    reads the warm height_tiles temp in r0, has_bottom reads the copy's
//    home in ip).
//  - `right_addr` is ONE variable shared by the TR and BR blits (assigned
//    in two different blocks -> global pseudo -> no local register tying
//    -> reproduces the original's mov/adds 3-op sequence at BR).
//  - the BR address is built by three successive reassignments, not one
//    expression (each statement boundary is visible in the original's
//    register ping-pong r1/r0/r1).
//  - single textual `return kind` reached by `goto out` (guards + aligned
//    body + unaligned fallthrough): with one return per path, `kind`'s
//    reference count wins the sb-vs-sl allocation race against `dest`,
//    flipping the two high registers relative to the original.
//  - declaration order (initialized locals before the bare u32 block)
//    fixes which of br_tile_x/has_right gets stack slot 0x84 vs 0x88.

EC u32 func_080D0D28(void * buf, u32 code);
EC void func_0804E9C8(u32 dims, void * dest, u32 x, u32 y, void * buf);

EC u32 DrawGlyphAt(u32 dims, void * dest, u32 x, u32 y, u32 code)
{
    u32 glyph_buf[32];

    u32 kind = func_080D0D28(glyph_buf, code);

    if ((u32)(kind - 1) <= 1)
    {
        u32 tile_x = x >> 3;
        u32 br_tile_x = tile_x;
        u32 tile_y = y >> 3;
        u32 width_tiles = (dims << 16) >> 16;
        u32 height_tiles = dims >> 16;
        u32 grid_rows = height_tiles;
        u32 x_ok, y_ok, has_right, has_bottom, row_below;
        u32 tl, bl_addr, right_addr;

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
                has_right = 0;

                if (tile_x + 1 < width_tiles)
                    has_right = 1;

                has_bottom = 0;
                row_below = tile_y + 1;

                if (row_below < grid_rows)
                    has_bottom = 1;

                tl = ((width_tiles * tile_y + tile_x) << 5) + (u32)dest;

                CpuFastSet(glyph_buf, (void *)tl, 8);

                if (has_bottom)
                {
                    bl_addr = ((width_tiles * row_below + tile_x) << 5) + (u32)dest;
                    CpuFastSet(&glyph_buf[16], (void *)bl_addr, 8);
                }

                if (has_right && kind > 1)
                {
                    right_addr = tl + 0x20;
                    CpuFastSet(&glyph_buf[8], (void *)right_addr, 8);

                    if (has_bottom)
                    {
                        right_addr = br_tile_x + width_tiles * row_below;
                        right_addr = (right_addr << 5) + (u32)dest;
                        right_addr += 0x20;
                        CpuFastSet(&glyph_buf[24], (void *)right_addr, 8);
                    }
                }

                goto out;
            }
        }

        func_0804E9C8(dims, dest, x, y, glyph_buf);

    out:
        return kind;
    }

    return 0;
}

// asm/*.s code still reaches this through its address-name symbol (the
// two DrawString loops were ported referencing func_0804E4AC before this
// body existed) -- keep the compatibility alias on the real definition.
EC u32 func_0804E4AC() ALIAS(DrawGlyphAt);
