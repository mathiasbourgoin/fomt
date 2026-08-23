#include "npc_entity.hh"

extern u8 gUnk_080F6B4C[];
extern u32 vtable_unk_080E6E58[];

// Keep the recovered constructor ABI explicit: calling it through the exact
// linker alias preserves the original old-agbcc call sequence.
EC ANpcEntity *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    ANpcEntity *self, GameObject *game_object, Npc *npc, u32 arg_3,
    void const *schedule, u32 idle_anim, u32 moving_anim, u32 initial_state);

EC ANpcEntity *func_080361EC(ANpcEntity *self, GameObject *game_object, Npc *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3, gUnk_080F6B4C, 0x8e4, 0x8e8, 0x3ff);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6E58;
    return self;
}
