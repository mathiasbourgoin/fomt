#include "prelude.h"

EC void *__builtin_new(u32 size);
EC void *func_08037D08(void *self, void *context);
EC void *func_08037EF0(void *self, void *context);
EC void *func_0803853C(void *self, void *context);

#define ALLOCATOR_WRAPPER(address, size, constructor) \
    EC void *func_##address(void *) __attribute__((section(".text.func_" #address))); \
    EC void *func_##address(void *context) { \
        void *self = __builtin_new(size); \
        return constructor(self, context); \
    }

ALLOCATOR_WRAPPER(08037CF0, 0x54, func_08037D08)
ALLOCATOR_WRAPPER(08037E9C, 0x58, func_08037EF0)
ALLOCATOR_WRAPPER(08038334, 0x48, func_0803853C)
