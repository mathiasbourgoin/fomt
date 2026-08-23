#include "prelude.h"

struct Lookup
{
    void *vtable;
    u8 pad_4[0x1C];
    u16 value;
    u8 pad_22[0xE];
};

struct TextCursor
{
    u32 field_0;
    u16 field_4;
    u16 field_6;
    void *field_8;
    void *field_C;
    void *field_10;
    u8 field_14;
};

extern u8 gUnk_0852D984[];
extern u32 vtable_unk_080E5A28[];

EC void func_0805E6CC(Lookup *self, const void *data);

EC u16 func_080ADD20()
{
    Lookup lookup;
    func_0805E6CC(&lookup, gUnk_0852D984);
    u16 value = lookup.value;
    lookup.vtable = vtable_unk_080E5A28;
    return value;
}

EC void func_080ADD44(TextCursor *self)
{
    self->field_0 = 0;
    self->field_4 = 0x100;
    self->field_6 = 0;
    self->field_8 = nullptr;
    self->field_C = nullptr;
    self->field_10 = nullptr;
    self->field_14 = 0;
}

EC void func_080ADD5C(TextCursor *self, void *text, void *provider)
{
    self->field_8 = text;
    self->field_C = provider;
    self->field_10 = nullptr;
    self->field_14 = 0;
    self->field_0 = text != nullptr;
    self->field_6 = 0;
}
