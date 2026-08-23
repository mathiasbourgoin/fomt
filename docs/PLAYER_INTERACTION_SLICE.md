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
