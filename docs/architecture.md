# Architecture

## Purpose

This repo exists because some agent-control surfaces are:

- too useful to remain fully private
- too general and control-oriented to live only inside `learning-os`
- valuable for weaker coders who need a lower-code baseline for ordinary agent use
- still clearly derived from `study`

## Topology

```text
study
  -> canonical doctrine, private owner state, export rules
learning-os
  -> public learning harness
easy-agent-harness
  -> public low-code agent harness baseline
```

## Naming Decision

The repo is now named `easy-agent-harness`.

- `easy`
  lowers first-click friction for ordinary users
- `agent-harness`
  makes the artifact type legible
- `study-`
  was dropped from the public name because private lineage belongs in the description, not in the slug
- `superpowers`
  was retired because it sounded like tricks rather than control

## Current Public Object

The current public object is not the whole private workspace and not a giant framework.

It is the baseline harness core:

- validation entrypoints
- boundary bootstrap
- AI-facing onboarding and machine-readable routing
- explicit packet ownership handoff for ops-shaped work
- repair scope and patch-home classification
- execution receipts for ops-shaped packet close-out

This is the control spine of the current public harness. It gives the repo a readable, verifiable base before any larger task layer is admitted.

## Boundary Rule

`easy-agent-harness` can expose public-safe harness components and public-facing explanations.

It should not absorb:

- private maintainer routing
- learner-specific state
- private logs
- private doctrine that still belongs to `study`

## Expansion Rule

Future harness-core additions should be admitted one by one.

A new surface belongs here only if it is:

- low-code and beginner-readable
- helpful for ordinary agent use
- safe to publish without private runtime state
- consistent with explicit rules and predictable behavior
