Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Assert-Lint {
    param(
        [bool]$Condition,
        [string]$Message
    )

    if (-not $Condition) {
        throw $Message
    }
}

$repoRoot = Split-Path -Parent $PSScriptRoot
$ps1Files = Get-ChildItem -Path (Join-Path $repoRoot "tools") -Filter "*.ps1" -File
foreach ($file in $ps1Files) {
    $null = $null
    $errors = $null
    [System.Management.Automation.Language.Parser]::ParseFile($file.FullName, [ref]$null, [ref]$errors) | Out-Null
    if ($errors.Count -gt 0) {
        throw ("PowerShell parse failed for " + $file.FullName + ": " + $errors[0].Message)
    }
}

$aiContextPath = Join-Path $repoRoot "ai-context.json"
$taskRouterPath = Join-Path $repoRoot "task-router.json"
$skillIndexPath = Join-Path $repoRoot "agent/skills/index.json"

$aiContext = Get-Content -Raw -Path $aiContextPath | ConvertFrom-Json
$taskRouter = Get-Content -Raw -Path $taskRouterPath | ConvertFrom-Json
$skillIndex = Get-Content -Raw -Path $skillIndexPath | ConvertFrom-Json

Assert-Lint ($null -ne $aiContext.version) "ai-context.json is missing version"
Assert-Lint ($null -ne $aiContext.repo_type) "ai-context.json is missing repo_type"
Assert-Lint ($null -ne $aiContext.current_slice) "ai-context.json is missing current_slice"
Assert-Lint ($null -ne $aiContext.shared_read_set) "ai-context.json is missing shared_read_set"
Assert-Lint ($null -ne $aiContext.lanes) "ai-context.json is missing lanes"

Assert-Lint ($null -ne $taskRouter.version) "task-router.json is missing version"
Assert-Lint ($null -ne $taskRouter.task_types) "task-router.json is missing task_types"

Assert-Lint ($null -ne $skillIndex.version) "agent/skills/index.json is missing version"
Assert-Lint ($null -ne $skillIndex.skills) "agent/skills/index.json is missing skills"

foreach ($skillEntry in @($skillIndex.skills)) {
    $skillId = [string]$skillEntry.id
    $skillPath = [string]$skillEntry.path
    Assert-Lint (-not [string]::IsNullOrWhiteSpace($skillId)) "agent/skills/index.json contains a skill with a blank id"
    Assert-Lint (-not [string]::IsNullOrWhiteSpace($skillPath)) ("agent/skills/index.json skill path is blank: " + $skillId)
    Assert-Lint (Test-Path (Join-Path $repoRoot $skillPath)) ("agent/skills/index.json points to a missing skill: " + $skillPath)
}

foreach ($taskTypeName in @($taskRouter.task_types.PSObject.Properties.Name | ForEach-Object { [string]$_ })) {
    $taskType = $taskRouter.task_types.$taskTypeName
    $primaryLane = [string]$taskType.primary_lane
    $primarySkill = [string]$taskType.primary_skill
    Assert-Lint (-not [string]::IsNullOrWhiteSpace($primaryLane)) ("task-router.json task type is missing primary_lane: " + $taskTypeName)
    Assert-Lint (-not [string]::IsNullOrWhiteSpace($primarySkill)) ("task-router.json task type is missing primary_skill: " + $taskTypeName)
    Assert-Lint (Test-Path (Join-Path $repoRoot $primarySkill)) ("task-router.json points to a missing skill: " + $taskTypeName + " -> " + $primarySkill)
}

[ordered]@{
    status = "success"
    powershell_files_checked = $ps1Files.Count
    skills_checked = @($skillIndex.skills).Count
    checks = @(
        "powershell-parse",
        "ai-context-json",
        "task-router-json",
        "skill-index-json",
        "skill-path-existence"
    )
} | ConvertTo-Json -Depth 4
