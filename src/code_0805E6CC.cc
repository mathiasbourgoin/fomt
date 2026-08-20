#include "prelude.h"

// NOTE: DefinedSprite archive format, CONFIRMED by static analysis of
// func_0805E6CC / func_0805E790 (this file and asm/code_0805E760.s) cross
// referenced with docs/GRAPHISMES.md and docs/SPRITES_INVENTORY.md in the
// franglais patch repo (rendered PNG dumps of the archives at 0x527094,
// 0x738144, 0x74F34C, ... match this layout exactly). The archive is a
// simple uncompressed header of 7 (count, data) sections, each count stored
// in a 4-byte-wide slot (top 16 bits unused) immediately followed by the
// section's packed entries:
//
//   section            entry size
//   -----------------  ----------
//   animations              4
//   frame metadata         16
//   OAM                     8
//   4bpp tiles             32
//   16-color palettes      32
//   affine matrices         8
//   animation instructions  4
//
// func_0805E6CC is the constructor: it installs the vtable and, if handed a
// non-null archive pointer, walks the header computing a (count, pointer)
// pair per section by advancing a cursor through the packed data. Passing
// nullptr zero-initializes every field instead (used for a "no archive"
// sentinel object elsewhere in the game).

extern void * vtable_unk_080E79C8;

struct DefinedSprite
{
    void * vtable;             // 0x00

    void const * anim_data;    // 0x04
    void const * frame_data;   // 0x08
    void const * oam_data;     // 0x0c
    void const * tile_data;    // 0x10
    void const * palette_data; // 0x14
    void const * matrix_data;  // 0x18
    void const * instr_data;   // 0x1c

    u16 anim_count;    // 0x20
    u16 frame_count;   // 0x22
    u16 oam_count;     // 0x24
    u16 tile_count;    // 0x26
    u16 palette_count; // 0x28
    u16 matrix_count;  // 0x2a
    u16 instr_count;   // 0x2c
};

EC DefinedSprite * func_0805E6CC(DefinedSprite * self, u8 const * data)
{
    self->vtable = &vtable_unk_080E79C8;

    if (data == nullptr)
    {
        self->anim_count = 0;
        self->anim_data = nullptr;
        self->frame_count = 0;
        self->frame_data = nullptr;
        self->oam_count = 0;
        self->oam_data = nullptr;
        self->tile_count = 0;
        self->tile_data = nullptr;
        self->palette_count = 0;
        self->palette_data = nullptr;
        self->matrix_count = 0;
        self->matrix_data = nullptr;
        self->instr_count = 0;
        self->instr_data = nullptr;

        return self;
    }

    self->anim_count = *(u16 const *) data;
    data += 4;
    self->anim_data = data;
    data += self->anim_count * 4;

    self->frame_count = *(u16 const *) data;
    data += 4;
    self->frame_data = data;
    data += self->frame_count * 16;

    self->oam_count = *(u16 const *) data;
    data += 4;
    self->oam_data = data;
    data += self->oam_count * 8;

    self->tile_count = *(u16 const *) data;
    data += 4;
    self->tile_data = data;
    data += self->tile_count * 32;

    self->palette_count = *(u16 const *) data;
    data += 4;
    self->palette_data = data;
    data += self->palette_count * 32;

    self->matrix_count = *(u16 const *) data;
    data += 4;
    self->matrix_data = data;
    data += self->matrix_count * 8;

    self->instr_count = *(u16 const *) data;
    self->instr_data = data + 4;

    return self;
}
