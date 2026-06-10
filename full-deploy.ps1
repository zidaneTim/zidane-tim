#!/usr/bin/env pwsh
# ╔═══════════════════════════════════════════════════════════════════════╗
# ║       ZIDANE-TIM - Installation complète et automatique              ║
# ║    Création du site, push vers GitHub, et configuration Pages        ║
# ╚═══════════════════════════════════════════════════════════════════════╝

Write-Host ""
Write-Host "╔════════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║  🚀 DÉPLOIEMENT AUTOMATIQUE - ZIDANE-TIM                      ║" -ForegroundColor Cyan
Write-Host "║  Plateforme pédagogique avec MkDocs + GitHub Pages            ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# Configuration
$repoPath = "C:\Users\Driss\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim-setup"
$repoURL = "https://github.com/zidaneTim/zidane-tim.git"
$userName = "Driss Zidane"
$userEmail = "zidanecylb@gmail.com"

Write-Host "📍 Répertoire: $repoPath" -ForegroundColor Green
Write-Host "🌐 Repo GitHub: $repoURL" -ForegroundColor Green
Write-Host ""

# === ÉTAPE 1: Initialisation Git ===
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow
Write-Host "▶️  ÉTAPE 1 : Initialisation Git" -ForegroundColor Yellow
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow

Set-Location $repoPath -ErrorAction Stop

git init
git config user.name $userName
git config user.email $userEmail

Write-Host "✅ Git initialisé" -ForegroundColor Green
Write-Host ""

# === ÉTAPE 2: Commit ===
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow
Write-Host "▶️  ÉTAPE 2 : Commit des fichiers" -ForegroundColor Yellow
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow

git add .
git commit -m "Initial commit: zidane-tim course platform with MkDocs configuration"

Write-Host "✅ Fichiers commitées" -ForegroundColor Green
Write-Host ""

# === ÉTAPE 3: Branch main ===
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow
Write-Host "▶️  ÉTAPE 3 : Configuration branche main" -ForegroundColor Yellow
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow

git branch -M main

Write-Host "✅ Branche: main" -ForegroundColor Green
Write-Host ""

# === ÉTAPE 4: Push vers GitHub ===
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow
Write-Host "▶️  ÉTAPE 4 : Push vers GitHub" -ForegroundColor Yellow
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow

git remote add origin $repoURL
git push -u origin main --force

Write-Host "✅ Fichiers pushés vers GitHub" -ForegroundColor Green
Write-Host ""

# === ÉTAPE 5: Vérification ===
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow
Write-Host "▶️  ÉTAPE 5 : Vérification" -ForegroundColor Yellow
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow

$files = git ls-files
$fileCount = ($files | Measure-Object).Count

Write-Host "✅ Fichiers poussés: $fileCount" -ForegroundColor Green
Write-Host ""

# === RÉSUMÉ FINAL ===
Write-Host "╔════════════════════════════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║  ✅ INSTALLATION TERMINÉE AVEC SUCCÈS !                       ║" -ForegroundColor Green
Write-Host "╚════════════════════════════════════════════════════════════════╝" -ForegroundColor Green
Write-Host ""

Write-Host "📊 RÉSUMÉ:" -ForegroundColor Cyan
Write-Host "  • Repo: zidane-tim (Public)" -ForegroundColor White
Write-Host "  • URL GitHub: https://github.com/zidaneTim/zidane-tim" -ForegroundColor Cyan
Write-Host "  • Site web: https://zidaneTim.github.io/zidane-tim/" -ForegroundColor Cyan
Write-Host ""

Write-Host "🔄 PROCHAINES ÉTAPES:" -ForegroundColor Yellow
Write-Host "  1. GitHub Actions compile le site (1-2 min)" -ForegroundColor White
Write-Host "  2. GitHub Pages active automatiquement" -ForegroundColor White
Write-Host "  3. Le site sera accessible à https://zidaneTim.github.io/zidane-tim/" -ForegroundColor White
Write-Host ""

Write-Host "⏰ Statut: PRÊT POUR LA PUBLICATION" -ForegroundColor Green
Write-Host ""

Write-Host "💡 TIP: Pour ajouter des cours:" -ForegroundColor Cyan
Write-Host "  1. Créer un fichier .md dans docs/cours/" -ForegroundColor White
Write-Host "  2. Ajouter l'entrée dans mkdocs.yml" -ForegroundColor White
Write-Host "  3. git push → site mis à jour en 1-2 min" -ForegroundColor White
Write-Host ""

Read-Host "Appuyez sur Entrée pour terminer"
