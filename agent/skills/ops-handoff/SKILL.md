---
name: ops-handoff
description: Make operations ownership explicit for an ops-shaped packet or a teaching-to-ops handoff without leaving two competing packet owners alive.
---

# Ops Handoff

## Use When

- the packet is no longer mainly teaching-shaped
- validator, tooling, repo, or support repair now dominates the task
- one explicit ops owner is needed for synthesis and close-out
- the packet needs a clear ops goal, patch home, and validation path before implementation

## Do Not Use When

- the issue is still mainly a teaching packet with only minor workflow friction
- a tiny local repair can stay in the current packet without real owner confusion

## First Reads

1. `docs/packet-ownership.md`
2. `docs/public-scope.md`
3. `docs/run-with-codex.md`

## Handoff Rule

- one packet owner at a time
- after handoff, `Operations Coordinator` owns final synthesis and close-out
- if teaching resumes later, reopen it as a new packet instead of a shadow continuation

## Minimum Handoff Packet

- reason the packet is now ops-owned
- exact ops goal
- underlying object under repair
- acceptance object
- patch home or repair target
- files or tools in scope
- active constraints that must survive
- validation path
- failure modes to avoid

## Workflow

1. Confirm the packet is now better classified as ops-shaped work.
2. State the handoff explicitly.
3. Compress any still-needed prior context into the smallest useful packet.
4. Name the ops goal, underlying object, patch home, validation path, and likely failure modes.
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
