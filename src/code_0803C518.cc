#include "prelude.h"

EC void func_0803BEBC(void *self);
EC void func_0803BEC8(void *self);

#define STATE_WRAPPER(address, helper) \
    EC void func_##address(u8 *self) { \
        helper(self); \
        self[0xD] = 1; \
        self[0xF] = 1; \
    }

STATE_WRAPPER(0803C518, func_0803BEBC)
STATE_WRAPPER(0803C52C, func_0803BEC8)
