# 🥕 Manger local en Bretagne Centre

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème alimentation</p>

<p class="zt-lede">Où sont les producteurs bio du territoire ? — Données réelles de l'Agence Bio, Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (45 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · CRCN 1.3 · CRCN 3.3 · Excel · Google MyMaps</span>
</div>

## Mise en situation

L'épicerie sociale et solidaire portée par le **CCAS de Loudéac** veut proposer davantage de produits frais et locaux à ses bénéficiaires. Avant de contacter des fournisseurs, la responsable a besoin d'y voir clair : **combien de professionnels engagés en agriculture biologique** existe-t-il sur le territoire de Loudéac Communauté – Bretagne Centre, que produisent-ils, et où sont-ils installés ?

Bonne nouvelle : l'**Agence Bio** (groupement d'intérêt public sous tutelle du ministère de l'Agriculture) publie en open data la liste officielle de tous les opérateurs engagés en bio en France, avec leur commune, leurs activités et leur date d'engagement.

**Ton rôle :** tu es stagiaire au CCAS de Loudéac. La responsable de l'épicerie sociale te confie l'étude : extraire les données du territoire, les traiter, et lui remettre une synthèse chiffrée avec carte pour préparer sa recherche de fournisseurs.

!!! question "Problématique"
    « Quelle est l'offre de producteurs et transformateurs bio sur le territoire de Loudéac Communauté – Bretagne Centre, et comment la présenter pour aider l'épicerie sociale à s'approvisionner en local ? »

## Objectifs

- Analyser le contexte de l'approvisionnement local et reformuler la problématique avec ses propres mots
- Construire un sous-ensemble de travail propre à partir d'un fichier open data national volumineux — *CRCN 1.2*
- Traiter les données avec des formules Excel (NB.SI, NB.SI.ENS), une mise en forme conditionnelle et un tableau croisé dynamique — *CRCN 1.3*
- Cartographier les opérateurs bio du territoire avec Google MyMaps — *CRCN 2.2*
- Rédiger une synthèse chiffrée adaptée à la destinataire (responsable de l'épicerie sociale)

!!! abstract "Source de données"
    **Jeu de données :** Professionnels engagés en BIO (liste officielle des opérateurs notifiés)
    **Producteur :** Agence Bio — via data.gouv.fr (dernière mise à jour : juin 2026)
    **URL :** [data.gouv.fr — Professionnels engagés en bio](https://www.data.gouv.fr/datasets/professionnels-engages-en-bio)
    **Format :** CSV (~8 Mo, fichier national) · **Licence :** Licence Ouverte / Open Licence 2.0
    **Particularité à nettoyer :** fichier national de plusieurs dizaines de milliers de lignes — un sous-ensemble départemental (Côtes-d'Armor) doit être construit avant tout traitement ; certaines cellules regroupent plusieurs activités séparées par des points-virgules ; des doublons de SIRET sont possibles.

## Travail à faire

### A — Analyse du contexte et de la problématique

**Comprendre la demande, récupérer et nettoyer les données**

1. Reformuler en 2-3 phrases la demande de la responsable du CCAS : qui a besoin de quoi, pour quoi faire ? Identifier le phénomène étudié et le territoire concerné.
2. Ouvrir la page du jeu de données sur data.gouv.fr, lire la description et relever : le producteur des données, la licence, la date de dernière mise à jour. Vérifier que le fichier ne contient **aucune donnée à caractère personnel** (uniquement des données d'entreprises : SIRET, dénomination, commune — pas de RGPD bloquant, à justifier par écrit en une phrase).
3. Télécharger le fichier CSV et l'ouvrir dans Excel (import avec séparateur adapté). Constater le nombre total de lignes du fichier national.
4. Construire le **sous-ensemble de travail** : filtrer sur le département des Côtes-d'Armor (codes postaux commençant par « 22 »), copier-coller *en valeurs* le résultat dans un nouvel onglet nommé `Donnees-22`.
5. Nettoyer l'onglet `Donnees-22` : supprimer les colonnes inutiles à l'étude (conserver au minimum dénomination, commune, code postal, activités, date d'engagement), supprimer les doublons éventuels (Données → Supprimer les doublons, sur la colonne SIRET), vérifier le format de la colonne date.
6. À l'aide de la liste des communes de Loudéac Communauté – Bretagne Centre **fournie par l'enseignant**, créer un second onglet `Donnees-LCBC` ne contenant que les opérateurs du territoire.

### B — Traitement des données adapté au contexte et à la problématique étudiés

**Compter, croiser, faire parler les données**

1. Compter le nombre total d'opérateurs bio du territoire avec `=NBVAL()` et le nombre d'opérateurs de la commune de Loudéac avec `=NB.SI()`.
2. Compter avec `=NB.SI.ENS()` les opérateurs répondant à deux critères à la fois (par exemple : commune donnée *et* activité contenant « Production »).
3. Appliquer une **mise en forme conditionnelle** sur la colonne date d'engagement pour faire ressortir les opérateurs engagés depuis le plus longtemps (règle « valeurs les plus anciennes »).
4. Construire un **tableau croisé dynamique** à partir de l'onglet `Donnees-LCBC` : nombre d'opérateurs par commune (lignes = commune, valeurs = nombre). Trier du plus grand au plus petit.
5. Ajouter au TCD un second niveau d'analyse : répartition par type d'activité (production, transformation, distribution) en filtre de rapport ou en colonnes.

!!! tip "Astuce"
    Si une cellule d'activités contient plusieurs valeurs séparées par des points-virgules, utilise un critère avec joker dans tes formules : `"*Production*"` compte toutes les cellules qui contiennent le mot, où qu'il soit placé.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Représenter et transmettre à la responsable du CCAS**

1. Créer à partir du TCD un **graphique en barres** « Nombre d'opérateurs bio par commune » complet : titre, axes légendés, source citée (Agence Bio via data.gouv.fr, année). Justifier en une phrase pourquoi le graphique en barres est adapté ici plutôt qu'un graphique circulaire.
2. Préparer la **carte** : créer à partir de l'onglet `Donnees-LCBC` un petit fichier CSV (dénomination, commune, code postal), le convertir en KML via le convertisseur, puis l'importer dans **Google MyMaps**. Personnaliser les repères et titrer la carte.
3. Rédiger la **synthèse pour la responsable de l'épicerie sociale** (8-10 lignes) : nombre d'opérateurs sur le territoire, communes les mieux pourvues, types d'activités dominants, et une recommandation concrète pour démarrer la recherche de fournisseurs. Insérer le graphique et le lien de la carte.

!!! tip "Où répondre ?"
    Dépose ton tableur, ton graphique, le lien de ta carte MyMaps et ta synthèse dans ton bloc-notes **OneNote**, section *C1.2 — Alimentation*.

## Ressources et outils

- [Jeu de données — Professionnels engagés en BIO](https://www.data.gouv.fr/datasets/professionnels-engages-en-bio){ target="_blank" rel="noopener" } — page officielle data.gouv.fr : description, licence, bouton de téléchargement du CSV national (Agence Bio).
- [Convertisseur CSV → KML](https://scuttemery.fr/converter){ target="_blank" rel="noopener" } — pour transformer le fichier de points avant l'import dans MyMaps.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte finale.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande du CCAS est reformulée correctement ; la source est identifiée (producteur, licence, date) ; l'absence de données personnelles est justifiée ; le sous-ensemble Côtes-d'Armor puis LCBC est construit et nettoyé (colonnes, doublons, formats). | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiés | Les formules NB.SI et NB.SI.ENS renvoient des résultats exacts ; la mise en forme conditionnelle est fonctionnelle ; le TCD par commune est correct, trié, et croisé avec le type d'activité ; les traitements répondent à la problématique (offre locale). | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Le graphique est complet (titre, axes, source) et son choix est justifié ; la carte MyMaps est publiée et lisible ; la synthèse est chiffrée, adaptée à la destinataire et se conclut par une recommandation exploitable. | -- / - / + / ++ |
