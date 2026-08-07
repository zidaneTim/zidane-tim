# 💧 L'eau du robinet, sur mon territoire : sûre et bien gérée ?

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN</span>
  <span title="Mener une recherche et une veille d'information">CRCN 1.1</span>
  <span title="Traiter des données">CRCN 1.3</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — C1.2 · Thème eau</p>

<p class="zt-lede">Qualité sanitaire et performance du réseau d'eau potable — Données réelles SISPEA (OFB), Loudéac Communauté – Bretagne Centre</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 3 séances (55 min)</span>
  <span>:material-school-outline: TIM × Mathématiques</span>
  <span>:material-tag-outline: C1.2 · Excel</span>
</div>

## Mise en situation

Tu es agent du service eau potable de **Loudéac Communauté – Bretagne Centre (LCBC)**. Un élu du territoire, interpellé par un habitant après une alerte vue sur les réseaux sociaux (« l'eau du robinet ne serait plus sûre »), demande au service de préparer un état des lieux factuel : l'eau distribuée sur le territoire respecte-t-elle les normes sanitaires, et le réseau est-il bien entretenu (pas trop de fuites, renouvellement régulier des canalisations) ?

Le **SISPEA** (Système d'Information sur les Services Publics d'Eau et d'Assainissement), géré par l'Office Français de la Biodiversité (OFB), publie chaque année en open data les indicateurs officiels de chaque service d'eau potable de France : qualité sanitaire, rendement du réseau, taux de renouvellement des canalisations, etc.

**Ton rôle :** extraire les indicateurs du ou des services d'eau potable qui desservent LCBC, les comparer aux moyennes du département, et rédiger une note factuelle pour l'élu.

!!! question "Problématique"
    « Le service d'eau potable de Loudéac Communauté – Bretagne Centre respecte-t-il les normes de qualité sanitaire, et son réseau est-il bien entretenu, par rapport aux moyennes du département des Côtes-d'Armor ? »

## Objectifs

<div class="zt-objectifs" markdown>

- Rechercher et télécharger un jeu de données officiel sur data.gouv.fr, comprendre sa structure (un service peut
  desservir plusieurs communes) et justifier l'absence de donnée personnelle
- Filtrer et vérifier la fiabilité des indicateurs officiels (statut de vérification), puis calculer des moyennes
  départementales de comparaison avec des formules conditionnelles (`MOYENNE.SI.ENS`, `NB.SI.ENS`)
- Construire un graphique comparatif LCBC / département et rédiger une note de synthèse factuelle pour l'élu

</div>

!!! abstract "Source de données"
    **Téléchargement :** [Services publics d'eau potable — jeux de données SISPEA — data.gouv.fr](https://www.data.gouv.fr/datasets/services-publics-deau-potable-jeux-de-donnees-exploites-pour-les-rapports-nationaux-sispea-1)

    | Colonne | Signification |
    |---|---|
    | `dpt` | département du service |
    | `id_sispea_serv` | identifiant du service |
    | `Nom_serv` | nom du service d'eau |
    | `Communes_adh_du_serv` | communes desservies par le service |
    | `EPCI_adh_du_serv` | EPCI desservi |
    | `pop_comm_adh` | population des communes adhérentes |
    | `psdc` | population desservie |
    | `d101_0` | nombre d'habitants desservis |
    | `p101_1` | taux de conformité microbiologique |
    | `p102_1` | taux de conformité physico-chimique |
    | `p104_3` | rendement du réseau de distribution |
    | `p107_2` | taux moyen de renouvellement des réseaux |
    | `verif_<indicateur>` | statut de fiabilité de l'indicateur (anomalie ou non) |

## Travail à faire

### A — Analyse du contexte et de la problématique

**Comprendre la demande, récupérer et repérer les données du territoire**

1. Rechercher « SISPEA eau potable » sur data.gouv.fr, ouvrir la fiche du jeu de données, relever le producteur et la fréquence de mise à jour. Télécharger le fichier de l'année la plus récente proposée.
2. Reformuler en 2-3 phrases la demande de l'élu : qui a besoin de quoi, et pour répondre à quelle inquiétude ?
3. Rédiger une phrase justifiant que ce fichier ne contient **aucune donnée personnelle** (il décrit des services, pas des usagers).
4. Filtrer la colonne `dpt` sur **22** (Côtes-d'Armor), copier-coller *en valeurs* dans un nouvel onglet **`Donnees-22`**.
5. Dans cet onglet, repérer le ou les services qui desservent LCBC : utilise le filtre automatique sur `EPCI_adh_du_serv` (rechercher le code **200067460** ou le nom du territoire) ou, si cette colonne ne le permet pas directement, sur `Communes_adh_du_serv` (rechercher le nom d'une commune de LCBC, par exemple Loudéac). Copier la ou les lignes trouvées dans un onglet **`Donnees-LCBC`**.
6. Pour le service LCBC retenu, vérifier les colonnes `verif_d101_0`, `verif_p101_1`, `verif_p102_1`, `verif_p104_3`, `verif_p107_2` : si l'une indique « anomalie », le noter pour l'étape C (cet indicateur ne doit pas être présenté comme fiable).

### B — Traitement des données adapté au contexte et à la problématique étudiée

**Comparer LCBC à la moyenne du département**

1. Construire un tableau récapitulatif à 5 lignes (une par indicateur : habitants desservis, conformité microbiologique, conformité physico-chimique, rendement du réseau, renouvellement du réseau) avec la valeur du service LCBC.
2. Dans l'onglet `Donnees-22`, calculer avec `=MOYENNE.SI.ENS()` la moyenne départementale de chaque indicateur (`p101_1`, `p102_1`, `p104_3`, `p107_2`), en excluant les lignes dont le statut `verif_...` correspondant indique « anomalie ». Compter avec `=NB.SI.ENS()` le nombre de services du département inclus dans chaque moyenne.
3. Ajouter au tableau récapitulatif une colonne « Écart à la moyenne départementale » (valeur LCBC − moyenne département) pour chaque indicateur.
4. Appliquer une **mise en forme conditionnelle** sur cette colonne d'écart (vert si l'écart est favorable — conformité ou rendement supérieurs à la moyenne —, rouge si défavorable).

!!! tip "Astuce"
    `MOYENNE.SI.ENS(plage_moyenne ; plage_critère1 ; critère1 ; plage_critère2 ; critère2)` : le premier critère est `dpt = "22"`, le second exclut les statuts « anomalie » de la colonne `verif_...` correspondant à l'indicateur moyenné.

### C — Exposition des données adaptée et représentative de la problématique étudiée

**Représenter et informer l'élu**

1. Créer un **graphique en barres groupées** comparant, pour chaque indicateur, la valeur de LCBC et la moyenne départementale : titre, légende, unité (%) précisée.
2. Rédiger une **note pour l'élu** (8-10 lignes, ton factuel) : le service LCBC respecte-t-il les seuils de conformité sanitaire, comment se situe son réseau par rapport à la moyenne du département, et — le cas échéant — quel indicateur reste à confirmer (statut « anomalie » signalé en A6) plutôt que présenté comme certain.

!!! tip "Où répondre ?"
    Dépose ton tableur (onglets `Donnees-22` / `Donnees-LCBC` / récapitulatif), ton graphique et ta note dans ton bloc-notes **OneNote**, section *C1.2 — Eau*.

## Ressources et outils

- [Services publics d'eau potable — jeux de données SISPEA — data.gouv.fr](https://www.data.gouv.fr/datasets/services-publics-deau-potable-jeux-de-donnees-exploites-pour-les-rapports-nationaux-sispea-1){ target="_blank" rel="noopener" } — fiche officielle : téléchargement des fichiers annuels, producteur OFB.
- **Code EPCI de Loudéac Communauté – Bretagne Centre : 200067460** — source : [API Découpage administratif — geo.api.gouv.fr](https://geo.api.gouv.fr/epcis/200067460/communes){ target="_blank" rel="noopener" }.
- **Observatoire Sispea — définitions des indicateurs** : [services.eaufrance.fr/indicateurs](https://www.services.eaufrance.fr/indicateurs){ target="_blank" rel="noopener" } — pour vérifier le sens exact d'un indicateur avant de le citer dans la note.

## Grille d'évaluation C1.2 (Épreuve E1 — Coeff. 0,5)

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| 1 — Analyse du contexte et de la problématique | La demande de l'élu est reformulée correctement ; l'absence de donnée personnelle est justifiée ; le sous-ensemble Côtes-d'Armor puis LCBC est correctement construit (EPCI ou communes) ; les statuts de fiabilité des indicateurs sont vérifiés. | -- / - / + / ++ |
| 2 — Traitement des données adapté au contexte et à la problématique étudiée | Le tableau récapitulatif est correct ; `MOYENNE.SI.ENS` et `NB.SI.ENS` sont fonctionnels et excluent bien les anomalies ; les écarts sont justes et la mise en forme conditionnelle est cohérente. | -- / - / + / ++ |
| 3 — Exposition des données adaptée et représentative de la problématique étudiée | Le graphique comparatif est complet et lisible ; la note répond clairement à la problématique, chiffres à l'appui, sans présenter comme certain un indicateur signalé en anomalie. | -- / - / + / ++ |

</div>
