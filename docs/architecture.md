# Architecture

## Purpose

This repo exists because some support-system surfaces are:

- too useful to remain fully private
- too operator-facing to belong inside `learning-os`
- still clearly derived from `study`

## Topology

```text
study
  -> canonical doctrine, private owner state, export rules
learning-os
  -> public learning harness
study-superpowers
  -> public companion support layer
```

## Naming Decision

For the first public push, keep the repo name as `study-superpowers`.

- `study-`
  keeps the canonical owner relationship explicit
- `superpowers`
  communicates modular operator capabilities better than a generic support-system label

Rename only if the repo later grows beyond a clearly study-owned companion identity.

## Current Public Object

The current public object is not "the whole support system".

It is a narrow support layer:

- validation entrypoints
- boundary bootstrap
- AI-facing operator guidance
- explicit packet ownership handoff for ops-shaped work
- repair scope and patch-home classification
- execution receipts for ops-shaped packet close-out

The first non-bootstrap slice was chosen because it stays useful outside the private workspace while avoiding private write-back, logging, and maintainer-state surfaces.

## Boundary Rule

`study-superpowers` can expose public-safe support components and public-facing explanations.

It should not absorb:

- private maintainer routing
- learner-specific state
- private logs
- private doctrine that still belongs to `study`

## Expansion Rule

Future slices should be admitted one by one.

A new slice belongs here only if it is:

- low-coupling
- operator-meaningful on its own
- safe to publish without private runtime state
