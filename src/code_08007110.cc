// func_08007110 (0x08007110) -- pointer getter on the text-capture widget
// family (SESSION_NOTES.md round 6: func_08007078/func_080070D4/
// func_08007110/func_080070A4, sibling of the confirm-screen family
// func_0800598C/func_08005A00/func_08005A3C/func_080059D0). Returns the
// address of the sub-object's field at offset 0x461C from the sub-object
// pointed to by self->field4 -- no dereference, pure pointer arithmetic
// (unlike func_08005A3C, which reads a byte at a similar offset).
#include "prelude.h"

EC void *func_08007110(void *self)
{
    return (char *)(*(void **)((char *)self + 4)) + 0x461C;
}
