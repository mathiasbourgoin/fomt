// func_0803A798 (0x0803A798) -- constructor of an unidentified concrete
// class derived from AEntity (include/entity.hh). Builds the AEntity base
// subobject with a zero Location (Location(0, 0, 0)), then re-stamps the
// derived class's own vtable (vtable_unk_080E7568) at the same offset
// (+0x14) where AEntity itself places its vtable pointer -- ordinary
// single-inheritance vtable re-stamp after the base constructor returns,
// not a second/MI base. Two more fields specific to this derived class are
// then set: a caller-supplied value at +0x18, and a fixed flag byte (1) at
// +0x1c.
//
// AEntity is abstract in this repo (pure virtual vfunc_30, see
// include/entity.hh) because the real concrete derived class -- and its
// vfunc_30 override -- is not otherwise known/ported. Rather than invent an
// unverified derived class hierarchy (which would also make the compiler
// synthesize its own vtable data instead of referencing the existing
// vtable_unk_080E7568 blob), the base constructor is invoked directly by
// its already-compiled mangled symbol (confirmed via
// `arm-none-eabi-nm build/src/entity.o`: `__7AEntityP10GameObjectRC8Location`
// matches the `bl` target in the original disassembly bit-for-bit) --
// same idea as the qualified-destructor-call precedent in DECOMP_RULES.md
// anti-pattern #8, applied to a constructor instead. AEntity::AEntity
// itself is already fully implemented in src/entity.cc; this reuses it
// rather than reimplementing it.
#include "prelude.h"
#include "entity.hh"

extern u32 vtable_unk_080E7568[];

EC void *__builtin_new(u32 size);
extern "C" void __7AEntityP10GameObjectRC8Location(void *self, GameObject *game_object, Location const &location);

EC void *func_0803A798(GameObject *game_object, u32 param2)
{
    void *obj = __builtin_new(0x20);

    Location loc(0, 0, 0);

    __7AEntityP10GameObjectRC8Location(obj, game_object, loc);

    *(void **)((char *)obj + 0x14) = vtable_unk_080E7568;
    *(u32 *)((char *)obj + 0x18) = param2;
    *(u8 *)((char *)obj + 0x1c) = 1;

    return obj;
}
