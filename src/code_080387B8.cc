#include "prelude.h"

EC void func_08038DF0(void *);
EC void func_08038E90(void *) __attribute__((section(".text.func_08038E90")));
EC void func_08038EB8(void *);
EC void func_08038EE0(void *);

#define OPTIONAL_WRAPPER(address, helper) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        void *value = *(void **)(self + 0x10); \
        if (value) helper(value); \
    }

OPTIONAL_WRAPPER(080387B8, func_08038DF0)
OPTIONAL_WRAPPER(080387C8, func_08038E90)
OPTIONAL_WRAPPER(080387EC, func_08038EB8)
OPTIONAL_WRAPPER(080387FC, func_08038EE0)

EC void func_08038E90(void *self)
{
    u8 *data = *(u8 **)((u8 *)self + 0xc);
    *(u32 *)(data + 0x4c) = 0x01200000;
    data[0x50] = 1;
}
