# Sync commits du sandbox + Push vers GitHub

$repoPath = "C:\Users\zidan\OneDrive - CNEAP\Github\zidane-tim"
$sandboxGitPath = "\\wsl$\Ubuntu\sessions\cool-determined-faraday\mnt\Github\zidane-tim\.git"

Write-Host "╔════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║  Sync zidane-tim : Sandbox → OneDrive → GitHub    ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════╝" -ForegroundColor Cyan

Write-Host "`n[1] Vérification du dossier OneDrive..."
if (-not (Test-Path $repoPath)) {
    Write-Host "❌ Repo non trouvé : $repoPath" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Repo trouvé"

Write-Host "`n[2] État actuel (avant sync)..."
cd $repoPath
git log --oneline -3

Write-Host "`n[3] Copie des commits depuis le sandbox..."
# Copie les objets git du sandbox vers OneDrive
if (Test-Path $sandboxGitPath) {
    Write-Host "Merging git objects from sandbox..."
    Copy-Item "$sandboxGitPath\objects\*" "$(pwd)\.git\objects\" -Recurse -Force -ErrorAction Continue
    Copy-Item "$sandboxGitPath\refs\*" "$(pwd)\.git\refs\" -Recurse -Force -ErrorAction Continue
    Copy-Item "$sandboxGitPath\HEAD" "$(pwd)\.git\HEAD" -Force -ErrorAction Continue
    Write-Host "✅ Objets copiés"
} else {
    Write-Host "⚠️  Sandbox pas accessible (normal sur machine locale)"
}

Write-Host "`n[4] État après sync..."
git log --oneline -3

Write-Host "`n[5] Git status..."
git status

Write-Host "`n[6] PUSH vers GitHub..."
git push origin main -v

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n" -ForegroundColor Green
    Write-Host "╔════════════════════════════════════════════════════╗" -ForegroundColor Green
    Write-Host "║  ✅ PUSH RÉUSSI !                                  ║" -ForegroundColor Green
    Write-Host "║  Votre site est en cours de publication...        ║" -ForegroundColor Green
    Write-Host "║  → https://github.com/zidaneTim/zidane-tim        ║" -ForegroundColor Green
    Write-Host "║  → GitHub Actions build en cours (~2 min)         ║" -ForegroundColor Green
    Write-Host "╚════════════════════════════════════════════════════╝" -ForegroundColor Green
} else {
    Write-Host "`n" -ForegroundColor Red
    Write-Host "╔════════════════════════════════════════════════════╗" -ForegroundColor Red
    Write-Host "║  ❌ ERREUR lors du push                            ║" -ForegroundColor Red
    Write-Host "║  Vérifications :                                  ║" -ForegroundColor Red
    Write-Host "║  • Internet connecté ?                            ║" -ForegroundColor Red
    Write-Host "║  • Credentials GitHub stockés ?                   ║" -ForegroundColor Red
    Write-Host "║  • Ou essayer : gh auth login                     ║" -ForegroundColor Red
    Write-Host "╚════════════════════════════════════════════════════╝" -ForegroundColor Red
}

Write-Host "`nAppuyez sur Entrée pour fermer..."
Read-Host
