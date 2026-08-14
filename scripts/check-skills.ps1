# Local skill structure check (Windows PowerShell / pwsh)

# Usage:  powershell -ExecutionPolicy Bypass -File scripts/check-skills.ps1
# Enforced rules (same gate as CI, see .github/workflows/skills-ci.yml):
#   1. Every SKILL.md has a `name:` matching its directory
#   2. `description:` present and <= 1024 chars
#   3. SKILL.md <= 500 lines unless listed in CURATION_EXCEPTIONS.md
#   4. Every skill has UPSTREAM.md (or PROVENANCE.md)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$failed = 0
$warned = 0

$exceptionsFile = Join-Path $root "CURATION_EXCEPTIONS.md"
$exceptions = @()
if (Test-Path $exceptionsFile) {
    $exceptions = Get-Content $exceptionsFile | Where-Object { $_ -match "^\|\s*\`?([a-z0-9-]+)\`?\s*\|" } |
        ForEach-Object { $Matches[1] }
}

Get-ChildItem -Path $root -Recurse -Filter SKILL.md |
  Where-Object { $_.FullName -notmatch "\\.git\\" } |
  ForEach-Object {
    $dir = $_.Directory.Name
    $raw = [System.IO.File]::ReadAllText($_.FullName)
    $lines = $raw -split "`r?`n"

    # Rule 1: name == directory
    $nameMatch = [regex]::Match($raw, '(?m)^name:\s*(.+?)\s*$')
    if (-not $nameMatch.Success) {
      Write-Host "[FAIL] $($_.FullName): missing name field"; $failed++; return
    }
    if ($nameMatch.Groups[1].Value.Trim() -ne $dir) {
      Write-Host "[FAIL] $($_.FullName): name '$($nameMatch.Groups[1].Value.Trim())' != dir '$dir'"; $failed++; return
    }

    # Rule 2: description present and within limit
    $descMatch = [regex]::Match($raw, '(?ms)^description:\s*(.+?)\s*^(?:\w[\w-]*:|---)')
    if (-not $descMatch.Success -or $descMatch.Groups[1].Value.Trim().Length -eq 0) {
      Write-Host "[FAIL] $($_.FullName): missing description"; $failed++; return
    }
    if ($descMatch.Groups[1].Value.Trim().Length -gt 1024) {
      Write-Host "[FAIL] $($_.FullName): description exceeds 1024 chars"; $failed++; return
    }

    # Rule 3: line limit with explicit exceptions
    if ($lines.Count -gt 500 -and $exceptions -notcontains $dir) {
      Write-Host "[FAIL] $($_.FullName): $($lines.Count) lines, not in CURATION_EXCEPTIONS.md"; $failed++; return
    }
    if ($lines.Count -gt 500) {
      Write-Host "[WARN] $($_.FullName): $($lines.Count) lines (excepted in CURATION_EXCEPTIONS.md)"
    }

    # Rule 4: provenance record
    $prov = Join-Path $_.Directory.Name "" | Out-Null
    $provPath = Join-Path $_.Directory.FullName "UPSTREAM.md"
    if (-not (Test-Path $provPath)) { $provPath = Join-Path $_.Directory.FullName "PROVENANCE.md" }
    if (-not (Test-Path $provPath)) {
      Write-Host "[FAIL] $($_.Directory.FullName): missing UPSTREAM.md/PROVENANCE.md"; $failed++; return
    }

    Write-Host "[OK]   $($dir)"
  }

if ($failed -gt 0) { Write-Host "$failed problem(s) found"; exit 1 }
Write-Host "All skills pass the structural gate."
