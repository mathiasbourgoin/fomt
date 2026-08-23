#include "prelude.h"

EC void func_08035908(void *self, u32 value);
EC void func_08035940(void *self, u32 value);

EC void func_08036AB4(void *self)
{
    u32 first = 0x9D3;
    u32 second = 0x9D7;
    u16 kind = *(u16 *)((u8 *)self + 4);

    switch (kind) {
    case 7:
    case 0x11:
    case 0x1D:
    case 0x25:
        first = 0x9DF;
        second = 0x9E3;
        break;
    }

    func_08035908(self, first);
    func_08035940(self, second);
}
