#include "prelude.h"

extern u8 gUnk_080F43DC[];
extern u32 vtable_unk_080E6B58[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

EC void *func_080368C4(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        gUnk_080F43DC, 0x7be, 0x7c2, 0x3f3);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6B58;
    return self;
}
