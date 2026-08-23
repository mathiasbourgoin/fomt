#include "prelude.h"

EC void __7AEntityP10GameObjectRC8Location(void *self, void *game_object, void *location);
extern u8 vtable_unk_080E7444[];

EC void *func_08037CC4(u8 *self, void *game_object, void *location)
{
    __7AEntityP10GameObjectRC8Location(self, game_object, location);
    *(void **)(self + 0x14) = vtable_unk_080E7444;
    return self;
}
