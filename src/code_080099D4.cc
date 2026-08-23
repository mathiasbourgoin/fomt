#include "prelude.h"

EC void func_080099D4(void *left, void *right)
{
    void *left_prev = *(void **)((u8 *)left + 0xC);
    void *right_prev = *(void **)((u8 *)right + 0xC);
    *(void **)((u8 *)left + 0xC) = right_prev;
    *(void **)((u8 *)right + 0xC) = left_prev;

    void **left_next = *(void ***)((u8 *)left + 0x10);
    void **right_next = *(void ***)((u8 *)right + 0x10);
    void *left_value = *left_next;
    void *right_value = *right_next;
    *left_next = right_value;
    *right_next = left_value;
}
