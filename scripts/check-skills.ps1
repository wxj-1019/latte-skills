# Local skill structure check (Windows PowerShell)

# Usage:  powershell -ExecutionPolicy Bypass -File scripts/check-skills.ps1
# Verifies every SKILL.md has a matching `name:` and stays under 500 lines.

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$failed = 0

Get-ChildItem -Path $root -Recurse -Filter SKILL.md |
  Where-Object { $_.FullName -notmatch "\\.git\\" } |
  ForEach-Object {
    $dir = $_.Directory.Name
    $lines = Get-Content $_.FullName
    $nameLine = $lines | Where-Object { $_ -match "^name:\s*(.+)$" } | Select-Object -First 1
    if (-not $nameLine) {
      Write-Host "[FAIL] $($_.FullName): missing name field"; $failed++; return
    }
    $name = ($nameLine -replace "^name:\s*", "").Trim()
    if ($name -ne $dir) {
      Write-Host "[FAIL] $($_.FullName): name '$name' != dir '$dir'"; $failed++; return
    }
    if ($lines.Count -gt 500) {
      Write-Host "[WARN] $($_.FullName): $($lines.Count) lines (spec suggests <500)"; return
    }
    Write-Host "[OK]   $($dir)"
  }

if ($failed -gt 0) { Write-Host "$failed problem(s) found"; exit 1 }
Write-Host "All skills structurally valid."
