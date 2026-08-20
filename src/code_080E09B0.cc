// func_080E09B0 (0x080E09B0) -- destructor of a scene-table record whose
// derived class has NO OWN vtable field to stamp (unlike func_08004C54,
// which resets its own vtable pointer before forwarding). Pure tail-call
// to the base AScene destructor (func_080007EC), forwarding `self`/
// `in_chrg` unchanged: `push {lr}; bl func_080007EC; pop {r0}; bx r0`.
// No semantic name found yet in the franglais-patch repo docs for this
// address -- kept as the raw symbol until one surfaces.
#include "prelude.h"

EC void func_080007EC(void *self, int in_chrg);

EC void func_080E09B0(void *self, int in_chrg)
{
    func_080007EC(self, in_chrg);
}
