---
name: execution-receipt
description: Close an ops-shaped packet with compact operational evidence using managerial-triage and behavior-check lines.
---

# Execution Receipt

## Use When

- an ops-shaped packet is closing
- the packet needs concise operational evidence
- runnable verification or its absence should stay explicit

## First Reads

1. `docs/execution-receipts.md`
2. `docs/public-scope.md`
3. `docs/run-with-codex.md`

## Workflow

1. State what had to stay local now.
2. State whether anything was intentionally deferred.
3. Run the direct runnable check when one exists.
4. Record the compact receipt as:
   - `managerial-triage: ...`
   - `behavior-check: ...`

## Output Rule

- keep the receipt to the smallest useful operational summary
- prefer one concrete runnable check over a vague assurance
- if no direct runnable check exists, say `behavior-check: not-applicable (<reason>)`

## Guardrails

- Do not let the receipt become a second long summary.
- Do not omit runnable verification when the packet depends on runnable local behavior.
- Do not pretend a review or archive note is the same as a behavior check.
