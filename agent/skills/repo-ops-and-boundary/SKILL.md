---
name: repo-ops-and-boundary
description: Validate the current public harness core, enforce repo-safe boundaries, and shape harness packaging without importing private maintainer state.
---

# Repo Ops And Boundary

## Use When

- repo-only validation should run
- a public boundary claim needs proof
- the current harness core is being tightened or slightly expanded

## First Reads

1. `AI_CONTEXT.md`
2. `docs/public-scope.md`
3. `docs/architecture.md`
4. `docs/run-with-codex.md`

## Workflow

1. Classify the task as `repo-ops` or `public-export`.
2. Keep exactly one lane live.
3. State the current harness core explicitly before editing.
4. Run the local validators.
5. If the task changes public scope, keep the explanation public-safe and do not recreate private maintainer routing here.
6. Report what changed, what was validated, and what still belongs back in `study`.

## Guardrails

- Do not create maintainer-only working-state files here.
- Do not present this repo as the canonical owner of `study`.
- Do not widen the harness core by copy alone; the repo content must match the public claim.
