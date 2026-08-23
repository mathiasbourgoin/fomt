#include "prelude.h"

extern u8 gUnk_080F29C0[];
extern u32 vtable_unk_080E6918[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

EC void *func_08036E2C(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        gUnk_080F29C0, 0x267, 0x26f, 0x3e3);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6918;
    *(u16 *)((u8 *)self + 0x48) = 0;
    return self;
}
