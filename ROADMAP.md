# Roadmap

## Current Position

The first public harness release is now shipped and intentionally small.

Current shipped harness core:

- repo-safe validation and boundary bootstrap
- AI-facing onboarding and machine-readable routing
- explicit ops handoff
- repair scope and patch-home classification
- execution receipts for ops-shaped packets
- repo-only workflow enforcement for the public validation surface

## Next Likely Additions

- one beginner-visible ordinary-request proof flow beyond the current demo flow
- one onboarding surface that reduces coding assumptions for weaker coders
- one validator or packaging helper if it stays beginner-readable and public-safe

## Non-Goals For Now

- no full mirror of the private support stack
- no private maintainer state in the public repo
- no code-first CLI framework positioning
- no giant task catalog added by copy alone

## Admission Rule

A future addition should land only if it is:

- independently legible
- meaningfully lowers the code or context burden for ordinary use
- safe to publish without private runtime state
- consistent with explicit rules and predictable behavior
