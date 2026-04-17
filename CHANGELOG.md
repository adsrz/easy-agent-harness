# Changelog

All notable changes to `Easy Agent Harness` will be documented here.

## Unreleased - 2026-04-13

Renamed the public repo from `Study Agent Harness` to `Easy Agent Harness`.

Included in this identity pass:

- renamed the sibling repo and private owner bundle to `easy-agent-harness`
- kept the beginner-friendly, low-code agent harness positioning while dropping the `study-` prefix from the public-facing name
- clarified that the current public release is still centered on the control spine `ops-handoff -> repair-scope -> execution-receipt`
- updated README, AI context, architecture, roadmap, and contribution surfaces to match the new naming
- synced the public `ops-handoff` contract and boundary validator coverage with the current `study` support-system cut

Non-goals:

- no private maintainer state
- no mirror of the full private support stack
- no code-first framework positioning

## 0.1.1 - 2026-04-13

Renamed and repositioned the public repo from `Study Superpowers` to `Study Agent Harness`.

Included in that identity pass:

- renamed the sibling repo and private owner bundle to `study-agent-harness`
- reframed the public repo as a beginner-friendly, low-code agent harness baseline
- clarified that the current public release is still centered on the control spine `ops-handoff -> repair-scope -> execution-receipt`
- updated README, AI context, architecture, roadmap, and contribution surfaces to match the new positioning

Non-goals:

- no private maintainer state
- no mirror of the full private support stack
- no code-first framework positioning

## 0.1.0 - 2026-04-12

Post-push hardening for the first public release.

Included in this maintenance pass:

- a root admission boundary in `.gitignore` so unexpected top-level drops stay out of Git by default
- a checked-in repo-only GitHub Actions workflow
- a stronger `tools/Test-PublicSetup.ps1` contract that requires the repo-only workflow surface instead of trusting it implicitly

Non-goals:

- no fourth support slice
- no private maintainer state
- no widening into a mirror of the private support stack

## 0.0.1 - Initial Public Push

Initial public release under the name `Study Superpowers`.

Included in this first push:

- repo-safe validation entrypoints
- public-boundary bootstrap
- AI-facing operator onboarding
- `ops-handoff` support slice
- `repair-scope` support slice
- `execution-receipt` support slice
- demo flow and first-push contribution surfaces
