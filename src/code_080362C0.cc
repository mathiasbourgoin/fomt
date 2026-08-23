#include "npc_entity.hh"

extern u8 gUnk_080F61FC[];
extern u32 vtable_unk_080E6DD8[];

EC ANpcEntity *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    ANpcEntity *self, GameObject *game_object, Npc *npc, u32 arg_3,
    void const *schedule, u32 idle_anim, u32 moving_anim, u32 initial_state);

EC ANpcEntity *func_080362C0(ANpcEntity *self, GameObject *game_object, Npc *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3, gUnk_080F61FC, 0x8b8, 0x8bc, 0x3fb);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6DD8;
    return self;
}
