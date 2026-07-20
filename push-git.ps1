# Push vers GitHub - version robuste

$repoPath = "C:\Users\zidan\OneDrive - CNEAP\Github\zidane-tim"

# Trouver git
$gitPaths = @(
    "C:\Program Files\Git\bin\git.exe",
    "C:\Program Files (x86)\Git\bin\git.exe",
    "$env:LOCALAPPDATA\Programs\Git\bin\git.exe"
)

$gitExe = $null
foreach ($path in $gitPaths) {
    if (Test-Path $path) {
        $gitExe = $path
        break
    }
}

if (-not $gitExe) {
    Write-Host "❌ Git non trouvé. Installez Git for Windows ou ajoutez-le au PATH." -ForegroundColor Red
    Read-Host "Appuyez sur Entrée..."
    exit 1
}

Write-Host "✅ Git trouvé : $gitExe"
Write-Host "`n[PUSH]"
cd $repoPath
& $gitExe push origin main -v

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ PUSH RÉUSSI !" -ForegroundColor Green
    Write-Host "Site en cours de publication via GitHub Actions (~2 min)" -ForegroundColor Green
} else {
    Write-Host "`n❌ Erreur lors du push" -ForegroundColor Red
}

Read-Host "`nAppuyez sur Entrée..."
