# Repair Scope

## Purpose

This document exposes one public-safe support pattern:

- classify the repair before implementing it
- choose the real repair target instead of patching the nearest visible symptom

## Use When

- multiple files or layers could plausibly own the fix
- a local symptom may point to a wider recurring failure
- the support packet needs an explicit repair-target choice before implementation

## Core Questions

Ask these first:

1. What is the actual object under repair?
2. Is the failure local, or does it come from a shared protocol or shared boundary?
3. If I patch only the current symptom, what recurrence path stays alive?
4. Which owner can actually kill recurrence?

## Output Shape

Use a compact receipt such as:

`Scope classification: <...>. Repair target: <...>.`

Then make the repair logic explicit:

- `Validation path`: what check or audit will falsify the chosen owner set
- `Under-repair risk`: what stays broken if the patch is too local
- `Local instance fix`: what the current packet may still need locally
- `Promoted fix`: the shared owner change that prevents recurrence, or `none`

## Example

```text
Scope classification: shared support protocol.
Repair target: docs/repair-scope.md and agent/skills/repair-scope/SKILL.md

Validation path:
- rerun the repo-only validator after the rule change

Under-repair risk:
- fixing only one validator output would leave the same misclassification path alive

Local instance fix:
- repair the failing validator message

Promoted fix:
- update the shared classification rule so the next packet routes to the same owner directly
```

## Guardrails

- Do not confuse the nearest diff hunk with the right owner.
- Do not widen scope just because a repair touches several files.
- Do not call a patch minimal if it leaves the same recurrence path alive.
