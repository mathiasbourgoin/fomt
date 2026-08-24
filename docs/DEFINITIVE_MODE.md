# Definitive Mode setting

## Scope

Definitive Mode is one shared persistent behavioral policy flag. It does not
gate translated text, pedagogical ladders, vocabulary highlighting, or audio
help: those are core content in every mode.

The current decompilation proof has exactly one gated behavior:

| Behavior | Original | Definitive |
| --- | --- | --- |
| Blocked movement toward a valid building entrance | Vanilla: requires A | Reuses the vanilla upper-descriptor event once |

No other behavioral QoL hook is present in this matching tree. Automatic
step-on exits and normal A-button interactions are vanilla in both modes.

## Persistent record

The setting uses the final eight bytes of 32 KiB SRAM, offsets
`0x7FF8..0x7FFF`. This lies after the separate monitoring record ending near
`0x7C22` and inside the already audited unused final sector.

```text
offset  size  field
0       4     magic "DFMD"
4       1     version = 1
5       1     flags (bit 0 = Definitive)
6       2     little-endian sum of bytes 0..5
```

An absent record, unknown version, bad magic, or bad checksum always selects
Original mode. This makes old saves and untouched hardware behavior safe by
default. SRAM is read with byte accesses only.

`tools/definitive_settings.py` reads or updates the record without changing
the rest of a save:

```sh
python3 tools/definitive_settings.py game.sav
python3 tools/definitive_settings.py game.sav --set definitive
python3 tools/definitive_settings.py game.sav --set original
```

The proof also exports `definitive_mode_enabled` and
`definitive_mode_store` in its appended Thumb unit. The store invalidates the
leading magic byte before writing the payload and checksum, then publishes the
magic last.

## UI seam

No new menu is introduced here. The matching decompilation tree does not yet
contain a safely recovered options-row insertion seam. The separate ROM patch
has a custom multipage options overlay, but its renderer/OAM ownership is not
represented by this source tree and should not be copied blindly.

The next bounded UI task is to expose one Original/Definitive row through that
established options path and call `definitive_mode_store`. Until then the save
tool and direct runtime record update are the supported test controls.

## Validation

```sh
make compare
python3 tools/build_auto_enter_poc.py fomt.gba /tmp/fomt-auto-enter-poc.gba
python3 tools/test_player_auto_enter.py /tmp/fomt-auto-enter-poc.gba
```

The regression covers save-file persistence, invalid-record fallback,
Original/Definitive farmhouse behavior, an ordinary blocked wall, normal
A-button entry, and the automatic step-on exit.
