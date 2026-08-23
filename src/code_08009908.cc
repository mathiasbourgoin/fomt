#include "prelude.h"

struct NodeVtable
{
    void (*unused0)();
    void (*unused1)();
    u8 (*ShouldKeep)(void *self);
};

struct SelfVtable
{
    void (*unused0)();
    void (*unused1)();
    void (*unused2)();
    void (*unused3)();
    void (*unused4)();
    void (*Remove)(void *self, void *node);
};

EC int func_08009908(void *self)
{
    void *node = *(void **)((u8 *)self + 0xC);
    void *sentinel = (u8 *)self + 0x10;

    while (node != sentinel) {
        void *current = node;
        node = *(void **)((u8 *)node + 4);
        NodeVtable *node_vt = *(NodeVtable **)((u8 *)current + 8);
        if (node_vt->ShouldKeep(current))
            continue;

        SelfVtable *self_vt = *(SelfVtable **)((u8 *)self + 8);
        self_vt->Remove(self, current);
    }

    return 1;
}
