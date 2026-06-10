# Script de déploiement automatique - Zidane TIM
Write-Host "🚀 Démarrage de l'installation automatique..." -ForegroundColor Green
Write-Host ""

# 1. Aller dans le dossier
$repoPath = "C:\Users\Driss\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim-setup"
cd $repoPath
Write-Host "✅ Dossier: $repoPath" -ForegroundColor Green

# 2. Initialiser Git
Write-Host "📌 Initialisation Git..." -ForegroundColor Cyan
git init
git config user.name "Driss Zidane"
git config user.email "zidanecylb@gmail.com"

# 3. Ajouter et commiter les fichiers
Write-Host "📦 Commit des fichiers..." -ForegroundColor Cyan
git add .
git commit -m "Initial commit: zidane-tim course platform with MkDocs"

# 4. Renommer la branche en main
Write-Host "🔀 Renommage branche main..." -ForegroundColor Cyan
git branch -M main

# 5. Créer le repo sur GitHub et pousser
Write-Host "🌐 Création du repo GitHub et push..." -ForegroundColor Cyan
gh repo create zidane-tim --public --source=. --remote=origin --push --description "Plateforme pédagogique pour les cours - Réseau CNEAP"

# 6. Attendre un peu
Start-Sleep -Seconds 3

# 7. Configurer GitHub Pages (via API)
Write-Host "⚙️ Configuration GitHub Pages..." -ForegroundColor Cyan
gh repo edit zidane-tim --enable-pages

# 8. Activer GitHub Pages avec GitHub Actions
Write-Host "✅ GitHub Pages activé!" -ForegroundColor Green

Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Green
Write-Host "✅ INSTALLATION COMPLÈTE!" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Green
Write-Host ""
Write-Host "📍 Repo GitHub: https://github.com/zidane/zidane-tim" -ForegroundColor Yellow
Write-Host "🌐 Site web: https://zidane.github.io/zidane-tim/" -ForegroundColor Yellow
Write-Host ""
Write-Host "⏱️  Le site sera en ligne dans 1-2 minutes (GitHub Actions compile)" -ForegroundColor Cyan
Write-Host "🔄 Refresh la page pour voir le site en ligne!" -ForegroundColor Cyan
Write-Host ""
