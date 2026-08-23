#include "prelude.h"

extern u8 gUnk_080F77FC[];
extern u32 vtable_unk_080E7058[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

EC void *func_08035DD8(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        gUnk_080F77FC, 0x9a1, 0x9a5, 0x403);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E7058;
    return self;
}
