#include "prelude.h"

extern u32 vtable_unk_080E69D8[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

EC void *func_08036D0C(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        nullptr, 0x669, 0x66d, 0);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E69D8;
    return self;
}
