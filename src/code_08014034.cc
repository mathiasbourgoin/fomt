#include "prelude.h"

typedef void (*Method_08014034)(void *self);

#define VIRTUAL_WRAPPER_R1(address, index) \
    EC void func_##address(u8 *self) { \
        register u8 *object asm("r0") = *(u8 **)(self + 4); \
        object += 0xA8; \
        object = *(u8 **)object; \
        register Method_08014034 *vtable asm("r1") = *(Method_08014034 **)object; \
        vtable += index; \
        register Method_08014034 method asm("r1") = *vtable; \
        method(object); \
    }

#define VIRTUAL_WRAPPER_R2(address, index) \
    EC void func_##address(u8 *self) { \
        register u8 *object asm("r0") = *(u8 **)(self + 4); \
        object += 0xA8; \
        object = *(u8 **)object; \
        register Method_08014034 *vtable asm("r2") = *(Method_08014034 **)object; \
        vtable += index; \
        register Method_08014034 method asm("r2") = *vtable; \
        method(object); \
    }

VIRTUAL_WRAPPER_R1(08014034, 0x21)
VIRTUAL_WRAPPER_R1(0801404C, 0x22)
VIRTUAL_WRAPPER_R1(08014064, 0x23)
VIRTUAL_WRAPPER_R1(0801407C, 0x24)
VIRTUAL_WRAPPER_R1(08014094, 0x25)
VIRTUAL_WRAPPER_R1(080140AC, 0x26)
VIRTUAL_WRAPPER_R2(080140C4, 0x27)
VIRTUAL_WRAPPER_R2(080140DC, 0x28)
VIRTUAL_WRAPPER_R1(080140F4, 0x20)
