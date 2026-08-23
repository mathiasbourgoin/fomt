#include "prelude.h"

EC void func_08008BE0(void *);
EC void func_0803B6B8(void *);
EC u32 func_08008CD0(void *);

EC void func_08012454(u8 *) __attribute__((section(".text.func_08012454")));
EC void func_08012454(u8 *self)
{
    func_08008BE0(*(u8 **)(self + 4) + 0xbc);
}

EC void func_08012ACC(u8 *) __attribute__((section(".text.func_08012ACC")));
EC void func_08012ACC(u8 *self)
{
    u8 *data = *(u8 **)(self + 4);
    func_0803B6B8(*(void **)(data + 0xb0));
}

EC u32 func_080167CC(u8 *) __attribute__((section(".text.func_080167CC")));
EC u32 func_080167CC(u8 *self)
{
    return func_08008CD0(*(u8 **)(self + 4) + 0xbc);
}

EC void func_08012BAC(u8 *, u16) __attribute__((section(".text.func_08012BAC")));
EC void func_08012BAC(u8 *self, u16 value)
{
    u8 *data = *(u8 **)(self + 4);
    *(u16 *)(data + 0xe0) = value;
    *(u32 *)(data + 0x9c) = 0x15;
}
