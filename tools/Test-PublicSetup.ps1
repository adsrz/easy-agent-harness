param(
    [switch]$RepoOnly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Assert-Setup {
    param(
        [bool]$Condition,
        [string]$Message
    )

    if (-not $Condition) {
        throw $Message
    }
}

function Get-RepoRelativePath {
    param(
        [string]$RepoRoot,
        [string]$FullPath
    )

    $repoAbsolutePath = [System.IO.Path]::GetFullPath($RepoRoot)
    if (-not $repoAbsolutePath.EndsWith([System.IO.Path]::DirectorySeparatorChar)) {
        $repoAbsolutePath += [System.IO.Path]::DirectorySeparatorChar
    }

    $targetAbsolutePath = [System.IO.Path]::GetFullPath($FullPath)
    $repoUri = [System.Uri]::new($repoAbsolutePath)
    $targetUri = [System.Uri]::new($targetAbsolutePath)
    $relativeUri = $repoUri.MakeRelativeUri($targetUri)
    return ([System.Uri]::UnescapeDataString($relativeUri.ToString())).Replace('\', '/')
}

$repoRoot = Split-Path -Parent $PSScriptRoot
$requiredRepoFiles = @(
    ".github/workflows/repo-only-validation.yml",
    "AGENTS.md",
    "README.md",
    "README.zh-CN.md",
    "AI_CONTEXT.md",
    "ai-context.json",
    "CHANGELOG.md",
    "ROADMAP.md",
    "CONTRIBUTING.md",
    "task-router.json",
    "LICENSE",
    "system.md",
    "docs/architecture.md",
    "docs/demo-flow.md",
    "docs/public-scope.md",
    "docs/run-with-codex.md",
    "tools/Test-All.ps1",
    "tools/Test-Lint.ps1",
    "tools/Test-PublicSetup.ps1",
    "agent/README.md",
    "agent/skills/index.json",
    "agent/skills/repo-ops-and-boundary/SKILL.md"
)

foreach ($relativePath in $requiredRepoFiles) {
    Assert-Setup (Test-Path (Join-Path $repoRoot $relativePath)) ("Missing required repo file: " + $relativePath)
}

$forbiddenMaintainerStateNames = @(
    "memory.md",
    "owner.md",
    "project.md",
    "session-log.md",
    "open-questions.md",
    "distinctions.md",
    "submission-record.md"
)

$repoFiles = Get-ChildItem -Path $repoRoot -Recurse -File
foreach ($file in $repoFiles) {
    Assert-Setup (-not ($forbiddenMaintainerStateNames -contains $file.Name)) ("Forbidden maintainer-state file present in public repo: " + (Get-RepoRelativePath -RepoRoot $repoRoot -FullPath $file.FullName))
}

$forbiddenReferencePatterns = @(
    "docs/public-export/",
    "docs\\public-export\\",
    "memory.md",
    "logs/runtime.jsonl",
    "logs/user-will-updates.md",
    "docs/projects/",
    "docs\\projects\\"
)

$forbiddenReferenceFiles = @(
    "AGENTS.md",
    "README.md",
    "README.zh-CN.md",
    "AI_CONTEXT.md",
    "ai-context.json",
    "CHANGELOG.md",
    "ROADMAP.md",
    "CONTRIBUTING.md",
    "task-router.json",
    "system.md",
    "agent/README.md",
    "agent/skills/index.json",
    "docs/public-scope.md",
    "docs/architecture.md",
    "docs/demo-flow.md",
    "docs/packet-ownership.md",
    "docs/repair-scope.md",
    "docs/execution-receipts.md",
    "docs/run-with-codex.md",
    "agent/skills/repo-ops-and-boundary/SKILL.md",
    "agent/skills/ops-handoff/SKILL.md",
    "agent/skills/repair-scope/SKILL.md",
    "agent/skills/execution-receipt/SKILL.md"
)

foreach ($relativePath in $forbiddenReferenceFiles) {
    $content = Get-Content -Raw -Path (Join-Path $repoRoot $relativePath)
    foreach ($pattern in $forbiddenReferencePatterns) {
        Assert-Setup (-not $content.Contains($pattern)) ("Forbidden private-routing reference found in public repo surface: " + $relativePath + " -> " + $pattern)
    }
}

$warnings = [System.Collections.Generic.List[string]]::new()
if ($RepoOnly) {
    $warnings.Add("RepoOnly mode skipped any local hydration step because the current slice is repo-only.")
}
else {
    $warnings.Add("Current public slice has no additional local hydration step beyond repo validation.")
}

[ordered]@{
    status = "success"
    mode = $(if ($RepoOnly) { "repo-only" } else { "full-local-setup" })
    checks = @(
        "required public files",
        "forbidden maintainer-state file families",
        "forbidden private-routing references"
    )
    warnings = @($warnings)
} | ConvertTo-Json -Depth 4
