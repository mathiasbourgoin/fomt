#include "prelude.h"
#include "unknown_types.hh"

// func_0805E860 already declared/ported at src/code_0803A804.cc:23 for a
// different caller (SpriteAnimator anim-id refresh helper).
extern "C" void func_0805E860(SpriteAnimator * sprite_animator, u32 anim_id);

// Thin 2-phase SpriteAnimator init: install the sprite definition pointer
// (SpriteAnimator's opaque field at +0x00, read back by func_0805E860 as a
// DefinedSprite* -- see src/code_0805E6CC.cc, vtable at DefinedSprite+0x00)
// then delegate to func_0805E860 to load the requested animation.
extern "C" void func_0805E850(SpriteAnimator * self, void * defined_sprite, u32 anim_id)
{
    *(void **) self = defined_sprite;
    func_0805E860(self, anim_id);
}
