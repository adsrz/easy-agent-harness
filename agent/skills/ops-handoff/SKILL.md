---
name: ops-handoff
description: Make operations ownership explicit for an ops-shaped packet without leaving two competing packet owners alive.
---

# Ops Handoff

## Use When

- the packet is no longer mainly teaching-shaped
- validator, tooling, repo, or support repair now dominates the task
- one explicit ops owner is needed for synthesis and close-out

## First Reads

1. `docs/packet-ownership.md`
2. `docs/public-scope.md`
3. `docs/run-with-codex.md`

## Workflow

1. Confirm the packet is now better classified as ops-shaped work.
2. State the handoff explicitly.
3. Compress any still-needed prior context into the smallest useful packet.
4. Name the ops goal, patch home, and likely validators.
5. Keep one accountable owner through close-out.

## Visible Output

Use a compact line such as:

`Packet owner: Operations Coordinator. Reason: <short reason>.`

If scope matters, also state:

`Scope classification: <...>. Patch home: <...>.`

## Guardrails

- Do not keep two official packet owners alive.
- Do not drag full noisy teaching context into an ops packet.
- Do not use handoff as a substitute for actual validation or actual repair.
