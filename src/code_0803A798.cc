// func_0803A798 (0x0803A798) -- entity factory: allocates a 0x20-byte
// object, placement-constructs the base AEntity(game_object, Location)
// (already implemented, src/entity.cc), then re-stamps the vtable
// pointer at +0x14 with a still-unidentified derived vtable
// (vtable_unk_080E7568), stores the 2nd caller argument at +0x18 and a
// constant `true` flag at +0x1c.
//
// Provenance / caveats (see SESSION_NOTES.md, rounds w43/w47/w48):
// - The local `Location` built on the stack (`loc.map = 0; loc.x = 0;
//   loc.y = 0;`) is the bitfield-overlap case predicted from
//   `include/actor.hh` (`map:10` at +0, `x:16` at +1, `y:16` at +3,
//   PACKED ALIGN(2)) -- 3 logical assignments compile to 5 physical
//   ldrh/ldrb+ands+strh/strb read-modify-writes because the fields don't
//   align to byte/halfword boundaries. Confirmed bit-exact in the quick
//   harness before this was applied.
// - The "2nd vtable" worry from round w47 (possible multiple
//   inheritance) is resolved: `vtable_unk_080E7568` is stamped at the
//   SAME offset (+0x14) as `AEntity`'s own vtable pointer
//   (`__vt_7AEntity`, see e.g. `asm/code_linkonce.s` func_080DCE60's
//   destructor) -- this is the ordinary CFront/ARM single-inheritance
//   ABI pattern (each level along the hierarchy re-stamps the one
//   vtable-pointer slot with its own, larger table), not a second base
//   subobject.
// - The exact derived class is NOT identified (name, full member list,
//   which of AEntity's virtuals it overrides) -- `Entity_080E7568` here
//   is a minimal placeholder (same naming convention already used for
//   `Entity_080E6554` in src/code_entity_08020018.cc) carrying only the
//   two extra fields this function actually touches. Its own ctor is
//   never called from a `new Entity_080E7568(...)` expression here --
//   this factory calls the *base* AEntity ctor symbol directly and
//   manually stamps the extra state, exactly like the established
//   procedural style used for other not-yet-fully-modeled placement
//   constructors (see e.g. src/code_08004B94.cc). A companion
//   destructor for this same vtable exists uncatalogued in
//   asm/code_linkonce.s (func_080DCF4C) -- left for a future round, not
//   needed to port this constructor.
#include "prelude.h"

#include "entity.hh"

extern u32 vtable_unk_080E7568[];

extern "C" void __7AEntityP10GameObjectRC8Location(void * self, GameObject * game_object, Location const & location);

struct Entity_080E7568
{
    /* +00 */ u8 base_bytes[0x18]; // AEntity, incl. its vtable ptr at +0x14
    /* +18 */ void * unk_18;
    /* +1c */ bool unk_1c;
};

EC AEntity * func_0803A798(GameObject * game_object, void * arg_2)
{
    Entity_080E7568 * self = (Entity_080E7568 *)operator new(0x20);

    Location loc(0, 0, 0);

    __7AEntityP10GameObjectRC8Location(self, game_object, loc);

    *(void **)((u8 *)self + 0x14) = vtable_unk_080E7568;
    self->unk_18 = arg_2;
    self->unk_1c = true;

    return (AEntity *)self;
}
