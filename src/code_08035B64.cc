#include "prelude.h"

extern u8 ScheduleInfo_Unk_080F1A80[];
extern u32 vtable_unk_080E7158[];

EC void *__10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
    void *self, void *game_object, void *npc, u32 arg_3,
    void const *arg_4, u32 anim_id, u32 arg_6, u32 arg_7);

EC void *func_08035B64(void *self, void *game_object, void *npc, u32 arg_3)
{
    __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi(
        self, game_object, npc, arg_3,
        ScheduleInfo_Unk_080F1A80, 0x213, 0x217, 0x3e0);
    *(void **)((u8 *)self + 0x14) = vtable_unk_080E7158;
    return self;
}
