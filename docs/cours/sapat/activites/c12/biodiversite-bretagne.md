# 🦋 Ces espèces qui ne sont pas d'ici

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN réinvesties</span>
  <span title="Mener une recherche et une veille d'information">CRCN 1.1</span>
  <span title="Traiter des données">CRCN 1.3</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème biodiversité · Entraînement ECCF</p>

<p class="zt-lede">Les espèces non indigènes recensées commune par commune — Données réelles de l'Observatoire de l'environnement en Bretagne (OEB), Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 2 séances (55 min) — entraînement + simulation</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · Excel · Google MyMaps</span>
</div>

!!! warning "Statut de cette activité — support d'entraînement ECCF"
    Ce thème **n'est pas enseigné en cours** : il sert de cas pratique pour t'entraîner à l'épreuve certificative ECCF E1.2, sur un sujet que tu découvres le jour même — exactement comme le jour de l'épreuve. Tu mobilises seul les **3 critères** vus toute l'année (Analyse → Traitement → Exposition) sur des données que tu n'as jamais manipulées.

## Mise en situation

Loudéac Communauté – Bretagne Centre (LCBC) engage un **plan de gestion des espèces exotiques envahissantes** (renouée du Japon, jussie, frelon asiatique, ragondin…). Ces espèces, introduites par l'activité humaine, peuvent déséquilibrer les milieux, gêner l'entretien des espaces verts et des cours d'eau, voire poser des problèmes de santé publique.

Avant d'agir, la **chargée de mission biodiversité** du service environnement a besoin d'un état des lieux : combien d'espèces non indigènes sont recensées dans chaque commune du territoire, combien sont réellement **invasives**, et où faut-il concentrer la surveillance et la sensibilisation des agents d'entretien.

L'**Observatoire de l'environnement en Bretagne (OEB)** publie en open data la liste des espèces non indigènes recensées **commune par commune** en Bretagne, avec pour chacune son statut (invasive avérée, potentielle, à surveiller, ou non invasive).

**Ton rôle :** tu es agent au service environnement de LCBC. La chargée de mission te confie l'étude : extraire les données du territoire, les traiter, et lui remettre une synthèse chiffrée avec carte pour cibler le plan d'action.

!!! question "Problématique"
    « Quelles espèces non indigènes, et notamment invasives, sont recensées dans les communes de Loudéac Communauté – Bretagne Centre, et comment présenter cet état des lieux pour cibler la surveillance et la sensibilisation sur le territoire ? »

## Objectifs

<div class="zt-objectifs" markdown>

- Analyser la demande du service environnement, reformuler la problématique avec ses propres mots et construire un
  sous-ensemble de travail propre à partir d'un fichier régional (une ligne par espèce et par commune)
- Traiter les données avec NB.SI, NB.SI.ENS, mise en forme conditionnelle et tableau croisé dynamique
- Cartographier les communes et leur exposition aux espèces invasives avec Google MyMaps, et rédiger une synthèse
  chiffrée adaptée à la destinataire, sans dépasser ce que montrent les données

</div>

!!! abstract "Source de données"
    **Téléchargement :** [Espèces non indigènes par commune en Bretagne — data.gouv.fr](https://www.data.gouv.fr/datasets/especes-non-indigenes-par-commune-en-bretagne)

    | Colonne | Signification |
    |---|---|
    | `INSEE_COMMUNE` | code INSEE de la commune |
    | `COMMUNE` | nom de la commune |
    | `NOM_SCIENTIFIQUE` | nom scientifique de l'espèce |
    | `NOM_VERNACULAIRE` | nom courant de l'espèce |
    | `TAXREF_CD_NOM` | code de référence taxonomique |
    | `GROUP2_INPN` | groupe taxonomique détaillé |
    | `GROUP1_INPN` | groupe taxonomique général |
    | `INVASIVE` | statut d'invasivité (avérée/potentielle/à surveiller/non invasive) |
    | `SOURCE` | source de l'observation |
    | `MAJ` | date de mise à jour |

## Travail à faire

### A — Analyse du contexte et de la problématique

**Comprendre la demande, récupérer et nettoyer les données**

1. Reformuler en 2-3 phrases la demande de la chargée de mission : qui a besoin de quoi, pour quoi faire ? Identifier le phénomène étudié (espèces non indigènes et invasives) et le territoire concerné.
2. Ouvrir la page du jeu de données sur data.gouv.fr et relever : le producteur (OEB), la licence, la date de dernière mise à jour. Justifier en une phrase que ce fichier ne contient **aucune donnée personnelle** (des espèces et des communes, pas des individus).
3. Télécharger le fichier CSV et l'importer dans Excel (Données → À partir d'un fichier texte/CSV, séparateur adapté, encodage UTF-8). Noter le nombre total de lignes et repérer les colonnes du fichier : `INSEE_COMMUNE`, `COMMUNE`, `NOM_SCIENTIFIQUE`, `NOM_VERNACULAIRE`, `TAXREF_CD_NOM`, `GROUP2_INPN`, `GROUP1_INPN`, `INVASIVE`, `SOURCE`, `MAJ`.
4. Construire le **sous-ensemble de travail** : filtrer sur les Côtes-d'Armor (`INSEE_COMMUNE` commençant par « 22 »), puis copier-coller *en valeurs* le résultat dans un nouvel onglet nommé `Donnees-22`.
5. À partir de la liste officielle des communes de Loudéac Communauté – Bretagne Centre (lien en Ressources et outils), créer un onglet `Donnees-LCBC` ne conservant que les lignes des communes du territoire.
6. Nettoyer l'onglet `Donnees-LCBC` : vérifier qu'il ne reste aucune ligne vide, que la colonne `INVASIVE` ne contient que les 4 statuts attendus, et écrire en une phrase le **biais de pression d'observation** (pourquoi un nombre d'espèces plus élevé ne signifie pas forcément une commune « plus envahie »).

### B — Traitement des données adapté au contexte et à la problématique étudiée

**Compter, croiser, faire parler les données**

1. Compter le nombre total d'espèces recensées sur le territoire avec `=NBVAL()` (une ligne = une espèce dans une commune), puis le nombre de lignes pour la commune de Loudéac avec `=NB.SI()`.
2. Compter avec `=NB.SI.ENS()` les espèces **invasives avérées** d'une commune donnée (deux critères : commune *et* `invasive` = « non indigène, invasive avérée »).
3. Construire un petit tableau de synthèse par commune : pour chaque commune de LCBC, le nombre total d'espèces et le nombre d'espèces invasives avérées (formules `NB.SI` / `NB.SI.ENS`), puis une colonne « part d'invasives avérées » au format pourcentage.
4. Appliquer une **mise en forme conditionnelle** (dégradé de couleurs) sur la colonne « part d'invasives avérées » pour visualiser d'un coup d'œil les communes les plus exposées.
5. Construire un **tableau croisé dynamique** depuis `Donnees-LCBC` : communes en lignes, statut `invasive` en colonnes, nombre d'espèces en valeurs, trié du plus grand au plus petit total.

!!! tip "Astuce"
    Le statut est un texte long (« non indigène, invasive avérée »). Pour éviter les fautes de frappe dans tes formules, copie-colle la valeur exacte depuis une cellule, ou utilise un critère avec joker : `"*invasive avérée*"` compte toutes les lignes qui contiennent ces mots.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Représenter et transmettre à la chargée de mission**

1. Créer depuis le TCD un **graphique en barres empilées** « Espèces non indigènes par commune et par statut » complet : titre, axes légendés, source citée (OEB via data.gouv.fr, année de mise à jour). Justifier en une phrase le choix de la barre empilée (montrer à la fois le total et la part d'invasives).
2. Préparer la **carte** : créer depuis le tableau de synthèse un fichier CSV (commune, code postal, nombre total d'espèces, nombre d'invasives avérées), puis l'importer **directement** dans **Google MyMaps** (Importer → choisir le CSV, désigner la commune ou le code postal comme colonne de position et la commune comme titre des repères). Titrer la carte et renseigner les pop-ups avec les deux nombres.
3. Rédiger la **synthèse pour la chargée de mission** (8-10 lignes) : nombre d'espèces non indigènes sur le territoire, part d'invasives avérées, communes les plus exposées à cibler en priorité, **rappel explicite du biais de pression d'observation**, et une proposition concrète (commune à surveiller, message aux agents d'entretien). Insérer le graphique et le lien de la carte.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta synthèse dans ton bloc-notes **OneNote**, section *C1.2 — Biodiversité*.

## Ressources et outils

- [Espèces non indigènes par commune en Bretagne — data.gouv.fr](https://www.data.gouv.fr/datasets/especes-non-indigenes-par-commune-en-bretagne){ target="_blank" rel="noopener" } — fiche officielle : description, licence (Licence Ouverte 2.0), téléchargement du CSV (OEB / GIP Bretagne environnement).
- [Tableau de bord « Les espèces non indigènes en Bretagne » — OEB](https://bretagne-environnement.fr/tableau-de-bord/especes-non-indigenes-bretagne){ target="_blank" rel="noopener" } — datavisualisation officielle pour comprendre le contexte avant de traiter les données.
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — page officielle de l'intercommunalité : liste des 38 communes membres du territoire.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte finale.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande du service environnement est reformulée correctement ; la source OEB est identifiée (producteur, licence, date) ; l'absence de données personnelles est justifiée ; le sous-ensemble Côtes-d'Armor puis LCBC est construit et nettoyé ; le biais de pression d'observation est énoncé avec ses mots. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiée | NBVAL, NB.SI et NB.SI.ENS renvoient des résultats exacts ; le tableau de synthèse par commune et la part d'invasives sont corrects ; la mise en forme conditionnelle est fonctionnelle ; le TCD croise commune et statut `invasive`, trié. | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Le graphique en barres empilées est complet (titre, axes, source) et son choix justifié ; la carte MyMaps est publiée et lisible ; la synthèse est chiffrée, rappelle explicitement la limite de pression d'observation, et se conclut par une proposition exploitable par la chargée de mission. | -- / - / + / ++ |

</div>
