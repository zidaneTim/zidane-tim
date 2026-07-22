<#
Publie les changements du site zidane-tim (repo C:\GitRepos) sur GitHub :
add + commit + push en une seule commande, avec pull --rebase avant pour eviter les conflits.

Utilisation :
  .\publish-site.ps1 "Correction stagiaire vers agent + ajout activite EG1"

Sans message fourni, un message horodate par defaut est utilise.
#>

param(
    [string]$Message = "Mise a jour du $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
)

$RepoPath = "C:\GitRepos"

Set-Location $RepoPath

Write-Host "Repo : $RepoPath" -ForegroundColor Cyan

# Recuperer les eventuels changements distants avant de pousser (evite un push rejete)
git pull --rebase origin main

if ($LASTEXITCODE -ne 0) {
    Write-Host "Le pull --rebase a echoue (conflit probable) - resoudre manuellement avant de relancer." -ForegroundColor Red
    Write-Host "Etat du rebase : git status" -ForegroundColor Yellow
    if ($Host.Name -eq 'ConsoleHost') { Read-Host "Appuyez sur Entree pour fermer" }
    exit 1
}

# Ajouter tous les changements (nouveaux, modifies, supprimes)
git add -A

# Rien a committer ? On s'arrete proprement.
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "Rien a committer, le depot est deja a jour." -ForegroundColor Yellow
    if ($Host.Name -eq 'ConsoleHost') { Read-Host "Appuyez sur Entree pour fermer" }
    exit 0
}

git commit -m "$Message"

if ($LASTEXITCODE -ne 0) {
    Write-Host "Le commit a echoue - voir le message ci-dessus." -ForegroundColor Red
    if ($Host.Name -eq 'ConsoleHost') { Read-Host "Appuyez sur Entree pour fermer" }
    exit 1
}

git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "Publie avec succes sur GitHub (commit + push)." -ForegroundColor Green
} else {
    Write-Host "Le push a echoue - verifier la connexion ou un conflit distant." -ForegroundColor Red
    exit 1
}

if ($Host.Name -eq 'ConsoleHost') { Read-Host "Appuyez sur Entree pour fermer" }
