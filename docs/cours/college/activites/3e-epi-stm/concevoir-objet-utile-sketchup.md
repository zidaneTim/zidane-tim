# 🧩 Concevoir mon objet utile sous SketchUp

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN</span>
  <span title="Développer des documents multimédia">CRCN 3.2</span>
</div>

<p class="zt-kicker">3e EA — EPI STM · Conception 3D</p>

<p class="zt-lede">À partir de ton croquis coté et de ton cahier des charges, modélise ton propre objet, prêt à être imprimé.</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 125 min</span>
  <span>:material-school-outline: EPI STM — Conception 3D</span>
  <span>:material-tag-outline: SketchUp · Cura · Impression 3D</span>
</div>

## Mise en situation

Tu maîtrises maintenant les commandes de base de SketchUp, et tu as un cahier des charges précis pour ton objet.
C'est le moment de modéliser ton propre projet, en respectant les contraintes d'imprimabilité : une pièce mal
conçue (parois trop fines, partie qui « flotte » dans le vide) peut échouer à l'impression, même si le modèle a
l'air correct à l'écran.

!!! question "Problématique"
    Comment transformer mon croquis coté en un modèle 3D réellement imprimable par la machine de la salle ?

## Objectifs

<div class="zt-objectifs" markdown>

- Modéliser son objet utile sous SketchUp à partir de son croquis coté et de son cahier des charges.
- Vérifier et préparer le fichier pour l'impression (tranchage) en respectant les contraintes de la machine.

</div>

## Travail à faire

### A — Modéliser mon objet

**Reproduire mon croquis coté en 3D sous SketchUp.**

1. Reprendre ton croquis coté et ton cahier des charges (dimensions, temps d'impression maximum).
2. Modéliser la forme générale de l'objet en réutilisant les commandes apprises au tutoriel (Rectangle,
   Pousser/Tirer, Suivez-moi selon les formes nécessaires).
3. Respecter une épaisseur de paroi minimale (au moins 2 mm) pour que la pièce ne soit pas trop fragile une fois
   imprimée.
4. Éviter les porte-à-faux importants (parties du modèle qui « flottent » sans appui en dessous) : si ta forme en
   comporte un, prévois un support ou modifie légèrement la conception.
5. Vérifier tes dimensions finales avec l'outil de mesure de SketchUp et les comparer à ton cahier des charges.

### B — Préparer le fichier pour l'impression

**Trancher le modèle et vérifier sa faisabilité avant validation.**

1. Exporter ton modèle SketchUp au format compatible avec le logiciel de tranchage (Cura).
2. Ouvrir le fichier dans Cura et lancer le tranchage (aperçu des couches que la machine va imprimer).
3. Vérifier dans Cura le temps d'impression estimé : reste-t-il compatible avec la limite fixée dans ton cahier
   des charges (environ 3 heures) ?
4. Si le temps estimé dépasse la limite, réduire la taille de l'objet ou diminuer le taux de remplissage
   (infill) proposé par Cura, puis retrancher.
5. Faire valider ton fichier tranché par ton professeur avant le lancement de l'impression.

### Questions de synthèse

- Pourquoi une épaisseur de paroi trop fine risque-t-elle de rendre une pièce imprimée fragile ou ratée ?
- Que permet de vérifier le tranchage dans Cura avant de lancer réellement l'impression ?

??? tip "Vérifier mes réponses"
    - Une paroi trop fine peut se déformer ou se rompre pendant l'impression (peu de matière pour tenir la
      structure), ou casser facilement une fois imprimée, car elle n'a pas assez d'épaisseur pour résister aux
      manipulations.
    - Le tranchage permet de vérifier le temps d'impression estimé, la quantité de filament nécessaire, et de
      repérer d'éventuels problèmes de conception (porte-à-faux non supportés, parois trop fines) avant de lancer
      réellement la machine.

!!! tip "Où répondre ?"
    Dépose ton fichier SketchUp final et ton fichier tranché Cura dans ton bloc-notes **OneNote**, section
    *EPI STM — Mon projet*.

## Ressources et outils

- **SketchUp** : logiciel installé sur ton poste — modélisation de ton objet.
- **Cura** : logiciel installé sur ton poste — tranchage et estimation du temps d'impression avant fabrication.
- **Ton croquis coté et ton cahier des charges** (séances précédentes) : base de ta modélisation.

## Grille d'évaluation Conception 3D — mon objet utile

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Fidélité au cahier des charges (obj. 3, obj. 5) | Le modèle respecte les dimensions et la fonction prévues | -- / - / + / ++ |
| Imprimabilité | Épaisseurs de paroi et porte-à-faux respectent les contraintes d'impression | -- / - / + / ++ |
| Préparation du tranchage | Fichier tranché avec un temps d'impression compatible avec la contrainte fixée | -- / - / + / ++ |

</div>
