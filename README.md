# Zidane TIM - Plateforme Pédagogique

Plateforme de cours et formations pour les élèves du réseau CNEAP.

## 📍 Stack technique

- **Source** : Markdown (Obsidian vault)
- **Génération** : MkDocs + Material theme
- **Hébergement** : GitHub Pages (gratuit)
- **CI/CD** : GitHub Actions (automatisé)

## 🚀 Démarrage rapide

### Installation locale (optionnel)

```bash
git clone https://github.com/zidane/zidane-tim.git
cd zidane-tim
pip install mkdocs mkdocs-material
mkdocs serve  # http://localhost:8000
```

### Publication

1. Écrire les cours en Markdown dans `/docs/`
2. Faire un `git push` sur `main`
3. GitHub Actions compile automatiquement
4. Site publié sur : **https://zidane.github.io/zidane-tim/**

## 📁 Structure des fichiers

```
zidane-tim/
├── docs/
│   ├── index.md                 # Page d'accueil
│   └── cours/                   # Tous les cours
│       ├── sapat/
│       ├── cap-aepe/
│       ├── capasapver/
│       ├── college/
│       └── formations-ia/
├── mkdocs.yml                   # Configuration MkDocs
├── .github/
│   └── workflows/
│       └── build.yml            # GitHub Actions (CI/CD)
└── README.md
```

## 📝 Ajouter un nouveau cours

1. Créer un fichier `.md` dans `/docs/cours/[filière]/`
2. Ajouter l'entrée dans `mkdocs.yml` (section `nav`)
3. Faire un `git push`
4. Site mis à jour automatiquement en ~1-2 min

### Template de cours

```markdown
---
titre: "Titre du cours"
date_creation: YYYY-MM-DD
date_modif: YYYY-MM-DD
type: cours
tags: [tag1, tag2]
statut: actif
---

# Titre du cours

Contenu du cours...
```

## 🔄 Automatisation

**GitHub Actions** déclenche automatiquement à chaque push :
1. Python 3.10 + dépendances
2. MkDocs compile les Markdown → HTML
3. Déploie sur GitHub Pages
4. Site en ligne en ~1-2 minutes

Aucune action manuelle nécessaire !

## 🎨 Personnalisation

### Thème
Éditer `mkdocs.yml` section `theme:` pour changer les couleurs, polices, etc.

### Navigation
Éditer `mkdocs.yml` section `nav:` pour restructurer le menu.

### Plugins
Installer des plugins MkDocs supplémentaires au besoin :
```bash
pip install mkdocs-plugin-name
```

## 📞 Support

- Questions sur MkDocs : [docs.material.io](https://squidfunk.github.io/mkdocs-material/)
- GitHub Pages : [docs.github.com](https://docs.github.com/en/pages)

---

**Créé par** : Driss ZIDANE  
**Réseau** : CNEAP (Enseignement Agricole)  
**Licence** : CC BY-NC-SA (ou à définir)
