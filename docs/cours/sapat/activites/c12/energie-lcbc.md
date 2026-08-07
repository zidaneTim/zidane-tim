# 🏠 Repérer les foyers exposés à la précarité énergétique

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN</span>
  <span title="Adapter un document à sa finalité">CRCN 3.3</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème énergie</p>

<p class="zt-lede">Consommation électrique résidentielle par commune sur le territoire de Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (55 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · Excel · Google MyMaps</span>
</div>

## Mise en situation

Tu es agent du service Habitat-Énergie de **Loudéac Communauté – Bretagne Centre (LCBC)**, qui prépare une campagne de sensibilisation à la précarité énergétique auprès des ménages les plus fragiles du territoire — notamment les personnes âgées vivant seules dans des logements ruraux anciens et mal isolés.

Selon l'Observatoire National de la Précarité Énergétique (ONPE), un ménage est en précarité énergétique lorsqu'il consacre plus de **8 % de son revenu** aux dépenses d'énergie du logement ; en France, cela concerne environ un ménage sur dix, avec une surexposition des zones rurales et des logements anciens.

**Ton rôle :** à partir des données ouvertes de consommation électrique par commune, identifier les communes de LCBC où la consommation résidentielle moyenne par site est la plus élevée — un indicateur souvent lié à des logements grands, anciens ou mal isolés — pour cibler la campagne et orienter les habitants vers les relais de proximité.

!!! question "Problématique"
    « Comment identifier, à partir des données ouvertes de consommation électrique, les communes de Loudéac Communauté – Bretagne Centre les plus exposées à un risque de précarité énergétique, afin d'y cibler une action de sensibilisation ? »

## Objectifs

<div class="zt-objectifs" markdown>

- Reformuler avec ses propres mots le lien entre logement ancien/mal isolé, consommation d'électricité et précarité
  énergétique
- Nettoyer et sélectionner un sous-ensemble exploitable d'un jeu de données étendu (valeurs masquées, filière
  d'énergie, regroupement de lignes par commune), puis trier, filtrer et calculer des indicateurs avec des formules
  Excel (SI, NB.SI, SOMME.SI.ENS, MOYENNE.SI.ENS)
- Réaliser une carte des relais de proximité sur le territoire de LCBC et produire un support de communication
  professionnel adapté à un public non expert (travailleurs sociaux, aides à domicile)

</div>

!!! abstract "Source de données"
    **Téléchargement :** [Consommation annuelle d'électricité et gaz par commune — portail Agence ORE](https://opendata.agenceore.fr/datasets/consommation-annuelle-d-electricite-et-gaz-par-commune) (vue filtrable : ajouter `/table` à l'URL)

    | Colonne | Signification |
    |---|---|
    | `OPERATEUR` | gestionnaire de réseau |
    | `FILIERE` | électricité ou gaz |
    | `Code Commune` | code INSEE de la commune |
    | `Nom Commune` | nom de la commune |
    | `Code EPCI` | code de l'intercommunalité |
    | `Nom EPCI` | nom de l'intercommunalité |
    | `CODE GRAND SECTEUR` | secteur de consommation (résidentiel...) |
    | `Nb sites` | nombre de sites raccordés |
    | `Conso totale (MWh)` | consommation totale |
    | `Conso moyenne (MWh)` | consommation moyenne par site |
    | `Nombre de mailles secretisées` | nombre de valeurs masquées (secret statistique) |

## Travail à faire

### A — Analyse du contexte et de la problématique

**Récupérer, comprendre et nettoyer les données**

1. Sur le portail Agence ORE (lien direct en Ressources et outils — ouvrir la vue `/table`), utiliser le filtre en ligne pour n'exporter que les communes du département des Côtes-d'Armor (22), puis ouvrir l'export dans Excel. Si les caractères accentués s'affichent mal (`Ã©`, `Ã´`...), reprendre l'import (Données → À partir d'un fichier texte/CSV) en testant un autre encodage (UTF-8, puis 1252 Europe de l'Ouest si besoin) jusqu'à obtenir un affichage correct.
2. Reformuler avec ses propres mots le lien entre précarité énergétique et publics fragiles suivis en SAPAT (2-3 phrases).
3. Filtrer le tableau sur trois critères combinés :
    - `Code EPCI` = **200067460** (code officiel INSEE de Loudéac Communauté – Bretagne Centre — voir Ressources et outils) ;
    - `CODE GRAND SECTEUR` = **RESIDENTIEL** (valeur exacte, en majuscules) ;
    - `FILIERE` = la valeur correspondant à l'**électricité** — utilise le filtre automatique de la colonne pour lister les valeurs réellement présentes dans le fichier et distinguer l'électricité du gaz (« Gaz » est également présent : à exclure).
4. Ajouter une colonne « Donnée disponible » (Oui/Non) pour repérer les cellules masquées (« NC », vide) sans les remplacer par 0.
5. Vérifier avec `NB.SI()` si une même commune apparaît sur plusieurs lignes (plusieurs opérateurs). Si oui, créer un tableau récapitulatif **une ligne par commune** en sommant `Conso totale (MWh)` et `Nb sites` de chaque commune avec `SOMME.SI.ENS()`. Si chaque commune n'a qu'une seule ligne après filtrage, passer directement à l'étape suivante.
6. Copier-coller (valeurs) le résultat dans une nouvelle feuille nommée *Sous-ensemble de travail* : c'est elle qui sert de base à toute la suite.

### B — Traitement des données adapté au contexte et à la problématique étudiée

**Calculer et classer un indicateur de vulnérabilité**

1. Ajouter une colonne « Consommation moyenne par site (MWh) » = `Conso totale (MWh)` ÷ `Nb sites` (valeurs regroupées par commune de l'étape A5). Vérifier ce calcul en le comparant, quand c'est possible, à la colonne `Conso moyenne (MWh)` déjà fournie par le producteur.
2. Trier le tableau par ordre décroissant de cet indicateur et calculer sa médiane avec `MEDIANE()`.
3. Calculer avec `NB.SI()` le nombre de communes dépassant cette médiane, et avec `MOYENNE.SI.ENS()` la moyenne de l'indicateur en excluant les communes marquées « Donnée disponible = Non ».
4. Ajouter une colonne « Niveau de vigilance » avec un `SI` imbriqué : « Fort » si l'indicateur > médiane × 1,2, « Moyen » si entre la médiane et ce seuil, « Faible » sinon.
5. Appliquer une mise en forme conditionnelle (dégradé) sur la colonne de l'indicateur, puis construire un **tableau croisé dynamique** (Commune en ligne, moyenne de l'indicateur en valeurs, tri décroissant).

!!! tip "Astuce"
    Vérifie que `Nb sites` n'est jamais à 0 avant de diviser, sinon Excel renvoie une erreur `#DIV/0!`.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Cartographier, représenter et communiquer**

1. Recenser en ligne les permanences France Rénov' et points conseil budget/CCAS présents dans les 3-4 communes classées « Fort » (le jeu de données ne dit pas où orienter les habitants).
2. Construire un fichier CSV (colonnes : Nom de la structure, Commune, Adresse, Latitude, Longitude), puis l'importer **directement** dans Google MyMaps (Importer → choisir le CSV, puis indiquer les colonnes de position — Latitude/Longitude ou Adresse — et la colonne servant de titre aux repères).
3. Créer un graphique (histogramme) des 5 communes ayant l'indicateur le plus élevé, avec titre, légende et unité.
4. Rédiger une fiche « Repérer et orienter » (10-15 lignes) : communes prioritaires, 2-3 repères simples, graphique, lien vers la carte — dans un langage clair, sans jargon, utilisable directement par un travailleur social pressé.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta fiche dans ton bloc-notes **OneNote**, section *C1.2 — Énergie*.

## Ressources et outils

- [Consommation annuelle d'électricité et gaz par commune — data.gouv.fr](https://www.data.gouv.fr/datasets/consommation-annuelle-delectricite-et-gaz-par-commune){ target="_blank" rel="noopener" } — fiche officielle : description, licence, métadonnées du jeu de données.
- [Portail Agence ORE — Consommation annuelle d'électricité et gaz par commune](https://opendata.agenceore.fr/datasets/consommation-annuelle-d-electricite-et-gaz-par-commune){ target="_blank" rel="noopener" } — **c'est ici qu'on filtre et qu'on exporte** par département/commune avant téléchargement (vue filtrable : ajouter `/table` à la fin de l'URL). ⚠️ Ne pas passer par le lien « Voir la source originale » de data.gouv.fr : il renvoie désormais vers un catalogue générique, pas vers ce jeu de données.
- **Code EPCI de Loudéac Communauté – Bretagne Centre : 200067460** — source : [API Découpage administratif — geo.api.gouv.fr](https://geo.api.gouv.fr/epcis/200067460/communes){ target="_blank" rel="noopener" }, base INSEE/Banatic (lien vérifié 23/07). Filtrer directement sur ce code est plus fiable qu'une liste de noms de communes (pas de risque d'erreur d'accent ou d'orthographe).
- **ONPE — précarité énergétique** : définition officielle et chiffres de cadrage (recherche : « ONPE précarité énergétique définition »)
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte des relais de proximité.
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — page officielle de l'intercommunalité, pour situer le territoire et contacter le service Habitat (⚠️ sa liste brute affiche 41 noms, elle mélange des communes déléguées avec les 38 communes membres actuelles — pour le filtrage de données, utiliser le code EPCI ci-dessus).

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | Le lien entre logement, consommation d'électricité et précarité énergétique est reformulé avec ses propres mots ; la problématique est resituée sur LCBC ; le filtrage (EPCI, secteur résidentiel, filière électricité) est correct et justifié. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiée | Le sous-ensemble est nettoyé (secret statistique géré, doublons de commune regroupés si présents) ; NB.SI, SOMME.SI.ENS, MOYENNE.SI.ENS, SI et le TCD sont fonctionnels et pertinents. | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Graphique, carte MyMaps et fiche-conseil sont lisibles, cohérents avec les données traitées et adaptés au public visé. | -- / - / + / ++ |

</div>
