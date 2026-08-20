// 7 small UnknownEntityThing helper functions (see include/unknown_types.hh),
// discovered as hidden Thumb code encoded as raw `.byte` bytes right after
// func_0803A798 at the end of asm/code_entities_08034CEC.s (round 9's
// tools/scripts/scan_hidden_code_blobs.py flagged this 160-byte region as a
// "larger, not auto-verified" candidate; this round hand-disassembled and
// confirmed it, see SESSION_NOTES.md for the round). All 6 operate on the
// `sprite_animator` sub-object at +0x30 and/or the unk_44/unk_46/unk_47
// flags, matching the shape already ported in
// src/entity_actor.cc:AActorEntity::RefreshSprite -- func_0803A870 below is
// almost certainly a sibling/helper of that same call site (identical
// func_0805E860 call + flag-set sequence, plus a dedup check against a
// cached anim id at offset +4 that RefreshSprite's ported form doesn't have
// visibility into). The field at self+4 is not a currently-documented
// member of UnknownEntityThingBase (whose header comment guesses a vtable
// pointer there, unverified -- no .cc in this repo constructs that class
// yet) -- kept as raw pointer arithmetic rather than editing the shared
// header's layout guess.

#include "prelude.h"
#include "unknown_types.hh"

extern "C" i32 func_0805E894(SpriteAnimator * sprite_animator);
extern "C" u32 func_0805E8F0(SpriteAnimator * sprite_animator);
extern "C" void func_0805E860(SpriteAnimator * sprite_animator, u32 anim_id);

extern "C" i16 func_0803A804(UnknownEntityThing * self)
{
    char *anim = (char *)&self->sprite_animator;
    return *(i16 *)(anim + 0x10);
}

extern "C" void func_0803A80C(UnknownEntityThing * self, i16 val)
{
    char *anim = (char *)&self->sprite_animator;
    *(i16 *)(anim + 0x10) = val;
}

extern "C" i32 func_0803A814(UnknownEntityThing * self)
{
    return func_0805E894(&self->sprite_animator);
}

extern "C" u32 func_0803A820(UnknownEntityThing * self)
{
    char *anim = (char *)&self->sprite_animator;
    u32 result = 0;

    if (*(u16 *)(anim + 0xE) != 0)
    {
        i16 v = *(i16 *)(anim + 0x10);
        result = (v != 0);
    }

    return result;
}

extern "C" void func_0803A840(UnknownEntityThing * self)
{
    u8 *out = &self->unk_47;
    u32 val;

    if (*out == 0)
    {
        u32 r = func_0805E8F0(&self->sprite_animator);

        if ((i32)(r << 30) >= 0)
        {
            return;
        }

        out = &self->unk_44;
        val = 1;
    }
    else
    {
        val = 0;
    }

    *out = val;
}

extern "C" void func_0803A870(UnknownEntityThing * self, u32 anim_id)
{
    if (*(u16 *)((char *)self + 4) != anim_id)
    {
        func_0805E860(&self->sprite_animator, anim_id);
        self->unk_44 = 1;
        self->unk_46 = 0;
        self->unk_47 = 1;
        *(u16 *)((char *)self + 4) = anim_id;
    }
}

extern "C" int * func_0803A8A0(UnknownEntityThingBase * self)
{
    return self->dummy;
}
