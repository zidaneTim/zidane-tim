# Setup Obsidian Git Sync
# Double-clique sur ce fichier pour tout configurer automatiquement

$ErrorActionPreference = "Stop"
$REPO_URL = "https://github.com/zidanetim/zidane-tim.git"

Write-Host ""
Write-Host "=== Setup Obsidian → GitHub ===" -ForegroundColor Cyan
Write-Host ""

# 1. Vérifier Git
try {
    $gitVersion = git --version 2>&1
    Write-Host "✓ Git détecté : $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git non trouvé. Télécharge-le sur https://git-scm.com puis relance ce script." -ForegroundColor Red
    Start-Process "https://git-scm.com/download/win"
    Read-Host "Appuie sur Entrée pour quitter"
    exit 1
}

# 2. Trouver le dossier Obsidian
$possiblePaths = @(
    "$env:USERPROFILE\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim",
    "$env:USERPROFILE\OneDrive\Obsidian-SecondCerveau\zidane-tim",
    "$env:USERPROFILE\Documents\zidane-tim",
    "$env:USERPROFILE\Desktop\zidane-tim"
)

$vaultPath = $null
foreach ($path in $possiblePaths) {
    if (Test-Path $path) {
        $vaultPath = $path
        break
    }
}

if (-not $vaultPath) {
    Write-Host ""
    Write-Host "Dossier zidane-tim non trouvé automatiquement." -ForegroundColor Yellow
    $vaultPath = Read-Host "Entre le chemin complet de ton dossier zidane-tim"
    if (-not (Test-Path $vaultPath)) {
        Write-Host "Chemin invalide. Crée d'abord le dossier." -ForegroundColor Red
        Read-Host "Appuie sur Entrée pour quitter"
        exit 1
    }
}

Write-Host "✓ Dossier trouvé : $vaultPath" -ForegroundColor Green
Set-Location $vaultPath

# 3. Initialiser git si nécessaire
if (-not (Test-Path ".git")) {
    Write-Host "Initialisation de git..." -ForegroundColor Yellow
    git init
    git remote add origin $REPO_URL
    Write-Host "✓ Git initialisé" -ForegroundColor Green
} else {
    Write-Host "✓ Git déjà initialisé" -ForegroundColor Green
    $remotes = git remote 2>&1
    if ($remotes -notcontains "origin") {
        git remote add origin $REPO_URL
    }
}

# 4. Configurer git (nom/email si pas déjà fait)
$gitName = git config user.name 2>&1
$gitEmail = git config user.email 2>&1
if (-not $gitName) {
    git config user.name "Driss Zidane"
}
if (-not $gitEmail) {
    git config user.email "zidanecylb@gmail.com"
}

# 5. Récupérer le contenu GitHub existant
Write-Host ""
Write-Host "Connexion à GitHub..." -ForegroundColor Yellow
git fetch origin main 2>&1

# Vérifier si on est déjà sur main
$currentBranch = git branch --show-current 2>&1
if ($currentBranch -ne "main") {
    git checkout -B main origin/main 2>&1
    Write-Host "✓ Branche main configurée" -ForegroundColor Green
}

# 6. Ajouter et pousser les fichiers locaux
$status = git status --porcelain 2>&1
if ($status) {
    Write-Host ""
    Write-Host "Fichiers locaux détectés, synchronisation..." -ForegroundColor Yellow
    git add .
    $date = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "Sync Obsidian: premier push depuis PC ($date)"
    git push -u origin main
    Write-Host "✓ Fichiers synchronisés sur GitHub !" -ForegroundColor Green
} else {
    Write-Host "✓ Rien à pousser, dossier déjà synchronisé" -ForegroundColor Green
}

Write-Host ""
Write-Host "=== Tout est prêt ! ===" -ForegroundColor Green
Write-Host ""
Write-Host "Prochaine étape : installe le plugin 'Obsidian Git' dans Obsidian" -ForegroundColor Cyan
Write-Host "  → Paramètres → Plugins tiers → Parcourir → chercher 'Obsidian Git'"
Write-Host "  → Active-le, mets Auto backup: 10 minutes"
Write-Host ""
Read-Host "Appuie sur Entrée pour fermer"
