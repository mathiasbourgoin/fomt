#include "prelude.h"

EC void *__builtin_new(u32 size);

EC void *func_080ADC00(void *self)
{
    register u8 *saved asm("r4") = (u8 *)self;
    register u8 *data asm("r2") = (u8 *)__builtin_new(0x20);
    register u32 zero asm("r0") = 0;
    *(u32 *)(data + 0) = zero;
    *(u16 *)(data + 4) = zero;
    register u8 *entry asm("r1") = data;
    entry += 8;
    *(u32 *)(data + 8) = zero;
    *(u16 *)(entry + 4) = zero;
    entry += 8;
    *(u32 *)(data + 0x10) = zero;
    *(u16 *)(entry + 4) = zero;
    entry += 8;
    *(u32 *)(data + 0x18) = zero;
    *(u16 *)(entry + 4) = zero;
    *(u8 **)saved = data;
    return saved;
}
