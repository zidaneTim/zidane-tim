# 🔧 Comment ça marche ? - Architecture technique

> ⚠️ **Document d'installation initiale (juillet 2026), conservé pour mémoire.** Le site est en production
> (https://zidanetim.github.io/zidane-tim/) ; certains chemins/noms cités ici (`zidane-tim-setup`,
> `cap-aepe`, anciens scripts supprimés le 22/07/2026) ne correspondent plus au dépôt actuel.
> Référence à jour : `README.md`.

Voici l'explication complète du système automatisé.

---

## 📊 Vue d'ensemble du workflow

```
┌─────────────────────────────────────────────────────────────┐
│                                                               │
│  TU ÉCRIS EN MARKDOWN (Obsidian ou éditeur)                 │
│  ↓                                                            │
│  TU FAIS `git push` VERS GITHUB                             │
│  ↓                                                            │
│  GITHUB ACTIONS SE DÉCLENCHE (automatiquement)              │
│  ├─ Télécharge MkDocs                                       │
│  ├─ Compile Markdown → HTML                                 │
│  ├─ Génère le site statique                                 │
│  └─ Publie sur GitHub Pages                                 │
│  ↓                                                            │
│  SITE ACCESSIBLE À TES ÉLÈVES                               │
│  https://[username].github.io/zidane-tim/                   │
│                                                               │
└─────────────────────────────────────────────────────────────┘
```

---

## 🗂️ Structure des fichiers

```
zidane-tim/                    ← Repo GitHub
├── docs/                      ← Tous tes Markdown
│   ├── index.md              ← Page d'accueil
│   └── cours/
│       ├── sapat/
│       │   └── c12-numerique.md  ← Un cours exemple
│       ├── cap-aepe/
│       ├── college/
│       └── formations-ia/
├── mkdocs.yml                ← Configuration MkDocs
├── .github/
│   └── workflows/
│       └── build.yml         ← Script GitHub Actions
├── README.md                 ← Documentation
└── .gitignore               ← Fichiers à ignorer
```

### Point clé : `mkdocs.yml`

Ce fichier dit à MkDocs :
- **Quels Markdown** compiler (`docs/` dossier)
- **Comment les organiser** dans le menu (section `nav:`)
- **Quel thème** utiliser (Material = moderne, mobile-friendly)
- **Quels plugins** activer (recherche, syntaxe, etc.)

---

## ⚙️ Le workflow GitHub Actions (`build.yml`)

C'est ce qui automatise tout. Voici ce qui se passe à chaque `git push` :

### 1️⃣ **Trigger (déclenchement)**
```yaml
on:
  push:
    branches: [ main ]
    paths:
      - 'docs/**'         ← Si tu modifies les cours
      - 'mkdocs.yml'      ← Si tu changes la config
      - '.github/workflows/build.yml'
```
= GitHub Actions se lance **automatiquement** quand tu modifies ces fichiers sur la branche `main`.

### 2️⃣ **Setup (préparation)**
```yaml
- uses: actions/checkout@v3           ← Télécharge ton code
- uses: actions/setup-python@v4       ← Installe Python
  with:
    python-version: '3.10'
```
= GitHub installe Python sur une machine virtuelle.

### 3️⃣ **Installation des dépendances**
```yaml
pip install mkdocs mkdocs-material
```
= Installe MkDocs et le thème Material.

### 4️⃣ **Build (compilation)**
```yaml
mkdocs build
```
= MkDocs lit `/docs/**/*.md` et génère `/site/` (HTML statique).

### 5️⃣ **Deploy (publication)**
```yaml
peaceiris/actions-gh-pages@v3
with:
  github_token: ${{ secrets.GITHUB_TOKEN }}
  publish_dir: ./site
```
= Publie le contenu du dossier `/site/` sur la branche `gh-pages` (GitHub Pages).

---

## 🌐 Hébergement : GitHub Pages

GitHub Pages est un service **gratuit** qui :
- Héberge des **sites statiques** (HTML, CSS, JS)
- Donne une URL gratuite : `https://[username].github.io/[repo]/`
- Utilise HTTPS automatiquement (sécurisé)
- N'a besoin d'aucun serveur ou base de données

Tes élèves accèdent au site en ouvrant simplement le lien !

---

## 🔄 Workflow au quotidien : Comment tu l'utilises

### Scénario 1 : Ajouter un nouveau cours

```bash
# 1. Créer un nouveau fichier Markdown
# C:\Users\Driss\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim\docs\cours\sapat\mp8.md

# 2. Ajouter la ligne dans mkdocs.yml
# nav:
#   - Cours:
#       - Bac Pro SAPAT:
#           - MP8: cours/sapat/mp8.md    ← LIGNE NOUVELLE

# 3. Faire un commit et push
git add .
git commit -m "Add: Cours MP8 Bac Pro SAPAT"
git push

# 4. Attendre ~1-2 min
# 5. Vérifier : https://[username].github.io/zidane-tim/
# 6. Le cours apparaît automatiquement dans le menu !
```

### Scénario 2 : Modifier un cours existant

```bash
# 1. Éditer le fichier Markdown (ex: c12-numerique.md)
# 2. Sauvegarder
git add .
git commit -m "Update: Clarifier module 2 C1.2"
git push

# 3. Site mis à jour en 1-2 min !
```

### Scénario 3 : Synchroniser avec Obsidian

**Option A - Simple** :
1. Éditer les fichiers Markdown directement dans le dossier `zidane-tim/docs/`
2. Utiliser Obsidian pour lire/écrire
3. Faire des `git push` manuels

**Option B - Automatisé** :
1. Installer le plugin **Obsidian Git**
2. Configurer pour push automatiquement (ex: toutes les 10 min)
3. Les changements sont poussés sans rien faire

---

## 🛡️ Sécurité et permissions

### Qui peut modifier le site ?
- **Propriétaire du repo** (toi) = accès complet
- **Collaborateurs autorisés** = accès en lecture ou écriture
- **Élèves** = accès en lecture seule (public)

Tu peux ajouter des collègues dans Settings > Collaborators pour qu'ils puissent contribuer.

### Le site est-il sécurisé ?
- ✅ Oui, c'est HTTPS (GitHub Pages force HTTPS)
- ✅ Les élèves ne peuvent pas modifier le contenu
- ✅ Les sources Markdown sont sur GitHub (versioning, historique)

---

## 📈 Avantages de cette architecture

| Aspect | Avantage |
|--------|----------|
| **Coût** | 100% gratuit (GitHub + GitHub Pages + GitHub Actions) |
| **Automatisation** | À chaque push → publication auto en 1-2 min |
| **Versioning** | Historique complet des modifications (git log) |
| **Backup** | Tous les fichiers sur GitHub (cloud backup) |
| **Scalabilité** | Fonctionne avec 10 ou 1000 pages facilement |
| **Thème** | Material theme = moderne, responsive, rapide |
| **Pas de serveur** | Site statique = très performant, peu de latence |

---

## 🔍 Debugging / Vérifier que ça marche

### Vérifier que GitHub Actions tourne
1. Va sur : `https://github.com/[username]/zidane-tim/actions`
2. Cherche le workflow `Build & Deploy to GitHub Pages`
3. Cherche ton dernier push dans la liste
4. Clique dessus pour voir les logs

### Vérifier que GitHub Pages fonctionne
1. Va sur Settings > Pages
2. Cherche "Your site is published at..."
3. Clique sur l'URL

### Si un build échoue
- Vérifier les logs sur GitHub Actions
- Les erreurs courantes :
  - Syntax error en Markdown
  - Typo dans `mkdocs.yml`
  - Fichier Markdown manquant

---

## 🚀 Prochaines étapes (optionnel)

### 1. Ajouter un domaine custom
Exemple : `https://courses.zidane.fr/`

Settings > Pages > Custom domain > entrer `courses.zidane.fr`

### 2. Ajouter une barre de recherche avancée
Dans `mkdocs.yml`, ajouter le plugin `search-index-enhanced`

### 3. Intégrer des formulaires
Ajouter des formulaires de contact via Netlify Forms (gratuit aussi)

### 4. Analytics
Ajouter Google Analytics pour suivre les visites

---

**C'est ça ! Tu as maintenant un système pédagogique complet et automatisé.** 🎓
