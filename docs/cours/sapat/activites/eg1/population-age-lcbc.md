# 👵 Une population qui vieillit en Bretagne Centre

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences Pix</span>
  <span title="Gérer des données">CRCN 1.2</span>
  <span title="Traiter des données">CRCN 1.3</span>
  <span title="Adapter les documents à leur finalité">CRCN 3.3</span>
</div>

<p class="zt-kicker">2nde Bac Pro SAPAT — EG1 · Approche scientifique</p>

<p class="zt-lede">Que disent les chiffres du recensement sur les communes de Loudéac Communauté – Bretagne Centre ? — Données réelles INSEE</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 55 min (45 min effectives)</span>
  <span>:material-school-outline: EG1 — Approche scientifique</span>
  <span>:material-tag-outline: Excel</span>
</div>

## Mise en situation

Le **CCAS de Loudéac** prépare son rapport annuel sur les besoins des personnes âgées du territoire (aide à
domicile, portage de repas, transport). Avant toute chose, la coordinatrice a besoin d'une photographie simple :
sur les communes de Loudéac Communauté – Bretagne Centre, quelle part de la population a 65 ans ou plus, et cette
part varie-t-elle beaucoup d'une commune à l'autre ?

L'**INSEE** publie chaque année, dans son recensement de la population, la répartition de chaque commune par
grandes tranches d'âge — une donnée publique, gratuite et téléchargeable.

**Ton rôle :** tu es agent du CCAS. Tu télécharges toi-même le fichier officiel de recensement (toutes les communes
de France), tu le filtres pour ne garder que les communes de Loudéac Communauté – Bretagne Centre, puis tu calcules
la part des 65 ans et plus, tu repères les communes les plus concernées, et tu prépares un petit graphique pour le
rapport.

!!! question "Problématique"
    « Quelle part de la population a 65 ans ou plus dans les communes de Loudéac Communauté – Bretagne Centre, et
    quelles communes sont les plus concernées par le vieillissement ? »

## Objectifs

- Lire et interpréter un tableau de données démographiques réelles
- Calculer une part (pourcentage) à partir d'effectifs, avec une formule adaptée
- Trier et mettre en évidence des valeurs avec une mise en forme conditionnelle
- Construire un graphique simple et légendé à partir d'un calcul

!!! abstract "Source de données"
    **Jeu de données :** Population 2020 selon l'âge INSEE, en 10 tranches (par sexe, de 0-2 ans à 80 ans et plus)
    **Producteur :** Ithéa Conseil, à partir de INSEE RP 2020 (Recensement de la population)
    **URL de téléchargement direct** : [data.gouv.fr — Population 2020 selon l'âge INSEE, en 10 tranches](https://www.data.gouv.fr/datasets/population-2020-selon-lage-insee-en-10-tranches){ target="_blank" rel="noopener" }
    **Format :** fichier national unique (toutes communes de France), `.xlsx` (~10 Mo) · **Licence :** Licence Ouverte / Étalab
    **Particularité :** le fichier contient une colonne EPCI — filtrer sur « CC Loudéac Communauté Bretagne Centre »
    pour ne garder que les 38 communes du territoire (voir [liste officielle des communes](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" }
    en cas de doute sur un nom de commune). Les tranches d'âge du fichier ne correspondent pas exactement à
    0-19/20-59/60+ : la tranche 55-64 chevauche la limite de 60 ans, ce qui empêche un calcul propre à ce seuil.
    Cette activité utilise donc le seuil de **65 ans** (tranches 65-79 et 80+), qui correspond à une limite réelle
    du fichier et reste un indicateur pertinent pour un CCAS (âge de la retraite, entrée dans les dispositifs
    seniors).

## Travail à faire

**Télécharger, filtrer, calculer, mettre en évidence**

1. Télécharger le fichier `.xlsx` depuis le lien ci-dessus et l'ouvrir. Utiliser un **filtre** sur la colonne EPCI
   pour ne garder que les lignes de « CC Loudéac Communauté Bretagne Centre » (38 communes) ; copier ces lignes dans
   une nouvelle feuille pour travailler dessus sans risquer de modifier le fichier source. Repérer la commune la
   plus peuplée et la moins peuplée du territoire (colonne population totale, ou somme de toutes les tranches).
2. Ajouter une colonne « Effectif 65 ans et plus » = somme des 4 colonnes concernées (F65-79, F80+, H65-79, H80+).
3. Ajouter une colonne « Part des 65 ans et plus (%) » avec la formule `= effectif 65 ans et plus / population totale`, au format pourcentage.
4. Trier le tableau par cette colonne, du pourcentage le plus élevé au plus faible.
5. Appliquer une **mise en forme conditionnelle** (dégradé de couleur) sur la colonne des pourcentages pour repérer d'un coup d'œil les communes les plus concernées.
6. Calculer avec `=NB.SI()` le nombre de communes où cette part dépasse 30 %.
7. Créer un **graphique en barres** « Part de la population de 65 ans et plus par commune », avec titre, axes légendés et source citée (Ithéa Conseil / INSEE RP 2020).

!!! tip "Astuce"
    Pour que le pourcentage s'affiche correctement, vérifie que la cellule est bien au format « Pourcentage » (et non un nombre décimal type 0,32) avant de construire le graphique.

**Questions de synthèse**

- Quelle commune a la part de 65 ans et plus la plus élevée, et quelle est cette part ?
- Combien de communes dépassent 30 % ?
- Le vieillissement est-il réparti de façon égale sur le territoire, ou concentré sur certaines communes ?

!!! tip "Où répondre ?"
    Dépose ton tableur et ton graphique dans ton bloc-notes **OneNote**, section *EG1 — Population et territoire*.

## Ressources et outils

- [Population 2020 selon l'âge INSEE, en 10 tranches — data.gouv.fr](https://www.data.gouv.fr/datasets/population-2020-selon-lage-insee-en-10-tranches){ target="_blank" rel="noopener" } — fichier à télécharger et filtrer (voir Source de données).
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — liste officielle des 38 communes, à consulter en cas de doute sur un nom lors du filtrage.

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
