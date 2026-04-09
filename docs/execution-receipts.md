# Execution Receipts

## Purpose

This document exposes one public-safe support pattern:

- keep ops-shaped close-out compact
- preserve what stayed local now
- preserve what runnable check actually tested the claim

## Use When

- the packet is structural, ops-shaped, workflow-shaped, or tooling-shaped
- implementation is done and close-out should remain auditable
- the packet should not rely on diffuse prose to explain what was actually checked

## Core Shape

Use a compact receipt with two lines:

- `managerial-triage: ...`
- `behavior-check: ...`

## What Each Line Should Hold

`managerial-triage`

- what had to stay local now
- what did not need delegation
- what was intentionally deferred

`behavior-check`

- the runnable local check that could falsify the claim
- or `not-applicable (<reason>)` when no direct runnable check exists

## Example

```text
managerial-triage: local-now = repair the route classifier and rerun the repo gate; delegate-now = none because the patch home is already clear; later = widen only if a second owner becomes necessary.
behavior-check: pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly passed.
```

## Guardrails

- Do not turn the receipt into a second narrative summary.
- Do not hide missing runnable verification behind generic success language.
- Do not claim `behavior-check` if no check actually ran.
