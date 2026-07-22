# Zidane TIM — Plateforme pédagogique

Site de cours et d'activités élèves (TIM — Lycée Xavier Grall, Loudéac). Réseau CNEAP.

**Site en ligne** : https://zidanetim.github.io/zidane-tim/

## Stack

- **Contenu** : Markdown natif dans `docs/` (source de vérité des activités élèves — règle du 20/07/2026, voir `CLAUDE.md` du vault Obsidian)
- **Génération** : MkDocs + thème Material (`mkdocs.yml`)
- **Hébergement** : GitHub Pages, dépôt `zidaneTim/zidane-tim`
- **CI/CD** : GitHub Actions (`.github/workflows/build.yml`) — build automatique à chaque push sur `main`

## Structure réelle

```
zidane-tim/
├── mkdocs.yml                # Config + navigation
├── publish-site.ps1          # Publication en 1 commande (pull --rebase + add + commit + push)
└── docs/
    ├── index.md              # Accueil
    ├── assets/style.css      # Charte (zt-meta, zt-pix…)
    ├── ressources/index.md
    └── cours/
        ├── college/          # 4e Maths · 3e EPI STM
        ├── capa-sapver/      # MG1 · MP2 (+ activites/)
        └── sapat/            # EG1 · EG4 · C1.2 · C8.1-C8.2 (+ activites/)
```

## Publication

1. Écrire/modifier le Markdown dans `docs/` (directement, ou généré via les prompts du vault — voir `30-Ressources/Prompts-IA/`)
2. `./publish-site.ps1 "message"` (ou `git add -A && git commit && git push`)
3. GitHub Actions reconstruit et publie le site (vérifier le rendu en ligne, le webhook Pages s'est déjà bloqué silencieusement une fois)

## Règles de contenu (résumé — détail dans le vault, `CLAUDE.md` et `wiki/memoire.md`)

- Activités élèves : Markdown natif, jamais de copie dans le vault
- Élève en posture d'agent/employé, jamais de stagiaire
- Autonomie totale de la fiche : toute ressource a un lien réel, vérifié et fonctionnel
- Jamais de données fictives dans une activité tableur/BDD
- Compétences CRCN/Pix : encadré `zt-pix` unique en tête de fiche
- Pas de repère de séance/jour visible élève

---
*Historique d'installation : voir `SETUP-GITHUB.md`, `QUICKSTART.md`, `COMMENT-CA-MARCHE.md` (documents d'époque, conservés pour mémoire). Nettoyage du 22/07/2026 : scripts d'installation initiale supprimés (`deploy.ps1`, `full-deploy.ps1`, `execute.bat`, `push-now.bat`, `STRUCTURE.txt`), remplacés par `publish-site.ps1`.*
