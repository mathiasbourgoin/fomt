#include "prelude.h"

extern u8 gUnk_080F6370[];
extern u32 vtable_unk_080E6FD8[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

EC void *func_08035EAC(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        gUnk_080F6370, 0x8c0, 0x8c4, 0x3fc);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E6FD8;
    return self;
}
