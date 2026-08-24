# Player movement and interaction slice

This is the bounded entry point for the movement / interaction reconstruction.
It deliberately does not claim that the door path is understood yet.

## Confirmed input boundary

| Address | Recovered role | Evidence |
| --- | --- | --- |
| `0800912C` | Read active-high hardware key mask | Reads `REG_KEYINPUT`, inverts it, masks to the ten GBA key bits. |
| `08009140` | Refresh `InputState::held` | Samples the hardware boundary into offset `+00`. |
| `08009168` | Refresh and synchronize input | Copies `held` into `pressed` at `+04`. |
| `08009190` | Compute newly pressed keys | Samples again, subtracts the prior held mask, stores the edge mask at `+04`. |

`InputState` is now represented in `include/input.hh`. Its middle halfword at
`+02` remains unknown and is not assigned a semantic name.

The adjacent `080091A4..080092EC` code is a generic repeat/filter layer: it
stores timing values and ten per-key counters. It is still input
infrastructure, not player movement; it must be followed through its callers
rather than renamed as movement code.

Its complete `0x22`-byte layout is now represented as `InputRepeatState`:
the sampled state, a repeated-key mask, initial delay, repeat interval, and
ten signed counters ordered from key bit `0x0200` down to `0x0001`.
`func_08009268` and `func_080092C8` remain assembly for now: their semantics
are recovered, but the historical compiler requires a specific high-register
allocation not yet reproduced by readable C. The typed layout is retained so
future matching attempts do not have to rediscover it.

### Movement-time dispatch context

The Right-held trace also identifies the owner of the observed mode word.
`sub_080D8178` stores `r1 + 0x9C` in its local slot at `sp + 0x558` before
entering its dispatch loop. In the controllable replay that slot resolves to
`0x02005B78`, so the observed word belongs to a `ScriptLoopContext` at
`0x02005ADC`, not to the input state itself. The word moves from `0x10` to
`0x0F` after four Right-held frames and later settles at `0x00`; it is a
dispatch mode, not a position coordinate. Its owner and the handler pointer
at `+0xB4` are represented in `include/script_engine.hh`, but neither is yet
named as the player controller.

The constructor at `func_08011ED8` allocates this context as `0xF8` bytes,
stores its outer owner and argument at `+0x88/+0x8C`, and stamps a separate
interface vtable at `+0xF4`. This confirms that the loop context is a composed
scene object rather than a base `ScriptEngine` instance.

## Explicitly not yet connected

The callers that turn an `InputState` into player movement, front-tile tests,
interaction scripts, or door transitions have not yet been identified. The
transition renderer/controller around `0804F7A4` and `08050D3C` is a downstream
consumer; it is not evidence that it is the player-door entry point.

## Next trace boundary

Use a real walk-to-door scenario to trace consumers of the pressed/held state
until the first function that simultaneously observes player position/facing
and a front-tile or interactable result. Only then should the door/exit branch
be named and reconstructed.

## Runtime tracing status

`gba-recomp` now builds the clean ROM into a native, line-debuggable shared
object (`/tmp/fomt-player-recomp/out/baserom.so`).  A first deterministic
right-input replay was deliberately kept as a harness check: the input-read
breakpoint resolves and records guest return addresses, but the replay has not
yet entered a playable field state, so it observes only the input layer's own
initialization path.  It is therefore **not** evidence for a player caller.

The recomp version in use emits translated labels with the suffix `_t` rather
than the historical `_a`; trace scripts must resolve the emitted label before
arming a source-line breakpoint.  This is documented here so later movement
work does not silently treat an unbound breakpoint as an empty trace.

The next runtime experiment must use a deterministic field-state input or
save, then compare a no-direction window with a walk-toward-door window.  The
first new guest return address that appears only during walking is a candidate
for the upstream player-controller chain; it still needs static confirmation
before receiving a semantic name.

### Reusable clean-boot recipe

`tools/replay_player_slice.py` records the established mGBA clean-boot path
into `gba-input v1`, including the conditional cursor checks on both naming
screens.  It has been replayed through `gba-recomp runc` to the first Thomas
dialogue, producing the expected vanilla screen.  `--advance-dialogues N`
extends that exact prefix without fabricating player state, which lets a trace
start in a real controllable scene after the introduction.

```sh
python3 tools/replay_player_slice.py baserom.gba \
  --advance-dialogues 100 --out /tmp/fomt-player.gbainput
recomp runc baserom.gba --frames 57340 --input /tmp/fomt-player.gbainput
```

The recorder and the native trace worktree are intentionally separate from
the matching source: generated replay files, debugger logs, and rendered
frames live under `/tmp/fomt-player-recomp/`; this document preserves their
meaning and the command that regenerates them.

### Confirmed controllable-state checkpoint

The regenerated clean replay reaches a controllable interior scene at frame
`57340`.  Holding the active-low RIGHT mask from frame `57500` through
`58100` moves the on-screen player from the table toward the right wall; a
recomp-rendered frame confirms the displacement.  This gives the slice a
repeatable **real movement window** for future breakpoints.  It does not yet
identify the player controller, collision routine, or door transition path.

### Confirmed movement-time input consumer

Host-only instrumentation of the generated recompilation output, bounded to
the RIGHT-held interval, confirms that the live `InputState` is at
`0x03007898`.  Its `held` field becomes `0x0010`; `pressed` is `0x0010` on
the first frame and then zero.  The repeat/filter entry `08009268` is called
from `0x080D8FE8` (return address `0x080D8FEF`), a branch inside
`sub_080D8178`, which is part of the already recovered `ScriptEngine` family.

This is a useful boundary, but not a claim that `ScriptEngine` is the player
controller: it establishes the real, movement-time consumer of the shared
input state and rules out the earlier UI-constructor callers.  The temporary
host instrumentation, logs and frames are retained in
`/tmp/fomt-player-recomp/` and are deliberately not part of the matching ROM
tree. The instruction-level differential below now separates the initial
script transition from the steady directional-input and player-update paths.

### Differential EWRAM candidate generator

`tools/replay_player_slice.py` can now run the same clean boot twice and
compare a short idle window against a Right-held window. It writes a compact
JSON report of changed EWRAM ranges without hard-coding any game structure:

```sh
python3 tools/replay_player_slice.py baserom.gba \
  --advance-dialogues 100 --out /tmp/fomt-player.gbainput \
  --movement-diff /tmp/right-ewram.json --movement-frames 120 \
  --movement-snapshots /tmp/fomt-player-snapshots
```

The first 120-frame experiment yielded 300 ranges / 873 bytes. This is
expected to include animation, clocks and script bookkeeping. It is a
candidate generator, not an automatic player-structure detector: a range must
be confirmed by a shorter differential window and a targeted write trace
before it receives a field name.

When `--movement-snapshots` is supplied, the baseline, idle, and Right-held
EWRAM images are written alongside the JSON report. They are trace artifacts,
not repository assets; retaining them makes later structure and write-trace
work reproducible from the same clean gameplay checkpoint.

The first, 16 and 120-frame windows now provide one such bounded correlation:
the transient input byte at `0x02005B78` changes from `0x10` to `0x02` after
one frame and settles at `0x00`, while nine nearby ranges first change by
frame 16 and remain identical through frame 120.  These ranges are preserved
as anonymous movement-time candidates in the generated reports; they are not
yet assigned to a player, collision, or map structure.  This separates an
input edge from stable downstream state without fabricating an emulator state.

### Instruction-level dispatcher differential

`tools/trace_player_slice.py` clones the deterministic frame-57340 state and
steps an idle window and a Right-held window instruction by instruction. It
records visits to `sub_080D8178`, direct calls out of that function, indirect
register-call targets, script VM dispatches, directional-controller entries,
player-update calls, and writes to the bounded EWRAM candidates. The optional
`--pre-frames` argument reaches a later walk or wall checkpoint quickly before
instruction stepping begins:

```sh
python3 tools/trace_player_slice.py baserom.gba \
  --advance-dialogues 100 --frames 4 \
  --out /tmp/fomt-player-recomp/player-slice-trace-004.json
```

The four-frame differential proves that the first Right-held frame selects
the `080D921C` dispatch arm, while the steady path uses `080D9288`. Both arms
pass the same object (`0x0203AC74` through slot `0x0203A6EC`) and the live
`InputState` (`0x03007898`) to `func_08050D3C`; the held/pressed masks are
captured in the report. A later Right-only indirect call resolves to
`AScriptEngine::method_0803EFD8` at `0803EFD8`. These are reproducible control-
flow facts, not yet proof that either object owns player collision or door
logic.

The generated JSON remains under `/tmp/fomt-player-recomp/` as a trace
artifact. The matching tree keeps the recorder and this explanation, so the
experiment can be regenerated instead of committing emulator state.

The `AScriptEngine::method_0803EFD8` boundary is now classified more narrowly.
On the first Right-held window it executes one VM opcode `0x21` (`CALL`) at
script PC `0x0C`, with call id `0x20`. No script opcode is dispatched in the
steady walk or wall windows. This proves that the observed VM edge is part of
the initial transition, not the player collision test.

At both the free-walk and wall checkpoints, the directional branch instead
calls `func_0803D4D8` on object slot `0x0203A6EC`. The function forwards an
accepted direction event to `func_0803C7C8` using the object's two virtual
configuration getters. `func_0803D4D8` is now recovered byte-for-byte in C++.

### Confirmed player position and collision owner

The retained screenshots and EWRAM snapshots correlate halfword
`0x0203904E` with the on-screen player X position: it is `143` at the idle
checkpoint, `150` after 20 Right-held frames, and `225` at the right wall.
The neighboring halfword at `0x02039052` remains the player Y position `112`.
An instruction-level write trace identifies `0x0802D0DA`, inside
`func_0802CDCC`, as the instruction that commits the accepted X coordinate.

During seven freely moving frames, `func_0802CDCC` writes X once per frame.
At the wall, it performs the same two rectangle predicates through
`func_080AC070`, does not write X, and calls `func_0802536C` with direction
`3` and residual displacement `1`. This identifies `func_0802CDCC` as the
player movement/collision owner and `func_0802536C` as its blocked-movement
resolver.

The corresponding trace artifacts are retained as
`/tmp/fomt-player-recomp/player-collision-trace-walk-001.json` and
`/tmp/fomt-player-recomp/player-collision-trace-wall-001.json`.

### Confirmed doorway event boundary

The trace tool's `--scenario door` mode follows a verified route from the
same clean checkpoint: Down for 60 frames, Left for 30, Right for 8, then a
Down differential. The route crosses the farmhouse doorway and reaches the
outside Thomas scene; screenshots at 40 and 60 final-Down frames bound the
transition onset. The instruction trace spanning final-Down frames 52..64 is:

```sh
python3 tools/trace_player_slice.py baserom.gba \
  --advance-dialogues 100 --scenario door --pre-frames 52 --frames 12 \
  --out /tmp/fomt-player-recomp/player-door-trace-003.json
```

Ordinary free movement and the doorway both execute the actor update
`func_08024CD0`. Both use its virtual rectangle builder at call site
`0x08024D48` and its map/tile query at `0x08024EFE`. Only the doorway trace
also executes call site `0x08024E8E`, resolving to `func_0801D9A8` exactly
once. That bridge preserves the event payload and type in `r1`/`r2` and calls
`func_08012B24`; for this doorway `r2` is zero, selecting the two-entry event
queue. Immediately afterward, `AScriptEngine` starts code at `0x082DEDAC`.

This identifies `func_08024CD0` as the front/step-tile interaction owner and
`func_0801D9A8` -> `func_08012B24` as the doorway-event enqueue boundary. The
door database lookup and destination decoding remain unnamed inside the actor
update until their individual return values are traced. The retained control
artifact for ordinary movement is
`/tmp/fomt-player-recomp/player-actor-trace-walk-001.json`; the doorway
artifact is `/tmp/fomt-player-recomp/player-door-trace-003.json`.

Three functions on this confirmed path now match byte-for-byte in C++:

- `func_08024BFC` builds the actor query rectangle. Its centered form is
  `Box(x, y - 2, 14, 14)`; otherwise it delegates to `func_0803240C`.
- `func_0801A054` returns the collision view `{tiles, metadata, width,
  height}` for a map. It handles the active map directly, resolves inactive
  map variants from season and building upgrade levels, and has a dedicated
  128 by 88 view for external map id 2.
- `func_08012B24` appends the eight-byte interaction payload to one of three
  bounded queues in the global game state. Doorway calls use queue id 0, the
  two-entry queue at offset `0x378`; ids 1 and 2 select the 40-entry queue at
  `0x38C` and the single-entry queue at `0x4D0` respectively.

This removes ambiguity around rectangle construction, map-view ownership,
and event storage. The remaining unknown inside `func_08024CD0` is narrower:
the code that derives the payload and destination before the already-known
enqueue call.

As a first source recovery on this confirmed path, `func_0805039C` now matches
byte-for-byte in C++. It normalizes the transition object's state to `1` for
states `0..2`; on state `0` it also resets the `+0xD0` subobject and rewires
the `+0x20` owned child from the `+0x130/+0x148` sources. The field names remain
address-based until a constructor or caller proves stronger semantics.
