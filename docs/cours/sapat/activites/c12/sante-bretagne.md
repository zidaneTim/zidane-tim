# 🏥 Vieillir en Bretagne Centre

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème santé</p>

<p class="zt-lede">Quels établissements pour accueillir les personnes âgées ? — Données réelles FINESS (DREES), Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (45 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · CRCN 1.3 · CRCN 2.2 · Excel · Google MyMaps</span>
</div>

## Mise en situation

Le **CLIC (Centre Local d'Information et de Coordination gérontologique)** de Loudéac reçoit chaque semaine des familles qui cherchent une place en établissement pour un parent âgé. La coordinatrice veut construire un document d'information clair : combien d'établissements existent sur le territoire, de quels types (EHPAD, résidence autonomie, accueil de jour, services à domicile), et où sont-ils situés ?

Le fichier **FINESS** (Fichier National des Établissements Sanitaires et Sociaux), tenu par la DREES et les ARS, recense officiellement tous les établissements sanitaires, sociaux et médico-sociaux ouverts en France. Il est publié en open data sur data.gouv.fr.

**Ton rôle :** tu es agent du CLIC de Loudéac. La coordinatrice te demande d'extraire les données du territoire, de les traiter et de lui remettre un état des lieux chiffré avec carte, utilisable en rendez-vous avec les familles.

!!! question "Problématique"
    « Quelle est l'offre d'établissements et de services pour personnes âgées sur le territoire de Loudéac Communauté – Bretagne Centre, et comment la présenter pour informer les familles ? »

## Objectifs

- Analyser la demande du CLIC et reformuler la problématique avec ses propres mots
- Construire un sous-ensemble de travail propre à partir du fichier national FINESS — *CRCN 1.2*
- Traiter les données avec NB.SI, NB.SI.ENS, mise en forme conditionnelle et tableau croisé dynamique — *CRCN 1.3*
- Cartographier les établissements du territoire avec Google MyMaps — *CRCN 2.2*
- Rédiger une synthèse chiffrée adaptée à la destinataire (coordinatrice du CLIC)

!!! abstract "Source de données"
    **Jeu de données :** FINESS — Extraction du fichier des établissements
    **Producteur :** DREES / ARS — Ministère chargé de la Santé, via data.gouv.fr
    **URL :** [data.gouv.fr — FINESS, extraction du fichier des établissements](https://www.data.gouv.fr/datasets/finess-extraction-du-fichier-des-etablissements/)
    **Format :** CSV (fichier national volumineux) · **Licence :** Licence Ouverte / Open Licence
    **Particularité à nettoyer :** fichier national de plusieurs centaines de milliers de lignes — un sous-ensemble départemental (Côtes-d'Armor) doit être construit avant tout traitement. Les catégories d'établissement sont codées (code + libellé) : il faut repérer celles qui relèvent des personnes âgées. Des doublons de numéro FINESS peuvent subsister et les colonnes d'adresse comportent des cellules vides.

## Travail à faire

### A — Analyse du contexte et de la problématique

**Comprendre la demande, récupérer et nettoyer les données**

1. Reformuler en 2-3 phrases la demande de la coordinatrice du CLIC : qui a besoin de quoi, pour quoi faire ? Identifier le phénomène étudié (offre d'accueil des personnes âgées) et le territoire concerné.
2. Ouvrir la page du jeu de données FINESS sur data.gouv.fr et relever : le producteur, la licence, la date de dernière mise à jour, la fréquence annoncée. Rédiger une phrase justifiant que ce fichier ne contient **aucune donnée personnelle de patient ou de résident** (uniquement des établissements).
3. Télécharger le fichier CSV et l'importer dans Excel (Données → À partir d'un fichier texte/CSV, séparateur adapté, encodage UTF-8). Noter le nombre total de lignes du fichier national.
4. Construire le **sous-ensemble de travail** : filtrer sur le département des Côtes-d'Armor (code postal commençant par « 22 »), puis copier-coller *en valeurs* dans un nouvel onglet nommé `Donnees-22`.
5. Nettoyer l'onglet `Donnees-22` : conserver uniquement les colonnes utiles (raison sociale, commune, code postal, catégorie d'établissement, adresse), supprimer les doublons (Données → Supprimer les doublons, sur le numéro FINESS), repérer et signaler les cellules vides d'adresse.
6. À partir de la liste officielle des communes de Loudéac Communauté – Bretagne Centre (lien en Ressources et outils), créer un onglet `Donnees-LCBC` ne contenant que les établissements du territoire, puis n'y conserver que les catégories relevant des personnes âgées (EHPAD, résidence autonomie, accueil de jour, SSIAD, SAAD).

### B — Traitement des données adapté au contexte et à la problématique étudiés

**Compter, croiser, faire parler les données**

1. Compter le nombre total d'établissements « personnes âgées » du territoire avec `=NBVAL()`, puis le nombre situé sur la commune de Loudéac avec `=NB.SI()`.
2. Compter avec `=NB.SI.ENS()` les établissements répondant à deux critères simultanés (par exemple : catégorie contenant « EHPAD » *et* commune donnée).
3. Appliquer une **mise en forme conditionnelle** sur la colonne des effectifs par commune pour faire ressortir en couleur les communes qui n'accueillent aucun établissement (règle sur valeur égale à zéro).
4. Construire un **tableau croisé dynamique** depuis `Donnees-LCBC` : nombre d'établissements par commune (lignes = commune, valeurs = nombre), trié du plus grand au plus petit.
5. Enrichir le TCD d'un second axe : répartition par catégorie d'établissement (EHPAD / résidence autonomie / accueil de jour / services à domicile) en colonnes ou en filtre de rapport.

!!! tip "Astuce"
    Si la colonne catégorie contient un code suivi d'un libellé, utilise un critère avec joker : `"*EHPAD*"` compte toutes les cellules contenant le mot, quelle que soit sa position dans le texte.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Représenter et transmettre à la coordinatrice du CLIC**

1. Créer depuis le TCD un **graphique en barres** « Nombre d'établissements pour personnes âgées par commune » complet : titre, axes légendés, source citée (FINESS – DREES via data.gouv.fr, avec l'année de mise à jour). Justifier en une phrase pourquoi la barre est plus adaptée ici qu'un graphique circulaire.
2. Préparer la **carte** : créer depuis `Donnees-LCBC` un petit fichier CSV (raison sociale, adresse, commune, code postal), le convertir en KML avec le convertisseur, puis l'importer dans **Google MyMaps**. Différencier les repères par catégorie d'établissement et titrer la carte.
3. Rédiger la **synthèse pour la coordinatrice** (8-10 lignes) : nombre total d'établissements, communes les mieux dotées, communes sans aucune structure, catégories dominantes, et une recommandation concrète pour orienter les familles. Insérer le graphique et le lien de la carte.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta synthèse dans ton bloc-notes **OneNote**, section *C1.2 — Santé*.

## Ressources et outils

- [Jeu de données — FINESS Extraction du fichier des établissements](https://www.data.gouv.fr/datasets/finess-extraction-du-fichier-des-etablissements/){ target="_blank" rel="noopener" } — page officielle data.gouv.fr : description, licence, téléchargement du CSV national (DREES / ARS).
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — page officielle de l'intercommunalité : liste des 38 communes membres du territoire.
- [Convertisseur CSV → KML](https://scuttemery.fr/converter){ target="_blank" rel="noopener" } — pour transformer le fichier de points avant l'import dans MyMaps.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte finale.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande du CLIC est reformulée correctement ; la source FINESS est identifiée (producteur, licence, date, fréquence) ; l'absence de données personnelles est justifiée ; le sous-ensemble Côtes-d'Armor puis LCBC est construit et nettoyé (colonnes, doublons FINESS, cellules vides, filtrage des catégories personnes âgées). | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiés | Les formules NB.SI et NB.SI.ENS renvoient des résultats exacts ; la mise en forme conditionnelle fait ressortir les communes sans structure ; le TCD par commune est correct, trié et croisé avec la catégorie ; les traitements répondent à la problématique (offre d'accueil). | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Le graphique est complet (titre, axes, source) et son choix justifié ; la carte MyMaps est publiée, lisible, avec repères différenciés par catégorie ; la synthèse est chiffrée, adaptée à la coordinatrice et se conclut par une recommandation exploitable en rendez-vous famille. | -- / - / + / ++ |
