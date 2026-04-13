# AI Context

This is the shortest safe entrypoint for an AI agent opening `Easy Agent Harness`.

Machine-readable companions:

- [ai-context.json](ai-context.json)
- [task-router.json](task-router.json)
- [agent/skills/index.json](agent/skills/index.json)

## Identity

- `repo_type`: study-owned public low-code agent harness
- `primary_goal`: make everyday agent use more accessible through explicit rules, readable control surfaces, and predictable behavior
- `current_core`: repo-safe validation, public-boundary bootstrap, AI-facing onboarding, and the control spine `ops-handoff -> repair-scope -> execution-receipt`
- `positioning`: beginner-friendly and low-code, not a code-first framework
- `not_this`: not the canonical doctrine source, not a mirror of private runtime state, not a prompt-tricks pack

## Fast Read Order

1. [AGENTS.md](AGENTS.md)
2. [system.md](system.md)
3. [agent/README.md](agent/README.md)
4. [docs/public-scope.md](docs/public-scope.md)
5. [docs/architecture.md](docs/architecture.md)
6. [docs/packet-ownership.md](docs/packet-ownership.md)
7. [docs/repair-scope.md](docs/repair-scope.md)
8. [docs/execution-receipts.md](docs/execution-receipts.md)

If the task is about execution or validation, also read:

9. [agent/skills/repo-ops-and-boundary/SKILL.md](agent/skills/repo-ops-and-boundary/SKILL.md)
10. [docs/run-with-codex.md](docs/run-with-codex.md)

If the task is about packet reclassification or who should own the current support packet, also read:

11. [agent/skills/ops-handoff/SKILL.md](agent/skills/ops-handoff/SKILL.md)

If the task is about where a repair should land, also read:

12. [agent/skills/repair-scope/SKILL.md](agent/skills/repair-scope/SKILL.md)

If the task is about how to close an ops-shaped packet with compact operational evidence, also read:

13. [agent/skills/execution-receipt/SKILL.md](agent/skills/execution-receipt/SKILL.md)

## Task Routing

- `repo-ops`
  - use for repo validation, repo-safe maintenance, or onboarding-surface repair
- `public-export`
  - use for public-boundary checks, harness-core packaging, or scope-shaping edits

Use exactly one lane per substantive packet.

## Boundary

Do not commit:

- private learner state
- maintainer-only working files
- private logs
- local machine paths
- mirrored private doctrine from `study`

## First Command

```powershell
pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly
```
