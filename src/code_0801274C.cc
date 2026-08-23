#include "prelude.h"

EC void func_08050E74(void *self);
EC void func_08050E5C(void *self);
EC void func_08050E8C(void *self);

#define OPTIONAL_NESTED_MEMBER_WRAPPER(address, helper) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        u8 *owner = *(u8 **)(self + 4); \
        void *member = *(void **)(owner + 0xAC); \
        if (member) \
            helper(member); \
    }

OPTIONAL_NESTED_MEMBER_WRAPPER(0801274C, func_08050E74)
OPTIONAL_NESTED_MEMBER_WRAPPER(0801278C, func_08050E5C)
OPTIONAL_NESTED_MEMBER_WRAPPER(0801284C, func_08050E8C)
