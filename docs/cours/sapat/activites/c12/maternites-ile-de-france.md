# 👶 Maternités en Île-de-France : une capacité en baisse ?

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences Pix</span>
  <span title="Mener une recherche et une veille d'information">CRCN 1.1</span>
  <span title="Traiter des données">CRCN 1.3</span>
  <span title="Partager et publier">CRCN 2.2</span>
  <span title="Protéger les données personnelles et la vie privée">CRCN 4.2</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème santé maternelle</p>

<p class="zt-lede">Évolution des capacités d'accueil des maternités en Île-de-France entre 2013 et 2023</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (45 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · Excel · Google MyMaps</span>
</div>

**Parcours Pix associé**

- Bac Pro — Tronc commun MG1

## Mise en situation

Tu travailles au service santé publique d'une municipalité d'Île-de-France. **Mme Le Goff**, enceinte de 7 mois et domiciliée au 78 rue de la Varenne à Paris, contacte le service : elle a entendu dire que le nombre de lits de maternité diminue en Île-de-France, et s'inquiète pour son accouchement.

**Ton rôle :** vérifier cette affirmation à partir de données publiques officielles, et informer Mme Le Goff avec des faits plutôt que des rumeurs.

!!! question "Problématique"
    « L'Île-de-France connaît-elle une réduction de ses capacités d'accueil en maternité entre 2013 et 2023, et quel est l'impact concret pour une future mère comme Mme Le Goff ? »

## Objectifs

- Rechercher et télécharger un jeu de données officiel sur data.gouv.fr, et distinguer les formats CSV et XLSX
- Définir donnée brute, donnée agrégée et métadonnée ; situer le rôle de la Loi Lemaire (2016) et du RGPD/CNIL dans l'ouverture des données publiques
- Extraire une information (le département) à partir d'un code postal avec `GAUCHE()`, et comparer deux années avec `SOMME()`, `MOYENNE()` et un taux de variation
- Construire un tableau et un graphique croisés dynamiques (TCD/GCD)
- Cartographier les maternités d'un territoire et déterminer celles accessibles dans un rayon donné (Google MyMaps + cercle KML)
- Produire une note de synthèse factuelle pour une destinataire non experte

!!! abstract "Source de données"
    **Jeu de données :** Liste des maternités de France depuis 2000
    **Producteur :** DREES (Direction de la recherche, des études, de l'évaluation et des statistiques), ministère chargé de la Santé, via data.gouv.fr
    **URL :** [data.gouv.fr — Liste des maternités de France depuis 2000](https://www.data.gouv.fr/datasets/liste-des-maternites-de-france-depuis-2000)
    **Format :** CSV et XLSX (fichier national, ~685 Ko, années 2000 puis 2008 à 2024) · **Licence :** Licence Ouverte 2.0
    **Colonnes réelles du fichier :** `ANNEE`, `NOM_MAT`, `TYPE` (1 / 2a / 2b / 3 — niveau de soins néonatals), `STATUT` (PUBLIC/PRIVÉ), `FI_ET`, `FI_EJ` (codes FINESS), `COM`, `NOMCOM`, `CPO` (code postal), `ADRESSE`, `LIT_OBS` (lits d'obstétrique), `SALTRAV` (salles de travail), `ACCTOT` (accouchements de l'année).
    **Particularités à connaître :** ⚠️ **il n'existe pas de colonne Région ni Département** — il faut le déduire du code postal (`CPO`, 2 premiers chiffres) ou du code commune (`COM`). Une même maternité apparaît sur plusieurs lignes, une par année où elle était active avec au moins un lit et un accouchement : ce n'est pas un doublon à supprimer. Pas de RGPD bloquant : ce sont des données d'établissements, aucune donnée personnelle de patiente.

## Travail à faire

### A — Analyse du contexte et de la problématique

**Rechercher, comprendre le cadre légal, préparer les données**

1. Rechercher « maternités en France » sur data.gouv.fr, télécharger le fichier aux formats CSV et XLSX, et noter en une phrase la différence entre les deux formats.
2. Reformuler avec ses propres mots la demande de Mme Le Goff et le phénomène étudié (2-3 phrases).
3. Définir donnée brute, donnée agrégée et métadonnée ; expliquer en 2-3 phrases en quoi la **Loi Lemaire** (Loi pour une République numérique, 2016) permet la publication de ce jeu de données, et ce que sont le **RGPD** et la **CNIL** — puis justifier pourquoi ce jeu de données précis n'est pas concerné par une donnée personnelle bloquante.
4. Ouvrir le CSV dans Excel. Ajouter une colonne « num_dép » à côté de `CPO` avec la formule `=GAUCHE(cellule_CPO;2)` (adapter la référence à la colonne réelle).
5. Filtrer sur `num_dép` parmi les 8 départements franciliens (**75, 77, 78, 91, 92, 93, 94, 95**) et sur `ANNEE = 2013` : copier-coller *en valeurs* dans un nouvel onglet **`2013`**. Refaire la même opération pour `ANNEE = 2023` dans un onglet **`2023`**. Ne jamais modifier la feuille de données d'origine.

### B — Traitement des données adapté au contexte et à la problématique étudiés

**Comparer deux années et faire parler l'évolution**

1. Sur l'onglet `2013`, calculer avec `=SOMME()` le total de `LIT_OBS` et de `SALTRAV`, puis la moyenne de lits par maternité avec `=MOYENNE()`. Refaire les trois calculs sur l'onglet `2023`.
2. Créer un onglet **`Recapitulatif`** avec un tableau comparatif 2013/2023 (total lits, total salles de travail, moyenne de lits par maternité), et calculer le taux de variation : `=(valeur 2023 - valeur 2013) / valeur 2013 × 100`.
3. Appliquer une **mise en forme conditionnelle** sur la cellule du taux de variation des lits (rouge si négatif, vert si positif).
4. Construire un **tableau croisé dynamique** depuis le tableau complet (Ctrl+A → Insertion → TCD) : `ANNEE` en lignes, `LIT_OBS` en valeurs (somme), `num_dép` en filtre — filtrer sur les 8 départements franciliens. Construire ensuite un **graphique croisé dynamique** avec les mêmes paramètres.
5. Rédiger une phrase de conclusion : la tendance 2013 → 2023 est-elle à la baisse, à la hausse, ou stable pour les lits et les salles de travail en Île-de-France ?

!!! tip "Astuce"
    `GAUCHE()` renvoie le texte affiché de la cellule : si `CPO` est au format nombre sans le zéro initial, vérifie que le résultat correspond bien à un département réel avant de filtrer.

### C — Exposition des données adaptée au contexte et représentative de la problématique étudiée

**Représenter et informer Mme Le Goff**

1. Depuis l'onglet `Recapitulatif`, créer un **graphique en courbe** de l'évolution du nombre de lits de maternité, avec titre, légende et étiquettes de données.
2. Créer une carte **Google MyMaps** intitulée « Maternités Île-de-France », importer les maternités actives en 2023 (calque 1). Rechercher les coordonnées GPS du 78 rue de la Varenne, Paris, générer un cercle de 10 km de rayon avec le [convertisseur](https://scuttemery.fr/converter) (coordonnées → KML), et l'importer dans un second calque. Compter le nombre de maternités situées dans ce rayon.
3. Rédiger une **note de synthèse pour Mme Le Goff** (8-10 lignes, ton factuel et rassurant si les faits le permettent) : évolution chiffrée 2013-2023, nombre de maternités accessibles à moins de 10 km de son domicile, et une conclusion qui répond directement à sa question sans déformer ce que montrent les données.

!!! tip "Où répondre ?"
    Dépose ton tableur (onglets 2013 / 2023 / Recapitulatif / TCD / GCD), le lien de ta carte MyMaps et ta note de synthèse dans ton bloc-notes **OneNote**, section *C1.2 — Maternités*.

## Ressources et outils

- [Liste des maternités de France depuis 2000 — data.gouv.fr](https://www.data.gouv.fr/datasets/liste-des-maternites-de-france-depuis-2000){ target="_blank" rel="noopener" } — fiche officielle DREES : description, licence, téléchargement CSV/XLSX.
- **CNIL — RGPD** : définition officielle et missions (recherche : « CNIL RGPD missions »)
- **Loi Lemaire 2016** : présentation officielle (recherche : « Loi pour une République numérique 2016 open data »)
- [Convertisseur coordonnées → KML](https://scuttemery.fr/converter){ target="_blank" rel="noopener" } — pour générer le cercle de 10 km autour d'une adresse.
- [Google MyMaps](https://www.google.com/mymaps){ target="_blank" rel="noopener" } — pour créer la carte des maternités.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande de Mme Le Goff est reformulée correctement ; donnée brute/agrégée/métadonnée sont définies ; la Loi Lemaire et le RGPD/CNIL sont correctement situés ; le filtrage Île-de-France 2013/2023 (via `num_dép`) est construit sans modifier la feuille source. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiés | SOMME, MOYENNE et le taux de variation sont exacts et interprétés ; la mise en forme conditionnelle est fonctionnelle ; le TCD et le GCD (ANNEE × LIT_OBS, filtré sur les 8 départements) sont corrects. | -- / - / + / ++ |
| 3 — Exposition des données adaptée au contexte et représentative de la problématique étudiée | Le graphique en courbe est complet (titre, légende, étiquettes) ; la carte MyMaps et le cercle de 10 km sont fonctionnels ; la note de synthèse répond clairement à la problématique, chiffres à l'appui, sans dépasser ce que montrent les données. | -- / - / + / ++ |

!!! note "Capacité visée"
    C1.2 — Étudier un phénomène social ou professionnel à l'aide de données notamment en nombre : collecte, stockage et organisation des données en toute sécurité (RGPD/CNIL) ; traitement analytique au tableur ; représentation et communication.
