# ⚡ QUICKSTART - Les 3 commandes qui changent tout

## Ce qu'on a créé

✅ **Dossier** `zidane-tim-setup/` avec :
- Configuration MkDocs complète
- GitHub Actions setup (automatisation)
- Structure des cours (5 filières)
- Tous les fichiers prêts à publier

✅ **En ligne ?** Non yet. Besoin de 3 commandes Git.

---

## Les 3 étapes (5 minutes)

### 1️⃣ Créer un repo sur GitHub

Va sur https://github.com/new

Remplis :
- **Repository name** : `zidane-tim`
- **Public** ✓
- Clique "Create repository"

Copie l'URL HTTPS qui apparaît

---

### 2️⃣ Lancer ces commandes

Ouvre PowerShell/Terminal et copie-colle :

```powershell
cd "C:\Users\Driss\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim-setup"

git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/[TON_USERNAME]/zidane-tim.git
git branch -M main
git push -u origin main
```

**Remplace `[TON_USERNAME]`** par ton vrai nom GitHub

---

### 3️⃣ Activer GitHub Pages

Va sur ton repo → Settings → Pages

Vérifie que "Source" = GitHub Actions

C'est tout ! ✅

---

## Voilà, ton site est live 🎉

Visite : `https://[TON_USERNAME].github.io/zidane-tim/`

---

## Ensuite : Ajouter des cours

Chaque fois que tu veux ajouter un cours :

```powershell
# Créer/modifier un fichier Markdown
# Exemple : docs/cours/sapat/mon-cours.md

# Ajouter la ligne dans mkdocs.yml section nav

# Puis :
git add .
git commit -m "Add: Description du cours"
git push

# Attendre 2 min → site mis à jour !
```

---

## Questions ?

Lis les fichiers :
- **SETUP-GITHUB.md** : étapes détaillées
- **COMMENT-CA-MARCHE.md** : explication complète du système
- **README.md** : doc de maintenance

Bonne chance ! 🚀
