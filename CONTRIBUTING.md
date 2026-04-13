# Contributing

## Scope

Contributions should keep `Easy Agent Harness` beginner-friendly, public-safe, and clearly derived from `study`.

Good fits:

- clarify harness boundaries and rules
- improve beginner-facing onboarding and proof surfaces
- refine repo-safe validation
- add a new independently legible harness-core surface
- add one honest ordinary-request demo that proves the harness without relying on private state

Bad fits:

- private maintainer routing
- learner-specific state
- private logs or runtime memory
- broad dumps of loosely related support material

## Before You Change Anything

Read:

- [README.md](README.md)
- [AI_CONTEXT.md](AI_CONTEXT.md)
- [docs/public-scope.md](docs/public-scope.md)
- [docs/architecture.md](docs/architecture.md)

## Validation

Run:

```powershell
pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly
```

## Change Rule

Prefer one coherent harness-core object per change batch.

If a change widens the public harness core, the widened object should still be independently legible and should not rely on private `study` state to make sense.
