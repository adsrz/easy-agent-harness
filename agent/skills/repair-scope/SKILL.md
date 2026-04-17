---
name: repair-scope
description: Classify repair scope and choose the real repair target before implementing a support-system fix.
---

# Repair Scope

## Use When

- more than one repair target looks plausible
- the nearest symptom may not be the recurrence-killing fix
- a support repair needs explicit scope classification before implementation

## First Reads

1. `docs/repair-scope.md`
2. `docs/public-scope.md`
3. `docs/run-with-codex.md`

## Workflow

1. Name the actual object under repair.
2. List the plausible repair targets.
3. Decide whether the defect is local or shared.
4. State the validation path for the chosen owner set.
5. State the under-repair risk if the patch stays too local.
6. Choose the repair target that kills recurrence.
7. If the live packet still needs a local symptom repair, say so separately.

## Visible Output

Use a compact shape such as:

`Scope classification: <...>. Repair target: <...>.`

Then state:

- `Validation path`
- `Under-repair risk`
- `Local instance fix`
- `Promoted fix` or `none`

## Guardrails

- Do not patch the nearest file by reflex.
- Do not over-promote a truly local fix.
- Do not call the scope settled until recurrence risk is named explicitly.
