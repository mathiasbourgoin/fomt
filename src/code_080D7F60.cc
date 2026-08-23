#include "prelude.h"

EC void func_08050E8C(void *self);
EC void func_08050E5C(void *self);
EC void func_08050E74(void *self);

#define OPTIONAL_MEMBER_WRAPPER(address, helper) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        void *member = *(void **)(self + 0xAC); \
        if (member) \
            helper(member); \
    }

OPTIONAL_MEMBER_WRAPPER(080D7F60, func_08050E8C)
OPTIONAL_MEMBER_WRAPPER(080D7F74, func_08050E5C)
OPTIONAL_MEMBER_WRAPPER(080D7F88, func_08050E74)
