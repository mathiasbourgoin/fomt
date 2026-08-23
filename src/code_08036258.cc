#include "prelude.h"

extern u8 gUnk_080F33B8[];
extern u32 vtable_unk_080E6E18[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

// Small derived ANpcEntity constructor: forward the caller-supplied leading
// arguments, provide this NPC type's fixed schedule/animation constants, then
// stamp the derived vtable.
EC void *func_08036258(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        gUnk_080F33B8, 0x685, 0x685, 0x3ee);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6E18;
    return self;
}
