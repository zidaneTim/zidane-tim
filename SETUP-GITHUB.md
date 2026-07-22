# Guide d'installation - Zidane TIM sur GitHub

> ⚠️ **Document d'installation initiale (juillet 2026), conservé pour mémoire.** Le site est en production
> (https://zidanetim.github.io/zidane-tim/) ; certains chemins/noms cités ici (`zidane-tim-setup`,
> `cap-aepe`, anciens scripts supprimés le 22/07/2026) ne correspondent plus au dépôt actuel.
> Référence à jour : `README.md`.

Tu as la structure complète. Voici les **3 étapes finales** pour que tout soit en ligne.

---

## ✅ Prérequis

- ✔️ Compte GitHub existant
- ✔️ Git installé sur ton ordinateur (vérifier avec `git --version`)

---

## 🚀 Étape 1 : Créer le repo sur GitHub

1. Va sur https://github.com/new
2. **Repository name** : `zidane-tim`
3. **Description** : "Plateforme de cours et formations - Réseau CNEAP"
4. **Public** (pour que les élèves y accèdent)
5. **Cocher** : "Add a README file" (**NON** - on a déjà un README)
6. Cliquer **"Create repository"**

Copie l'URL HTTPS qui s'affiche (ex : `https://github.com/zidane/zidane-tim.git`)

---

## 🚀 Étape 2 : Initialiser et pousser les fichiers

Ouvre ton terminal/PowerShell et exécute ces commandes :

```bash
# Navigue vers le dossier zidane-tim-setup
cd "C:\Users\Driss\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim-setup"

# Initialise le repo Git local
git init

# Ajoute tous les fichiers
git add .

# Crée le premier commit
git commit -m "Initial commit - structure MkDocs"

# Ajoute l'URL distante GitHub
git remote add origin https://github.com/[TON_USERNAME]/zidane-tim.git

# Renomme la branche en 'main' (GitHub default)
git branch -M main

# Pousse tous les fichiers vers GitHub
git push -u origin main
```

**Remplace `[TON_USERNAME]`** par ton nom d'utilisateur GitHub !

---

## 🚀 Étape 3 : Activer GitHub Pages

1. Va sur le repo : `https://github.com/[TON_USERNAME]/zidane-tim`
2. Clique sur **Settings** (⚙️)
3. À gauche, clique sur **Pages**
4. Sous "Build and deployment" :
   - **Source** : GitHub Actions
   - (Ne change rien, c'est déjà configuré)
5. Scroll vers le bas, **Save**

---

## ✨ C'est fait !

**Ton site sera en ligne sous :**
```
https://[TON_USERNAME].github.io/zidane-tim/
```

GitHub Actions :
- Détecte automatiquement le push
- Compile MkDocs
- Publie le site en ~1-2 min

Visite l'URL et tu devrais voir la page d'accueil ! 🎉

---

## 🔄 Ajouter des cours après

Maintenant que tout fonctionne, pour **ajouter un nouveau cours** :

1. **Éditer/créer un fichier** dans `/docs/cours/[filière]/`
2. **Ajouter la ligne** dans `mkdocs.yml` (section `nav:`)
3. **Faire un commit** :
   ```bash
   git add .
   git commit -m "Add: Nouveau cours XYZ"
   git push
   ```
4. **Attendre 1-2 min** → site mis à jour automatiquement ✅

---

## 🆘 En cas de problème

### "fatal: not a git repository"
→ Assure-toi d'être dans le bon dossier : `zidane-tim-setup`

### GitHub Pages non activée
→ Aller Settings > Pages et vérifier que "Source" = "GitHub Actions"

### Les changements n'apparaissent pas
→ Attendre 2 min + rafraîchir le navigateur (Ctrl+Shift+R)

### Vérifier le statut de GitHub Actions
→ Va sur le repo → onglet "Actions" pour voir si la compilation a réussi

---

**Questions ?** Contacte l'équipe support ou relance Claude ! 🚀
