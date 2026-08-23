#include "prelude.h"

#define CONDITIONAL_FLAG_WRAPPER(address) \
    EC u32 func_##address(void *, u32) __attribute__((section(".text.func_" #address))); \
    EC u32 func_##address(void *, u32 value) { \
        if (value == 1) \
            return 0x8000; \
        return 0; \
    }

CONDITIONAL_FLAG_WRAPPER(08037628)
CONDITIONAL_FLAG_WRAPPER(080377D4)
