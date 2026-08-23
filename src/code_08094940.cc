#include "prelude.h"

EC void func_08094A00(void *self, u32 value, void *data);

EC void func_08094940(void *self, u32 value)
{
    func_08094A00(self, value, *(void **)((u8 *)self + 8));
}
