#include "prelude.h"

EC void func_0809C5B4(void *object, int arg);
EC void func_080AA850(void *object, int arg);

EC void func_0801DDCC(void *self, int arg)
{
    void *object = *(void **)((u8 *)self + 0x1038);
    func_0809C5B4((u8 *)object + 0x34D8, arg);
    func_080AA850(*(void **)((u8 *)self + 4), arg);
}
