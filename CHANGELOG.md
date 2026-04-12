# Changelog

All notable changes to `Study Superpowers` will be documented here.

## Unreleased - 2026-04-12

Post-push hardening for the first public slice.

Included in this maintenance pass:

- a root admission boundary in `.gitignore` so unexpected top-level drops stay out of Git by default
- a checked-in repo-only GitHub Actions workflow
- a stronger `tools/Test-PublicSetup.ps1` contract that requires the repo-only workflow surface instead of trusting it implicitly

Non-goals:

- no fourth support slice
- no private maintainer state
- no widening into a mirror of the private support stack

## 0.1.0 - Initial Public Push

Initial public companion release.

Included in this first push:

- repo-safe validation entrypoints
- public-boundary bootstrap
- AI-facing operator onboarding
- `ops-handoff` support slice
- `repair-scope` support slice
- `execution-receipt` support slice
- demo flow and first-push contribution surfaces
