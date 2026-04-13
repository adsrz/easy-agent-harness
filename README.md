<div align="right">
  <a href="./README.md">English</a> | <a href="./README.zh-CN.md">简体中文</a>
</div>

# Easy Agent Harness

`Type: Low-Code Harness` `Owner: study-derived` `Mode: Public Base`

`Easy Agent Harness` is a study-owned public repo for a beginner-friendly, low-code agent harness.

It is built for ordinary users who want agents to handle everyday requests without first buying into a coding-first CLI workflow.

It favors explicit rules, readable control surfaces, and predictable behavior over prompt magic or framework cleverness.

It is intentionally smaller than the private `study` workspace, and different from `learning-os`.

- `study`
  canonical private owner
- `learning-os`
  public learning harness
- `easy-agent-harness`
  public low-code agent harness baseline

Proof first: verify the repo-safe surface, inspect one compact support loop, then read the deeper docs.

## Positioning

The public positioning is:

- beginner-friendly and low-code, not code-first
- a rules-first harness for everyday agent use
- public baseline, not canonical doctrine
- local-first and machine-readable where that reduces ambiguity

The repo moved from `study-superpowers` to `study-agent-harness`, and now to `easy-agent-harness`.

The current name keeps the artifact type legible while lowering first-click friction. `low-code` belongs in the positioning, not in the slug.

## Current Harness Core

The current public release is still deliberately small.

It ships the control spine of the harness rather than a giant task catalog:

- repo-safe validation entrypoints
- public-boundary bootstrap
- AI-facing onboarding and machine-readable routing
- explicit packet ownership handoff for ops-shaped work
- repair scope and patch-home classification
- execution receipts for ops-shaped packets

That control loop is:

`ops-handoff -> repair-scope -> execution-receipt`

This repo is not trying to mirror the full private workspace on day one. The current release is the readable, verifiable control core.

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

That demo shows the current harness control loop end to end:

`ops-handoff -> repair-scope -> execution-receipt`

## Why This Repo Exists

Many public agent repos assume strong coding ability, terminal fluency, or a willingness to live inside a developer-first framework.

This repo chooses another tradeoff:

- lower code burden
- clearer rules and boundaries
- smaller readable surfaces
- predictable execution and validation
- honest separation between public result and private maintainer state

The current public core is still narrow, but the direction is broader than a single support slice: it is meant to be the base harness for ordinary rule-driven agent use.

## Repo Map

- [CHANGELOG.md](CHANGELOG.md)
  public release history for the harness repo
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
- `Beginner-facing direction`
  Use [ROADMAP.md](ROADMAP.md) to see which ordinary-use proof or onboarding surface should land next.
- `Contribution and roadmap`
  Use [ROADMAP.md](ROADMAP.md), [CONTRIBUTING.md](CONTRIBUTING.md), and [CHANGELOG.md](CHANGELOG.md).

## Boundary

This public repo does not include:

- private doctrine
- learner-specific state
- maintainer-only working files
- private logs or runtime memory
- a mirror of the full private support stack
- a code-first framework posture disguised as beginner tooling

The canonical owner remains `study`.
