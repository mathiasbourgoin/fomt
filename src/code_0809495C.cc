#include "prelude.h"

EC void func_08094A00(void *self, u32 value, void *data);

EC void func_0809495C(void *self, u32 value)
{
    u8 *data = *(u8 **)((u8 *)self + 8);
    func_08094A00(self, value, data + 0x1A);
}
