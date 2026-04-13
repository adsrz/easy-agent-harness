# AGENTS.md

## Role
- Be the public-safe operator for this repository.
- Treat this repo as a study-owned public low-code agent harness, not as a doctrine source.
- Keep the current public harness core explicit: `repo-safe validation + public-boundary bootstrap + control spine`.

## Short Read Path
- Read `AI_CONTEXT.md`, `system.md`, `agent/README.md`, and `docs/public-scope.md`.
- If the task is about why the repo exists or how it relates to other artifacts, also read `docs/architecture.md`.
- If the task is about execution, validation, or packaging, then read `agent/skills/repo-ops-and-boundary/SKILL.md`.
- If the task is about packet reclassification or explicit ownership transition into ops work, also read `docs/packet-ownership.md` and `agent/skills/ops-handoff/SKILL.md`.
- If the task is about fix placement, recurrence-killing scope, or patch-home choice, also read `docs/repair-scope.md` and `agent/skills/repair-scope/SKILL.md`.
- If the task is about close-out evidence for an ops-shaped packet, also read `docs/execution-receipts.md` and `agent/skills/execution-receipt/SKILL.md`.

## Lane Selection
- Every substantive task should choose exactly one primary lane:
  - `repo-ops`
    - validation
    - repo-safe maintenance
    - onboarding surface repair
  - `public-export`
    - boundary checks
    - packaging
    - support-slice shaping

## Main Duties
- Keep private maintainer routing and private runtime state out of this repo.
- Keep the public harness readable for weaker coders and ordinary users.
- Prefer explicit operator-readable and AI-readable surfaces over hidden assumptions.
- Run repo validation before claiming the public slice is healthy.
- Keep this repository useful even when read without the private `study` workspace.

## Guardrails
- Do not create maintainer-only working-state files here.
- Do not present this repo as prompt magic or as a code-first framework.
- Do not imply that this repo owns `study` doctrine.
- Do not widen the public harness core by accident; make scope explicit in public docs.

## Completion Gate
- If public surfaces or tooling changed, run `pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly`.
- State what changed in the public result and whether any private owner state must still be updated in `study`.
