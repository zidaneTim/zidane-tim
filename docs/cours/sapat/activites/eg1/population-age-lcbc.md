# 👵 Une population qui vieillit en Bretagne Centre

<p class="zt-kicker">2nde Bac Pro SAPAT — EG1 · Approche scientifique</p>

<p class="zt-lede">Que disent les chiffres du recensement sur les communes de Loudéac Communauté – Bretagne Centre ? — Données réelles INSEE</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 50 min (40 min effectives)</span>
  <span>:material-school-outline: EG1 — Approche scientifique</span>
  <span>:material-tag-outline: CRCN 1.2 · CRCN 1.3 · CRCN 3.3 · Excel</span>
</div>

## Mise en situation

Le **CCAS de Loudéac** prépare son rapport annuel sur les besoins des personnes âgées du territoire (aide à
domicile, portage de repas, transport). Avant toute chose, la coordinatrice a besoin d'une photographie simple :
sur les communes de Loudéac Communauté – Bretagne Centre, quelle part de la population a 60 ans ou plus, et cette
part varie-t-elle beaucoup d'une commune à l'autre ?

L'**INSEE** publie chaque année, dans son recensement de la population, la répartition de chaque commune par
grandes tranches d'âge — une donnée publique, gratuite et téléchargeable.

**Ton rôle :** tu es stagiaire au CCAS. On te confie un tableau déjà construit avec les effectifs par tranche d'âge
des communes du territoire ; ta mission est de calculer la part des 60 ans et plus, de repérer les communes les
plus concernées, et de préparer un petit graphique pour le rapport.

!!! question "Problématique"
    « Quelle part de la population a 60 ans ou plus dans les communes de Loudéac Communauté – Bretagne Centre, et
    quelles communes sont les plus concernées par le vieillissement ? »

## Objectifs

- Lire et interpréter un tableau de données démographiques réelles (CRCN 1.2)
- Calculer une part (pourcentage) à partir d'effectifs, avec une formule adaptée (CRCN 1.3)
- Trier et mettre en évidence des valeurs avec une mise en forme conditionnelle (CRCN 1.3)
- Construire un graphique simple et légendé à partir d'un calcul (CRCN 3.3)

!!! abstract "Source de données"
    **Jeu de données :** Recensement de la population — populations légales par commune, par grandes tranches d'âge
    **Producteur :** INSEE (Institut national de la statistique et des études économiques)
    **URL :** [insee.fr — Populations légales millésimées](https://www.insee.fr/fr/statistiques/serie/s2020){ target="_blank" rel="noopener" }
    **Format :** tableau fourni par l'enseignant (extrait déjà limité aux communes de LCBC) · **Licence :** Licence Ouverte / Étalab
    **Particularité :** le fichier national complet contient toutes les communes de France ; l'enseignant fournit un
    extrait déjà limité au territoire pour cette activité — aucune extraction n'est demandée ici (elle sera vue en
    1ère avec des jeux de données plus volumineux).

## Travail à faire

**Lire, calculer, mettre en évidence**

1. Ouvrir le tableau fourni (une ligne par commune, colonnes : population totale, effectif 0-19 ans, 20-59 ans,
   60 ans et plus). Repérer la commune la plus peuplée et la moins peuplée du territoire.
2. Ajouter une colonne « Part des 60 ans et plus (%) » avec la formule `= effectif 60 ans et plus / population totale`, au format pourcentage.
3. Trier le tableau par cette colonne, du pourcentage le plus élevé au plus faible.
4. Appliquer une **mise en forme conditionnelle** (dégradé de couleur) sur la colonne des pourcentages pour repérer d'un coup d'œil les communes les plus concernées.
5. Calculer avec `=NB.SI()` le nombre de communes où cette part dépasse 30 %.
6. Créer un **graphique en barres** « Part de la population de 60 ans et plus par commune », avec titre, axes légendés et source citée (INSEE, année du recensement).

!!! tip "Astuce"
    Pour que le pourcentage s'affiche correctement, vérifie que la cellule est bien au format « Pourcentage » (et non un nombre décimal type 0,32) avant de construire le graphique.

**Questions de synthèse**

- Quelle commune a la part de 60 ans et plus la plus élevée, et quelle est cette part ?
- Combien de communes dépassent 30 % ?
- Le vieillissement est-il réparti de façon égale sur le territoire, ou concentré sur certaines communes ?

!!! tip "Où répondre ?"
    Dépose ton tableur et ton graphique dans ton bloc-notes **OneNote**, section *EG1 — Population et territoire*.

## Ressources et outils

- [Populations légales — INSEE](https://www.insee.fr/fr/statistiques/serie/s2020){ target="_blank" rel="noopener" } — page officielle de référence sur la méthode de recensement (pour comprendre d'où viennent les chiffres).
- **Tableau de travail** : extrait LCBC fourni par l'enseignant (fichier distribué en début de séance).

## Grille d'évaluation

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Lecture et compréhension des données | Le tableau est lu correctement ; la commune la plus/moins peuplée est identifiée. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Traitement des données | La formule de pourcentage est exacte ; le tri et la mise en forme conditionnelle sont fonctionnels ; `NB.SI()` renvoie le bon résultat. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Représentation graphique | Le graphique est complet (titre, axes, source) et lisible. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Interprétation | Les questions de synthèse montrent une lecture correcte du phénomène de vieillissement territorial. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |

!!! note "Compétences visées"
    EG1 — usage et traitement de données numériques (lecture de tableau, formules de base, mise en forme
    conditionnelle, représentation graphique). Pas de création de tableau croisé dynamique en 2nde (réservée à la
    1ère).
