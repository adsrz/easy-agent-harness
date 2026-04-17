# Demo Flow

## Purpose

This walkthrough shows how the first public harness release fits together as one control loop.

The loop is:

1. make packet ownership explicit
2. classify repair scope and patch home
3. close with a compact execution receipt

## Demo Scenario

Suppose an agent starts in a teaching-shaped packet, but the real work has shifted into validator repair.

### Step 1: Handoff Ownership

Use:

- [docs/packet-ownership.md](packet-ownership.md)
- [agent/skills/ops-handoff/SKILL.md](../agent/skills/ops-handoff/SKILL.md)

Result shape:

```text
Packet owner: Operations Coordinator.
Reason: the packet is now validator and repo repair rather than teaching.
Acceptance object: restore the repo-facing route contract without leaving a shadow teaching owner alive.
```

### Step 2: Choose Patch Home

Use:

- [docs/repair-scope.md](repair-scope.md)
- [agent/skills/repair-scope/SKILL.md](../agent/skills/repair-scope/SKILL.md)

Result shape:

```text
Scope classification: shared support protocol.
Repair target: task-router.json and the owning support docs.

Validation path:
- rerun pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly after the route fix

Under-repair risk:
- fixing only one local symptom would leave the same routing miss alive

Local instance fix:
- repair the currently failing route surface

Promoted fix:
- update the shared routing contract
```

### Step 3: Leave An Execution Receipt

Use:

- [docs/execution-receipts.md](execution-receipts.md)
- [agent/skills/execution-receipt/SKILL.md](../agent/skills/execution-receipt/SKILL.md)

Result shape:

```text
managerial-triage: local-now = repair the route surface and rerun the repo gate; delegate-now = none because the patch home is already clear; later = widen only if the same family resurfaces elsewhere.
behavior-check: pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly passed.
```

## Why This Demo Matters

The point is not just that the repo has three docs and three skills.

The point is that they compose into one control spine for a readable, low-code harness:

- ownership first
- patch home second
- executable close-out third
