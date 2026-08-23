#include "prelude.h"

extern u32 gUnk_080FDDD8[];
EC void __4ToolUi(void *self, u32 value);
EC const char *GetDesc__C4Tool(const void *self);
EC void func_080CABEC(void *self, const char *description);

EC void func_0807D1DC(void *self, u32 index)
{
    u32 tool;
    __4ToolUi(&tool, gUnk_080FDDD8[*(u32 *)((u8 *)self + 0x2a8 + index * 4) * 2]);
    func_080CABEC(self, GetDesc__C4Tool(&tool));
}
