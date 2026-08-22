#include "prelude.h"

struct SrcEntry { u32 w0; u32 w1; };
struct DestEntry { u32 attr01; u16 attr2; u16 affineParam; };
struct CompositeDesc { i16 x, y; u16 unk4, unk6; u16 unk8; u16 pad_a;
    u32 unk_c; u8 flags; u8 unk11; u16 pad_12; u32 mode; u8 unk18; };
struct DestArray { u8 count; u8 pad[3]; DestEntry entries[128]; };
struct CoeffPair { u32 a; u32 b; };
union CoeffBlock { CoeffPair p; i16 arr[4]; };
union SrcCur { SrcEntry e; u16 h[4]; };

extern "C" void func_0805EC24(i32 *x, i32 *y, i32 width, i32 height, i16 *coeffs);

extern "C" void func_0805E99C(DestArray *dest, SrcEntry *src, u32 count, CompositeDesc *desc)
{
    u32 one = 1;
    u32 eight = 8;
    u32 sixteen = 16;
    u32 fifteen = 15;
    SrcEntry *end = src + count;
    for (; src != end; src++) {
        union SrcCur cur; union CoeffBlock coeffs; i32 y; i32 x;
        union CoeffBlock raw; u32 shape, size, mode; i32 width, height;
        cur.e = *src;
        register u32 shape_source asm("r0") = (cur.e.w0 << 16) >> 30;
        asm("" : "+r"(shape_source));
        shape = shape_source;
        size = cur.e.w0 >> 30;
        if (shape == 0) { height = 8 << size; width = height; }
        else {
            u32 big = 8 << (((size + 1) >> 1) + 1);
            u32 small = 8;
            if (size != 1) small = big >> 1;
            if (shape != 1) { height = big; width = small; }
            else            { height = small; width = big; }
        }
        x = (i32)(cur.e.w0 << 7) >> 23;
        y = (i8)cur.h[0];
        register u32 mode_source asm("r2") = desc->mode;
        asm("" : "+r"(mode_source));
        register u32 fixed_mode asm("r8") = mode_source;
        asm("" : "+r"(fixed_mode));
        mode = fixed_mode;
        if (mode_source == 0) {
            register u32 flags asm("r2") = desc->flags;
            asm("" : "+r"(flags));
            if (1 & flags) { x = -(x + width);
                cur.e.w0 = (((((cur.e.w0 << 3) >> 31) ^ 1) & 1) << 28) | (cur.e.w0 & 0xEFFFFFFF); }
            if (2 & flags) { y = -(y + height);
                cur.e.w0 = (((((cur.e.w0 << 2) >> 31) ^ 1) & 1) << 29) | (cur.e.w0 & 0xDFFFFFFF); }
        } else {
            u8 d11 = desc->unk11;
            DestEntry *line;
            { u32 t = ((d11 & 7) << 25) | (cur.e.w0 & 0xF1FFFFFF);
              t = ((((eight & d11) >> 3) & one) << 28) | (t & 0xEFFFFFFF);
              t = ((((sixteen & d11) >> 4) & one) << 29) | (t & 0xDFFFFFFF);
              cur.e.w0 = t; }
            line = (DestEntry *)((u8 *)dest + 4 + (d11 & 0x1F) * 32);
            register u32 mask_hi asm("r2") = 0xFFFF0000;
            asm("" : "+r"(mask_hi));
            u32 raw_hi = line[1].affineParam << 16;
            register u32 mask_lo asm("r4") = 0x0000FFFF;
            asm("" : "+r"(mask_lo));
            raw.p.a = raw_hi | line[0].affineParam;
                raw.p.b = line[2].affineParam | (raw.p.b & mask_hi);
            raw.p.b = (line[3].affineParam << 16) | (raw.p.b & mask_lo);
            coeffs = raw;
            func_0805EC24(&x, &y, width, height, coeffs.arr);
            if (mode == 3) { x -= width / 2; y -= height / 2; }
        }
        x += desc->x; y += desc->y;
        register i32 final_x asm("r3") = x;
        register i32 final_y asm("r1") = y;
        asm("" : "+r"(final_x), "+r"(final_y));
        if (mode == 0) {
            if (final_x + width <= 0 || final_x > 0xEF || final_y + height <= 0 || final_y > 0x9F)
                goto next;
        }
        { register u32 y_byte asm("r0") = (u8)final_y;
        asm("" : "+r"(y_byte));
        { u32 t = y_byte | (0xFFFFFF00 & cur.e.w0);
          t = ((mode & 3) << 8) | (t & 0xFFFFFCFF);
          t = ((desc->unk_c & 3) << 10) | (t & 0xFFFFF3FF);
          t = ((desc->unk18 & 1) << 12) | (t & 0xFFFFEFFF);
          t = ((final_x & 0x1FF) << 16) | (t & 0xFE00FFFF);
          cur.e.w0 = t; } }
        { u32 t = ((((((cur.e.w1 << 22) >> 22) + desc->unk6) << 22) >> 22)) | (cur.e.w1 & 0xFFFFFC00);
          t = ((desc->unk8 & 3) << 10) | (t & 0xFFFFF3FF);
          t = (((u16)(((t << 16) >> 28) + desc->unk4) & fifteen) << 12) | (t & 0xFFFF0FFF);
          cur.e.w1 = t; }
        { u32 c = dest->count;
          if (c <= 0x7F) {
              DestEntry *e = (DestEntry *)((u8 *)dest + 4 + c * 8);
              e->attr01 = cur.e.w0;
              e->attr2 = cur.h[2];
              dest->count = c + 1; } }
    next:;
    }
}
