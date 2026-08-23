# Active matching decompilation

This fork continues the matching decompilation of **Harvest Moon: Friends of
Mineral Town**. A clean build must remain SHA-1 identical to the original US
ROM. `make compare` is the required gate for every source or linker change.

The target is understandable source for real game systems, not a raw count of
ASM files removed. Work therefore follows complete, feature-driven vertical
slices rather than arbitrary address ranges.

## Priorities

1. Player input, movement, interaction, and door transitions.
2. Rucksack, inventory, and save data.
3. Time, palettes, and map rendering.
4. Mine generation.
5. NPC schedules and world state.

## Source organization without losing matching

The linker script is authoritative for ROM layout. Source directories are not
the ROM layout: a recovered component may live under a meaningful path while
`fomt.lds` explicitly places its object at the original address and in the
original order.

```text
include/actor/             recovered public types and object layouts
src/actor/npc/             address-anchored implementations for one component
fomt.lds                   exact object order and placement
```

The first example is `ANpcEntity`: its C++ layout belongs in
`include/actor/npc_entity.hh`, while small, independently linked concrete
factories live in `src/actor/npc/`. The filename retains the entry address only
when the concrete game identity is not yet proven.

## Naming and object recovery

- Name types, fields, methods, and data only with evidence from callers,
  constructors, destructors, vtables, or runtime behaviour.
- Preserve uncertainty explicitly (`unk_*`, address-qualified variants) rather
  than inventing game semantics.
- Prefer reconstructed C++ classes, inheritance, and virtual methods when the
  binary proves them.
- Use exact ABI aliases at the remaining compiler-sensitive boundaries. An
  alias is not a failure of reconstruction: it keeps the original call
  sequence while the surrounding API remains typed and documented.

## Matching discipline

1. Bound the smallest complete system path needed by a feature.
2. Recover types and ownership before mass-converting nearby helpers.
3. Keep unresolved functions in ASM and document their dependency role.
4. Run `make compare` before committing.
5. Commit only byte-perfect changes; do not combine a near-match with an exact
   port.

The next active slice is documented as player input → movement → collision →
interaction → door/exit transition. Its purpose is to support safe automatic
door interaction and later movement QoL through the original game paths.
