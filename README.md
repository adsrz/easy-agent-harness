<div align="right">
  <a href="./README.md">English</a> | <a href="./README.zh-CN.md">简体中文</a>
</div>

# Study Superpowers

`Type: Support Layer` `Owner: study-derived` `Mode: Public Companion`

`Study Superpowers` is a study-owned public companion repo for modular support-system slices that are safe to publish independently.

It is intentionally narrower than the private `study` workspace, and different from `learning-os`.

- `study`
  canonical private owner
- `learning-os`
  public learning harness
- `study-superpowers`
  public companion support layer for low-coupling operator surfaces

Proof first: verify the repo-safe surface, inspect one compact support loop, then read the deeper docs.

## Positioning

The public positioning is:

- operator superpowers for a `study`-shaped system
- boundary-conscious support slices, not a generic platform
- public companion result, not canonical doctrine

The current name stays as `study-superpowers` for the first push because the `study-` prefix keeps ownership explicit, while `superpowers` makes the modular capability framing legible without pretending this repo is a full managed-agent base.

## Current Slice

The first shipped layer is deliberately small:

- repo-safe validation entrypoints
- public-boundary bootstrap rules
- AI-facing operator onboarding
- one minimal operator skill for validation and boundary work

The first non-bootstrap support slice is:

- explicit packet ownership handoff for ops-shaped work

That means this repo now ships one real support pattern beyond bootstrap: how to move a packet into ops ownership without leaving two competing owners alive.

The second non-bootstrap support slice is:

- repair scope and patch-home classification

That makes the public support layer more actionable: after ownership is explicit, the next question is where the fix actually belongs.

The third non-bootstrap support slice is:

- execution receipt for ops-shaped packets

That closes the loop: after ownership and patch-home are clear, the packet should leave a compact record of what stayed local now and what runnable check actually tested the claim.

This repo is not trying to ship the full private support stack on day one.

## Proof Lane

If you only want to verify that the current public slice is real, run:

```powershell
pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly
```

Expected result:

- PowerShell validators parse cleanly
- machine-readable routing files load
- required public surfaces exist
- maintainer-only working state stays out of the repo

Then open:

- [docs/demo-flow.md](docs/demo-flow.md)

That demo shows the first shipped support loop end to end:

`ops-handoff -> repair-scope -> execution-receipt`

## Why This Repo Exists

Some support-system surfaces inside `study` are low-coupling enough to stand on their own publicly, but they do not belong in `learning-os`.

This repo is the place for those slices when they are:

- public-safe
- modular enough to use independently
- still clearly derived from `study`

## Repo Map

- [CHANGELOG.md](CHANGELOG.md)
  public release history for the companion repo
- [ROADMAP.md](ROADMAP.md)
  near-term public-facing priorities
- [CONTRIBUTING.md](CONTRIBUTING.md)
  contribution scope and validation expectations
- [AI_CONTEXT.md](AI_CONTEXT.md)
  shortest AI-facing entrypoint
- [system.md](system.md)
  public identity and operating rules
- [docs/public-scope.md](docs/public-scope.md)
  what the current slice includes and excludes
- [docs/architecture.md](docs/architecture.md)
  relationship to `study` and `learning-os`
- [docs/packet-ownership.md](docs/packet-ownership.md)
  public-safe handoff contract for ops-shaped packets
- [docs/repair-scope.md](docs/repair-scope.md)
  public-safe contract for scope classification and patch-home choice
- [docs/execution-receipts.md](docs/execution-receipts.md)
  public-safe contract for concise operational close-out receipts
- [docs/run-with-codex.md](docs/run-with-codex.md)
  minimal Codex execution path
- [docs/demo-flow.md](docs/demo-flow.md)
  compact proof of the first shipped support loop
- [agent/README.md](agent/README.md)
  public-safe agent layer
- [agent/skills/repo-ops-and-boundary/SKILL.md](agent/skills/repo-ops-and-boundary/SKILL.md)
  minimal operator skill
- [agent/skills/ops-handoff/SKILL.md](agent/skills/ops-handoff/SKILL.md)
  packet ownership handoff skill for ops-shaped work
- [agent/skills/repair-scope/SKILL.md](agent/skills/repair-scope/SKILL.md)
  repair-scoping skill for choosing patch home before implementation
- [agent/skills/execution-receipt/SKILL.md](agent/skills/execution-receipt/SKILL.md)
  execution-receipt skill for operational close-out evidence
- [tools](tools)
  local validators for this public slice

## Next

- `Proof first`
  Run the repo-only checks, then open [docs/demo-flow.md](docs/demo-flow.md).
- `AI agent entry`
  Start with [AI_CONTEXT.md](AI_CONTEXT.md), then [task-router.json](task-router.json).
- `Contribution and roadmap`
  Use [ROADMAP.md](ROADMAP.md), [CONTRIBUTING.md](CONTRIBUTING.md), and [CHANGELOG.md](CHANGELOG.md).

## Boundary

This public repo does not include:

- private doctrine
- learner-specific state
- maintainer-only working files
- private logs or runtime memory
- a mirror of the full private support stack

The canonical owner remains `study`.
