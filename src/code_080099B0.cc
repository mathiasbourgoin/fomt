#include "prelude.h"

EC void func_080099B0(void *left, void *right)
{
    void **left_next = *(void ***)((u8 *)left + 0x10);
    void *right_prev = *(void **)((u8 *)right + 0xC);
    *left_next = right_prev;
    *(void **)*(void *volatile *)((u8 *)right + 0xC) = left_next;

    void **right_next = *(void ***)((u8 *)right + 0x10);
    void **left_anchor = (void **)((u8 *)left + 0x10);
    *right_next = left_anchor;
    *(void ***)((u8 *)left + 0x10) = right_next;

    *(void **)((u8 *)right + 0xC) = (u8 *)right + 0x10;
    *(void **)((u8 *)right + 0x10) = (u8 *)right + 0xC;
}
