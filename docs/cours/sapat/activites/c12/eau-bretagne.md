# 💧 L'eau du robinet en Bretagne Centre

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème eau</p>

<p class="zt-lede">Que disent les analyses sanitaires ? — Données réelles du contrôle sanitaire (ARS), Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (45 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · CRCN 1.3 · CRCN 4.2 · Excel · Google MyMaps</span>
</div>

## Mise en situation

Dans un **EHPAD de Loudéac**, plusieurs familles de résidents s'interrogent sur la qualité de l'eau du robinet servie aux repas. La direction souhaite répondre avec des éléments factuels plutôt qu'avec des impressions, et préparer une note d'information affichée dans le hall.

Les **Agences Régionales de Santé** contrôlent l'eau distribuée : plus de 300 000 prélèvements et environ 12 millions d'analyses par an en France. Les résultats sont publiés commune par commune en open data sur data.gouv.fr.

**Ton rôle :** tu es agent de l'EHPAD, chargé par la direction d'étudier les résultats du contrôle sanitaire de l'eau sur le territoire et de produire une note d'information claire pour les familles.

!!! question "Problématique"
    « Que révèlent les analyses du contrôle sanitaire sur la qualité de l'eau distribuée dans les communes de Loudéac Communauté – Bretagne Centre, et comment l'expliquer aux familles de résidents ? »

## Objectifs

- Analyser la demande de la direction et reformuler la problématique avec ses propres mots
- Construire un sous-ensemble de travail propre à partir d'un fichier de résultats d'analyses volumineux — *CRCN 1.2*
- Traiter les données avec NB.SI, NB.SI.ENS, MOYENNE.SI, mise en forme conditionnelle et tableau croisé dynamique — *CRCN 1.3*
- Cartographier les communes et leurs résultats avec Google MyMaps — *CRCN 2.2*
- Rédiger une note d'information factuelle et rassurante, sans déformer les données — *CRCN 4.2*

!!! abstract "Source de données"
    **Jeu de données :** Résultats du contrôle sanitaire de l'eau distribuée commune par commune
    **Producteur :** Ministère chargé de la Santé / ARS — via data.gouv.fr
    **URL :** [data.gouv.fr — Résultats du contrôle sanitaire de l'eau](https://www.data.gouv.fr/datasets/resultats-du-controle-sanitaire-de-leau-distribuee-commune-par-commune)
    **Format :** CSV (fichiers annuels, un fichier par année depuis 2016) · **Licence :** Licence Ouverte / Open Licence
    **Particularité à nettoyer :** le jeu est découpé en plusieurs fichiers (prélèvements, résultats d'analyses, lien communes ↔ unités de distribution) : il faut identifier le bon fichier avant de commencer. Les colonnes de résultat mélangent valeurs numériques et mentions textuelles (« < seuil de quantification ») : ces cellules doivent être traitées explicitement et non supprimées sans justification. Le fichier national comporte plusieurs centaines de milliers de lignes.

## Travail à faire

### A — Analyse du contexte et de la problématique

**Comprendre la demande, récupérer et nettoyer les données**

1. Reformuler en 2-3 phrases la demande de la direction de l'EHPAD : qui s'interroge, sur quoi, et à quoi servira ta production ? Identifier le phénomène étudié et le territoire concerné.
2. Ouvrir la page du jeu de données sur data.gouv.fr, repérer les différents fichiers proposés et **choisir celui qui contient les résultats d'analyses**. Relever producteur, licence, année couverte et fréquence de mise à jour. Justifier en une phrase que ces données ne sont pas des données personnelles.
3. Télécharger le fichier de l'année la plus récente et l'importer dans Excel (séparateur adapté, encodage UTF-8). Noter le nombre total de lignes.
4. Construire le **sous-ensemble de travail** : filtrer sur les Côtes-d'Armor (code département 22 ou code INSEE commençant par 22), copier-coller *en valeurs* dans un onglet `Donnees-22`.
5. Nettoyer l'onglet : conserver les colonnes utiles (commune, code INSEE, paramètre analysé, valeur, unité, conclusion sanitaire, date de prélèvement), convertir la colonne date au bon format, et traiter explicitement les cellules « < seuil de quantification » (les repérer et écrire en une phrase la règle que tu appliques : les compter comme conformes, ou les exclure du calcul de moyenne).
6. À partir de la liste des communes de Loudéac Communauté – Bretagne Centre **fournie par l'enseignant**, créer un onglet `Donnees-LCBC` limité au territoire.

### B — Traitement des données adapté au contexte et à la problématique étudiés

**Compter, mesurer, croiser les résultats**

1. Compter le nombre total de prélèvements sur le territoire avec `=NBVAL()`, puis le nombre de prélèvements sur une commune donnée avec `=NB.SI()`.
2. Compter avec `=NB.SI.ENS()` les analyses conformes puis non conformes pour une commune donnée (deux critères : commune *et* conclusion sanitaire).
3. Calculer avec `=MOYENNE.SI()` la valeur moyenne d'un paramètre précis (par exemple les nitrates) sur le territoire, en précisant l'unité de mesure.
4. Appliquer une **mise en forme conditionnelle** sur la colonne conclusion sanitaire : vert pour les analyses conformes, rouge pour les non conformes.
5. Construire un **tableau croisé dynamique** depuis `Donnees-LCBC` : nombre d'analyses par commune (lignes) croisé avec la conclusion sanitaire (colonnes), puis afficher les valeurs en **pourcentage du total de la ligne** pour comparer des communes de tailles différentes.

!!! tip "Astuce"
    Compter des analyses non conformes en valeur brute est trompeur : une grande commune a mécaniquement plus de prélèvements. C'est pour cela que le TCD doit être affiché en pourcentage (Paramètres des champs de valeurs → Afficher les valeurs → % du total de la ligne).

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Représenter et informer les familles**

1. Créer depuis le TCD un **graphique en barres empilées 100 %** « Part d'analyses conformes par commune », complet : titre, axes légendés, source citée (contrôle sanitaire ARS via data.gouv.fr, année). Justifier en une phrase pourquoi les barres empilées 100 % conviennent mieux ici que des barres en valeurs brutes.
2. Préparer la **carte** : créer depuis `Donnees-LCBC` un fichier CSV (commune, code postal, nombre d'analyses, part de conformité), le convertir en KML avec le convertisseur, puis l'importer dans **Google MyMaps**. Titrer la carte et renseigner les pop-ups.
3. Rédiger la **note d'information pour les familles** (8-10 lignes, ton factuel et accessible) : nombre d'analyses réalisées, part de conformité, paramètres surveillés, ce que signifie concrètement une non-conformité, et qui contacter pour en savoir plus. Attention : ne pas affirmer plus que ce que les données montrent. Insérer le graphique et le lien de la carte.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta note d'information dans ton bloc-notes **OneNote**, section *C1.2 — Eau*.

## Ressources et outils

- [Jeu de données — Contrôle sanitaire de l'eau distribuée](https://www.data.gouv.fr/datasets/resultats-du-controle-sanitaire-de-leau-distribuee-commune-par-commune){ target="_blank" rel="noopener" } — page officielle data.gouv.fr : prélèvements et résultats d'analyses validés par les ARS, commune par commune.
- [Convertisseur CSV → KML](https://scuttemery.fr/converter){ target="_blank" rel="noopener" } — pour transformer le fichier de points avant l'import dans MyMaps.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte finale.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande de l'EHPAD est reformulée correctement ; le bon fichier est identifié parmi ceux proposés ; producteur, licence et année sont relevés ; le sous-ensemble Côtes-d'Armor puis LCBC est construit ; les cellules « < seuil de quantification » sont traitées avec une règle explicite et justifiée. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiés | NB.SI, NB.SI.ENS et MOYENNE.SI renvoient des résultats exacts avec unité précisée ; la mise en forme conditionnelle distingue conformes et non conformes ; le TCD croise commune et conclusion sanitaire et est bien affiché en pourcentage du total de la ligne. | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Le graphique en barres empilées 100 % est complet (titre, axes, source) et son choix justifié ; la carte MyMaps est publiée et lisible ; la note d'information est factuelle, accessible aux familles, et n'affirme rien qui dépasse ce que montrent les données. | -- / - / + / ++ |
