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
stores timing values and four per-direction counters. It is still input
infrastructure, not player movement; it must be followed through its callers
rather than renamed as movement code.

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
