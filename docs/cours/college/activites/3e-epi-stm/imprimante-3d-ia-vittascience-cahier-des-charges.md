# 🤖 L'imprimante 3D, l'IA qui apprend, et le cahier des charges de mon projet

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN</span>
  <span title="Gérer des données">CRCN 1.2</span>
</div>

<p class="zt-kicker">3e EA — EPI STM · Impression 3D et intelligence artificielle</p>

<p class="zt-lede">Comprends comment fonctionne l'imprimante 3D, entraîne toi-même un petit modèle d'IA, puis lance officiellement ton projet personnel.</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 125 min</span>
  <span>:material-school-outline: EPI STM — Impression 3D · IA (enrichissement local)</span>
  <span>:material-tag-outline: Imprimante FDM · IA · Cahier des charges</span>
</div>

## Mise en situation

Trois choses t'attendent aujourd'hui. D'abord comprendre comment fonctionne réellement l'imprimante 3D de la
salle : ce n'est pas une boîte magique, c'est une machine dont chaque pièce a un rôle précis. Ensuite, découvrir
concrètement comment une intelligence artificielle « apprend », en entraînant toi-même un petit modèle. Enfin,
lancer officiellement ton projet personnel : à partir du croquis coté que tu as réalisé, tu vas fixer un cahier des
charges réaliste, compatible avec la machine et le temps disponible.

!!! question "Problématique"
    Comment fonctionne une imprimante 3D, comment une IA apprend-elle à reconnaître quelque chose, et quelles
    limites dois-je respecter pour que mon objet soit imprimable dans le temps disponible ?

## Objectifs

<div class="zt-objectifs" markdown>

- Décrire les composants et le principe de fonctionnement d'une imprimante 3D à filament (FDM).
- Entraîner un petit modèle de reconnaissance d'images et en observer les limites ; rédiger le cahier des charges de son objet.

</div>

## Travail à faire

### A — Comprendre l'imprimante 3D

**Observer et schématiser le fonctionnement de la Creality Ender 6.**

1. Observer le schéma commenté de la machine présenté par ton professeur : buse, plateau chauffant, moteurs,
   bobine de filament, structure CoreXY.
2. Relier chaque composant à sa fonction : quel élément fait fondre le plastique ? quel élément déplace la buse ?
   quel élément maintient la première couche en place ?
3. Faire le lien avec la séance sur les matériaux : de quelle famille de matériau est fait le filament utilisé
   (bois, métal, plastique, composite) ?
4. Schématiser en une phrase le principe général : un fil de plastique fondu, déposé couche par couche, qui
   construit un volume.

### B — Entraîner un modèle d'intelligence artificielle

**Découvrir concrètement l'apprentissage d'une IA, en petit groupe.**

1. Te connecter à Vittascience (module IA) avec l'accès indiqué par ton professeur (poste ou compte de classe).
2. Choisir avec ton groupe un thème lié au tri des déchets ou des matériaux (par exemple : reconnaître un
   emballage plastique, du papier, un déchet métallique...).
3. Constituer un petit jeu d'exemples (photos ou webcam) pour chaque catégorie que le modèle doit apprendre à
   reconnaître.
4. Entraîner le modèle, puis le tester sur de nouveaux exemples non utilisés pendant l'entraînement.
5. Noter au moins un cas où le modèle s'est trompé, et essayer de comprendre pourquoi (exemple ambigu, catégories
   trop proches, pas assez d'exemples fournis...).

### C — Rédiger le cahier des charges de mon objet

**Fixer les contraintes réelles de mon projet, à partir de mon croquis coté.**

1. Reprendre le croquis coté réalisé en séance de dessin technique : quelle fonction doit remplir mon objet ?
2. Vérifier que les dimensions prévues respectent le volume maximum de la machine (250 × 250 × 400 mm) — en
   pratique, viser un objet nettement plus petit qu'une pièce du croquis d'origine si besoin.
3. Respecter la contrainte de temps d'impression fixée pour l'exercice : **temps d'impression maximum ≈ 3 heures
   par pièce**, une seule imprimante devant produire les objets de tous les élèves du groupe sur les prochaines
   séances. Si ton objet dépasse cette limite, simplifie sa forme ou réduis sa taille.
4. Rédiger un cahier des charges court : fonction de l'objet, dimensions prévues, contraintes de temps
   d'impression, matériau (filament) envisagé.

### Questions de synthèse

- Pourquoi une imprimante 3D FDM construit-elle un objet couche par couche plutôt que d'un seul coup ?
- Donne un exemple concret de la limite observée sur le modèle d'IA entraîné par ton groupe.

??? tip "Vérifier mes réponses"
    - Le filament ne peut être déposé que là où la buse se trouve à un instant donné ; en superposant des couches
      fines successives, la machine construit progressivement un volume qu'elle ne pourrait pas produire en une
      seule opération.
    - La réponse dépend du modèle réellement entraîné par ton groupe : une confusion fréquente est un exemple trop
      proche visuellement d'une autre catégorie, ou un nombre insuffisant d'exemples fournis pour une catégorie.

!!! tip "Où répondre ?"
    Dépose ton cahier des charges dans ton bloc-notes **OneNote**, section *EPI STM — Mon projet*, et des captures
    de ton modèle entraîné (résultats, cas d'erreur observés) dans la section *EPI STM — Impression 3D et IA*.

## Ressources et outils

- **Vittascience — module Intelligence artificielle** : entraînement d'un modèle de reconnaissance directement
  dans le navigateur, sans installation — [ouvrir Vittascience IA](https://en.vittascience.com/ia/){ target="_blank" rel="noopener" }
- **Schéma commenté de la Creality Ender 6** : support présenté en classe — activité intrinsèquement collective ;
  si tu es absent, demande à ton professeur le schéma étudié pour compléter ta fiche à ton retour.
- **Ton croquis coté** (séance précédente) : base de ton cahier des charges.

## Grille d'évaluation Imprimante 3D, IA et cahier des charges

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Fonctionnement imprimante (obj. 2) | Chaque composant est relié à sa fonction, filament rattaché à sa famille de matériau | -- / - / + / ++ |
| Entraînement du modèle IA | Un modèle est effectivement entraîné, testé, avec au moins un cas d'erreur analysé | -- / - / + / ++ |
| Cahier des charges (obj. 5) | Dimensions et temps d'impression respectent les contraintes de la machine et du groupe | -- / - / + / ++ |

</div>
