# 🦋 La biodiversité autour de nous

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences Pix</span>
  <span title="Mener une recherche et une veille d'information">CRCN 1.1</span>
  <span title="Gérer des données">CRCN 1.2</span>
  <span title="Traiter des données">CRCN 1.3</span>
  <span title="Partager et publier">CRCN 2.2</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème biodiversité</p>

<p class="zt-lede">Quelles espèces vivent dans nos communes ? — Données réelles INPN (MNHN), Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (45 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · Excel · Google MyMaps</span>
</div>

## Mise en situation

Un **accueil de loisirs** de Loudéac prépare un cycle d'animations nature pour les enfants pendant les vacances. L'animatrice veut construire ses activités à partir des espèces réellement présentes autour de l'établissement, et non d'espèces génériques trouvées dans un livre.

L'**INPN (Inventaire National du Patrimoine Naturel)**, porté par le Muséum national d'Histoire naturelle, recense les observations d'espèces sur tout le territoire français, commune par commune. On y trouve en moyenne environ 250 espèces recensées par commune, dont certaines protégées ou menacées.

**Ton rôle :** tu es agent de l'accueil de loisirs. L'animatrice te demande de constituer, à partir des données de l'INPN, un inventaire chiffré des espèces des communes du territoire et de lui remettre une synthèse avec carte pour bâtir ses animations.

!!! question "Problématique"
    « Quelles espèces sont recensées dans les communes de Loudéac Communauté – Bretagne Centre, et comment présenter cet inventaire pour construire des animations nature adaptées au territoire ? »

## Objectifs

- Analyser la demande de l'animatrice et reformuler la problématique avec ses propres mots
- Extraire et structurer des données d'observation à partir d'un outil de consultation en ligne
- Traiter les données avec NB.SI, NB.SI.ENS, mise en forme conditionnelle et tableau croisé dynamique
- Cartographier les communes et leur richesse en espèces avec Google MyMaps
- Rédiger une synthèse exploitable par l'animatrice pour construire ses activités

!!! abstract "Source de données"
    **Jeu de données :** INPN — Données d'observation et de suivi sur les espèces (consultation par commune)
    **Producteur :** Muséum national d'Histoire naturelle (MNHN) / OFB — INPN, via data.gouv.fr
    **URL :** [data.gouv.fr — INPN, données d'observation et de suivi sur les espèces](https://www.data.gouv.fr/datasets/inpn-donnees-dobservation-et-de-suivi-sur-les-especes)
    **Format :** Consultation par commune sur inpn.mnhn.fr (listes d'espèces) + jeu de données national sur data.gouv.fr · **Licence :** Licence Ouverte / Open Licence (vérifier sur la fiche du jeu de données)
    ⚠️ **Panne en cours (vérifiée le 21/07/2026)** : suite à une cyberattaque contre les serveurs du MNHN, inpn.mnhn.fr est inaccessible pour une durée indéterminée ; la fiche data.gouv.fr du jeu de données le confirme et renvoie vers une page de téléchargement temporaire sur patrinat.fr, elle aussi injoignable au moment de la vérification. À revérifier avant de programmer cette activité — l'ensemble du travail à faire en dépend.
    **Particularité à nettoyer :** avertissement méthodologique important — contrairement aux autres activités de l'année, l'INPN ne propose pas un simple CSV « une ligne par commune » directement téléchargeable : les listes s'obtiennent commune par commune via l'outil de consultation en ligne. Le tableau de travail est donc **construit à la main** par la classe (une ligne par commune, saisie répartie entre les élèves), ce qui introduit un risque d'erreur de saisie à contrôler. Le nombre d'espèces recensées dépend aussi de la **pression d'observation** : une commune très visitée paraît plus riche qu'une commune peu prospectée — ce biais doit être signalé dans la synthèse.

## Travail à faire

### A — Analyse du contexte et de la problématique

**Comprendre la demande, collecter et structurer les données**

1. Reformuler en 2-3 phrases la demande de l'animatrice : pour qui, pour quoi faire, et pourquoi des données locales valent mieux qu'un livre généraliste ? Identifier le phénomène étudié et le territoire.
2. Ouvrir la fiche du jeu de données INPN sur data.gouv.fr et relever : le producteur, la licence, la date de mise à jour. Repérer également l'outil de consultation par commune sur inpn.mnhn.fr.
3. Consulter sur l'INPN la fiche d'**une commune attribuée par l'enseignant** et relever : nombre total d'espèces recensées, nombre d'espèces protégées, nombre d'espèces menacées, et 3 espèces facilement observables.
4. Construire dans Excel le **tableau de travail commun** (une ligne par commune de Loudéac Communauté – Bretagne Centre, liste officielle en Ressources et outils) avec les colonnes : commune, code postal, nombre total d'espèces, espèces protégées, espèces menacées. Saisir la ligne de sa commune, puis mettre en commun les lignes de la classe.
5. Nettoyer et contrôler le tableau : vérifier qu'aucune commune n'est en double, qu'aucune ligne n'est vide, que toutes les colonnes de nombres sont bien au format nombre (et non texte), et corriger les saisies aberrantes en revenant à la fiche INPN.
6. Écrire en une phrase le **biais de pression d'observation** : pourquoi un nombre d'espèces plus élevé ne signifie pas forcément que la commune est plus riche en biodiversité ?

### B — Traitement des données adapté au contexte et à la problématique étudiés

**Compter, comparer, croiser les données**

1. Calculer le nombre total d'espèces recensées sur l'ensemble du territoire avec `=SOMME()`, et la moyenne par commune avec `=MOYENNE()`.
2. Compter avec `=NB.SI()` le nombre de communes dépassant un seuil que tu choisis et justifies (par exemple plus de 250 espèces recensées).
3. Compter avec `=NB.SI.ENS()` les communes répondant à deux critères simultanés (par exemple : plus de 250 espèces *et* au moins une espèce menacée).
4. Ajouter une colonne calculée « part d'espèces protégées » (espèces protégées ÷ total, format pourcentage), puis appliquer une **mise en forme conditionnelle** en nuances de couleur pour visualiser d'un coup d'œil les communes les plus concernées.
5. Construire un **tableau croisé dynamique** à partir du tableau : communes en lignes, nombre d'espèces en valeurs, tri décroissant ; puis regrouper les communes par tranches (Regrouper : moins de 150, 150-250, plus de 250 espèces) pour obtenir une répartition.

!!! tip "Astuce"
    Si une colonne de nombres refuse de se calculer, c'est presque toujours qu'elle est au format texte après saisie ou copier-coller. Sélectionne la colonne, puis Données → Convertir, ou vérifie l'alignement : un nombre est aligné à droite, un texte à gauche.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Représenter et transmettre à l'animatrice**

1. Créer depuis le TCD un **graphique en barres** « Nombre d'espèces recensées par commune » complet : titre, axes légendés, source citée (INPN – MNHN, année de consultation). Justifier en une phrase le choix du type de graphique.
2. Préparer la **carte** : créer depuis le tableau un fichier CSV (commune, code postal, nombre d'espèces, espèces protégées), le convertir en KML avec le convertisseur, puis l'importer dans **Google MyMaps**. Titrer la carte et renseigner les pop-ups avec le nombre d'espèces.
3. Rédiger la **synthèse pour l'animatrice** (8-10 lignes) : nombre d'espèces sur le territoire, communes les plus riches, espèces protégées à connaître, **rappel du biais de pression d'observation**, et une proposition concrète de sortie nature (commune, espèces à chercher). Insérer le graphique et le lien de la carte.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta synthèse dans ton bloc-notes **OneNote**, section *C1.2 — Biodiversité*.

## Ressources et outils

- [INPN — Données d'observation et de suivi sur les espèces](https://www.data.gouv.fr/datasets/inpn-donnees-dobservation-et-de-suivi-sur-les-especes){ target="_blank" rel="noopener" } — fiche data.gouv.fr du jeu de données INPN. La consultation par commune se fait sur inpn.mnhn.fr (recherche par collectivité).
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — page officielle de l'intercommunalité : liste des 38 communes membres du territoire.
- [Convertisseur CSV → KML](https://scuttemery.fr/converter){ target="_blank" rel="noopener" } — pour transformer le fichier de points avant l'import dans MyMaps.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte finale.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande de l'animatrice est reformulée correctement ; la source INPN est identifiée (producteur, licence, date) ; la fiche commune est correctement lue ; le tableau de travail est structuré, contrôlé (doublons, lignes vides, formats) ; le biais de pression d'observation est énoncé avec ses mots. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiés | SOMME, MOYENNE, NB.SI et NB.SI.ENS renvoient des résultats exacts ; le seuil choisi est justifié ; la colonne calculée en pourcentage est correcte ; la mise en forme conditionnelle est fonctionnelle ; le TCD est trié et le regroupement par tranches est correct. | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Le graphique est complet (titre, axes, source) et son choix justifié ; la carte MyMaps est publiée et lisible ; la synthèse est chiffrée, rappelle explicitement la limite de pression d'observation, et se conclut par une proposition de sortie exploitable par l'animatrice. | -- / - / + / ++ |
