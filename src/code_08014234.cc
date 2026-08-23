#include "prelude.h"

typedef u32 (*Method_08014234)(void *self);

#define VIRTUAL_GETTER(address, reg, index) \
    EC u32 func_##address(u8 *self) { \
        register u8 *object asm("r0") = *(u8 **)(self + 4); \
        object += 0xA8; \
        object = *(u8 **)object; \
        register Method_08014234 *vtable asm(reg) = *(Method_08014234 **)object; \
        vtable += index; \
        register Method_08014234 method asm(reg) = *vtable; \
        return method(object); \
    }

VIRTUAL_GETTER(08014234, "r1", 0x29)
VIRTUAL_GETTER(0801424C, "r2", 0x2A)
