# 🏠 Repérer les foyers exposés à la précarité énergétique

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences Pix</span>
  <span title="Traiter des données">CRCN 1.3</span>
  <span title="Partager et publier">CRCN 2.2</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème énergie</p>

<p class="zt-lede">Consommation électrique par commune sur le territoire de Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (45 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · Excel · Google MyMaps</span>
</div>

**Parcours Pix associé**

- Bac Pro — Tronc commun MG1

## Mise en situation

Tu es agent du service Habitat-Énergie de **Loudéac Communauté – Bretagne Centre (LCBC)**, qui prépare une campagne de sensibilisation à la précarité énergétique auprès des ménages les plus fragiles du territoire — notamment les personnes âgées vivant seules dans des logements ruraux anciens et mal isolés.

Selon l'Observatoire National de la Précarité Énergétique (ONPE), un ménage est en précarité énergétique lorsqu'il consacre plus de **8 % de son revenu** aux dépenses d'énergie du logement ; en France, cela concerne environ un ménage sur dix, avec une surexposition des zones rurales et des logements anciens.

**Ton rôle :** à partir des données ouvertes de consommation électrique par commune, identifier les communes de LCBC où la consommation résidentielle moyenne par point de livraison est la plus élevée — un indicateur souvent lié à des logements grands, anciens ou mal isolés — pour cibler la campagne et orienter les habitants vers les relais de proximité.

!!! question "Problématique"
    « Comment identifier, à partir des données ouvertes de consommation électrique, les communes de Loudéac Communauté – Bretagne Centre les plus exposées à un risque de précarité énergétique, afin d'y cibler une action de sensibilisation ? »

## Objectifs

- Reformuler avec ses propres mots le lien entre logement ancien/mal isolé, consommation d'électricité et précarité énergétique
- Nettoyer et sélectionner un sous-ensemble exploitable d'un jeu de données étendu, en gérant les valeurs masquées
- Trier, filtrer et calculer des indicateurs avec des formules Excel (SI, NB.SI, MOYENNE.SI.ENS)
- Réaliser une carte des relais de proximité sur le territoire de LCBC
- Produire un support de communication professionnel adapté à un public non expert (travailleurs sociaux, aides à domicile)

!!! abstract "Source de données"
    **Jeu de données :** Consommation annuelle d'électricité et gaz par commune
    **Producteur :** Agence ORE (gestionnaires de réseaux électricité et gaz, dont Enedis), relayé sur data.gouv.fr
    **URL :** [data.gouv.fr — Consommation annuelle d'électricité et gaz par commune](https://www.data.gouv.fr/datasets/consommation-annuelle-delectricite-et-gaz-par-commune)
    **Format :** CSV (fichier national volumineux, > 800 Mo) — utiliser le filtre en ligne du portail Agence ORE (lien "Voir la source originale" sur la fiche data.gouv.fr) pour exporter uniquement les communes des Côtes-d'Armor avant tout traitement, plutôt que de télécharger le fichier national complet. · **Licence :** Licence Ouverte / Étalab
    **Particularité à nettoyer :** pour préserver l'anonymat, les gestionnaires masquent la valeur de consommation dans les communes ayant trop peu de points de livraison (« secret statistique ») : la cellule apparaît vide ou marquée « NC ». Ne jamais remplacer ces cellules par 0 — cela fausserait toute moyenne.

## Travail à faire

### A — Analyse du contexte et de la problématique

**Récupérer, comprendre et nettoyer les données**

1. Sur le portail du diffuseur (lien en Ressources et outils), utiliser le filtre en ligne pour n'exporter que les communes du département des Côtes-d'Armor (22), puis ouvrir l'export dans Excel.
2. Reformuler avec ses propres mots le lien entre précarité énergétique et publics fragiles suivis en SAPAT (2-3 phrases).
3. Filtrer ensuite sur les communes de **Loudéac Communauté – Bretagne Centre** (liste officielle en Ressources et outils) et sur le secteur « Résidentiel ».
4. Ajouter une colonne « Donnée disponible » (Oui/Non) pour repérer les cellules masquées (« NC », vide) sans les remplacer par 0.
5. Copier-coller (valeurs) le résultat filtré dans une nouvelle feuille nommée *Sous-ensemble de travail* : c'est elle qui sert de base à toute la suite.

### B — Traitement des données adapté au contexte et à la problématique étudiés

**Calculer et classer un indicateur de vulnérabilité**

1. Ajouter une colonne « Consommation moyenne par point de livraison (MWh) » = Consommation totale ÷ Nombre de points de livraison.
2. Trier le tableau par ordre décroissant de cet indicateur et calculer sa médiane avec `MEDIANE()`.
3. Calculer avec `NB.SI()` le nombre de communes dépassant cette médiane, et avec `MOYENNE.SI.ENS()` la moyenne de l'indicateur en excluant les communes marquées « Donnée disponible = Non ».
4. Ajouter une colonne « Niveau de vigilance » avec un `SI` imbriqué : « Fort » si l'indicateur > médiane × 1,2, « Moyen » si entre la médiane et ce seuil, « Faible » sinon.
5. Appliquer une mise en forme conditionnelle (dégradé) sur la colonne de l'indicateur, puis construire un **tableau croisé dynamique** (Commune en ligne, moyenne de l'indicateur en valeurs, tri décroissant).

!!! tip "Astuce"
    Vérifie que le nombre de points de livraison n'est jamais à 0 avant de diviser, sinon Excel renvoie une erreur `#DIV/0!`.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Cartographier, représenter et communiquer**

1. Recenser en ligne les permanences France Rénov' et points conseil budget/CCAS présents dans les 3-4 communes classées « Fort » (le jeu de données ne dit pas où orienter les habitants).
2. Construire un fichier CSV (colonnes : Nom de la structure, Commune, Adresse, Latitude, Longitude), le convertir en KML via le convertisseur, puis l'importer dans Google MyMaps.
3. Créer un graphique (histogramme) des 5 communes ayant l'indicateur le plus élevé, avec titre, légende et unité.
4. Rédiger une fiche « Repérer et orienter » (10-15 lignes) : communes prioritaires, 2-3 repères simples, graphique, lien vers la carte — dans un langage clair, sans jargon, utilisable directement par un travailleur social pressé.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta fiche dans ton bloc-notes **OneNote**, section *C1.2 — Énergie*.

## Ressources et outils

- [Consommation annuelle d'électricité et gaz par commune — data.gouv.fr](https://www.data.gouv.fr/datasets/consommation-annuelle-delectricite-et-gaz-par-commune){ target="_blank" rel="noopener" } — fiche officielle : description, licence, lien vers le portail Agence ORE pour filtrer et exporter par département/commune avant téléchargement.
- **ONPE — précarité énergétique** : définition officielle et chiffres de cadrage (recherche : « ONPE précarité énergétique définition »)
- [Convertisseur CSV → KML](https://scuttemery.fr/converter){ target="_blank" rel="noopener" } — pour préparer l'import dans MyMaps.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte des relais de proximité.
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — page officielle de l'intercommunalité : liste des 38 communes membres du territoire et contacts du service Habitat.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | Le lien entre logement, consommation d'électricité et précarité énergétique est reformulé avec ses propres mots ; la problématique est resituée sur LCBC. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiés | Le sous-ensemble est nettoyé (secret statistique géré) ; NB.SI, MOYENNE.SI.ENS, SI et le TCD sont fonctionnels et pertinents. | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Graphique, carte MyMaps et fiche-conseil sont lisibles, cohérents avec les données traitées et adaptés au public visé. | -- / - / + / ++ |

!!! note "Capacité visée"
    C1.2 — Étudier un phénomène social ou professionnel à l'aide de données notamment en nombre : collecte, stockage et organisation des données en toute sécurité ; traitement analytique au tableur ; représentation et communication.
