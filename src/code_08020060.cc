#include "prelude.h"

typedef u32 (*GetValueFn)(void *);

EC bool func_08020060(void *self)
{
    void *object = *(void **)self;
    void *vtable = *(void **)object;
    GetValueFn get_value = *(GetValueFn *)((u8 *)vtable + 0x14);
    return get_value(object) == *(u16 *)((u8 *)self + 4);
}
