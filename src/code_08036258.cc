#include "npc_entity.hh"

extern u8 gUnk_080F33B8[];
extern u32 vtable_unk_080E6E18[];

// The alias is the byte-perfect constructor entry point.  The typed names
// document the recovered object protocol without relying on new codegen.
EC ANpcEntity *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    ANpcEntity *self, GameObject *game_object, Npc *npc, u32 arg_3,
    void const *schedule, u32 idle_anim, u32 moving_anim, u32 initial_state);

// Small derived ANpcEntity constructor: forward the caller-supplied leading
// arguments, provide this NPC type's fixed schedule/animation constants, then
// stamp the derived vtable.
EC ANpcEntity *func_08036258(ANpcEntity *self, GameObject *game_object, Npc *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3, gUnk_080F33B8, 0x685, 0x685, 0x3ee);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6E18;
    return self;
}
