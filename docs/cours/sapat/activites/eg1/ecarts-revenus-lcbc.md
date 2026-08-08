# 💶 Des écarts de revenus entre les communes de Bretagne Centre

## Objectifs pédagogiques

<div class="zt-objectifs" markdown>

- Filtrer un jeu de données réel pour isoler un territoire et traiter les valeurs manquantes (secret statistique)
- Construire des formules conditionnelles commentées (SI, NB.SI, SOMME.SI) pour qualifier et compter des situations
- Mettre en évidence des écarts par un tri et une mise en forme conditionnelle

</div>

!!! abstract "Source de données"
    **Téléchargement :** [Revenu des Français à la commune — data.gouv.fr](https://www.data.gouv.fr/datasets/revenu-des-francais-a-la-commune){ target="_blank" rel="noopener" }

    | Colonne | Signification |
    |---|---|
    | Libellé géographique | nom de la commune |
    | [DISP] Médiane (€) | niveau de vie médian annuel |
    | [DISP] Nbre de ménages fiscaux | nombre de ménages fiscaux |

## Contexte et problématique

Après avoir dressé un premier état des lieux du vieillissement de la population du territoire, le **CCAS de
Loudéac** poursuit son diagnostic social. En 2021, la moitié des habitants de France métropolitaine disposait d'un
niveau de vie annuel supérieur à **23 000 €**, mais ce chiffre masque de fortes disparités : dans les **Côtes-d'Armor**,
le niveau de vie médian s'établit à **22 670 €** (Insee, Filosofi 2021). La coordinatrice du CCAS veut savoir si,
à l'intérieur même de Loudéac Communauté – Bretagne Centre, certaines communes se situent nettement en dessous de
cette référence départementale — ce qui orienterait en priorité les campagnes d'information sur les aides sociales
(prime d'activité, chèque énergie, action sociale communale).

**Ton rôle :** tu es agent du CCAS. La coordinatrice te confie une nouvelle mission : à partir d'un fichier réel de
revenus par commune, isoler les communes de Loudéac Communauté – Bretagne Centre, repérer celles dont le niveau de
vie médian est inférieur à la référence départementale, et estimer combien de ménages seraient concernés par un
ciblage prioritaire.

!!! question "Problématique"
    « Parmi les communes de Loudéac Communauté – Bretagne Centre, lesquelles ont un niveau de vie médian inférieur
    à celui du département des Côtes-d'Armor, et combien de ménages fiscaux cela représente-t-il ? »

## Travail à faire

### A — Récupérer, filtrer et nettoyer

**Isoler les communes de Loudéac Communauté – Bretagne Centre**

1. Télécharger le fichier `.csv` depuis le lien ci-dessus et l'ouvrir dans un tableur (vérifier que les colonnes
   se séparent correctement ; si tout arrive dans une seule colonne, utiliser Données > Convertir).
2. Utiliser un **filtre** ou une recherche sur la colonne « Libellé géographique » pour ne conserver que les
   communes figurant dans la liste officielle des 38 communes de Loudéac Communauté – Bretagne Centre (voir
   Ressources) ; copier ces lignes dans une nouvelle feuille de travail.
3. Repérer, parmi ces communes, celles dont la colonne « [DISP] Médiane (€) » est vide. Ajouter une colonne
   annexe « Statut » et y indiquer « donnée non disponible (secret statistique) » pour ces communes plutôt que de
   les supprimer de la feuille.

!!! tip "Astuce"
    Le fichier étant trié par ordre alphabétique de commune sur toute la France, un filtre ou un Ctrl+F sur le nom
    de chaque commune de la liste est plus rapide qu'un défilement manuel.

### B — Qualifier chaque commune avec une fonction SI

**Construire une formule conditionnelle commentée**

1. Ajouter une colonne « Alerte niveau de vie ». Pour les communes dont la donnée est disponible, utiliser la
   fonction **SI** pour comparer la colonne « [DISP] Médiane (€) » à la référence départementale rappelée dans la
   mise en situation, et afficher « À surveiller » ou « Situation favorable ».
2. Pour les communes marquées « donnée non disponible » à l'étape précédente, adapter la formule (SI imbriqué ou
   test préalable) pour qu'elle affiche « non calculable » plutôt qu'un résultat erroné ou une case vide.
3. Ajouter un commentaire sur la cellule d'en-tête de la colonne « Alerte niveau de vie » (clic droit > Insérer un
   commentaire) expliquant en une phrase la logique de la formule utilisée.

### C — Compter, sommer et visualiser

**Mobiliser NB.SI, SOMME.SI et une mise en forme conditionnelle**

1. Dans une cellule à part, utiliser **NB.SI** pour compter combien de communes sont marquées « À surveiller ».
2. Utiliser **SOMME.SI** pour additionner le nombre de ménages fiscaux (colonne « [DISP] Nbre de ménages fiscaux »)
   des seules communes marquées « À surveiller », afin d'estimer combien de ménages seraient concernés par un
   ciblage prioritaire.
3. Trier la feuille par ordre croissant de la colonne « [DISP] Médiane (€) », puis appliquer une **mise en forme
   conditionnelle** (dégradé de couleur) sur cette colonne pour visualiser les écarts d'un coup d'œil.

**Questions de synthèse**

- Combien de communes de Loudéac Communauté – Bretagne Centre sont marquées « À surveiller » ?
- Combien de ménages fiscaux vivent dans ces communes « à surveiller » ?
- Toutes les communes du territoire disposent-elles d'une donnée exploitable, ou certaines posent-elles une
  difficulté particulière ?

??? tip "Vérifier mes réponses"
    - Les deux premiers chiffres dépendent directement de ton filtrage : vérifie qu'ils correspondent exactement au
      nombre de lignes de ta feuille marquées « À surveiller » (ni plus, ni moins que ce que compte ta formule
      NB.SI), et que la somme SOMME.SI ne porte que sur ces mêmes lignes.
    - Certaines très petites communes du territoire n'ont pas de médiane publiée (secret statistique) : la réponse
      correcte à la troisième question est donc « non », et ces communes doivent apparaître avec le statut
      « non calculable », jamais avec un résultat inventé.

!!! tip "Où répondre ?"
    Dépose ton tableur dans ton bloc-notes **OneNote**, section *EG1 — Population et territoire*.

## Ressources et outils

- [Revenu des Français à la commune — data.gouv.fr](https://www.data.gouv.fr/datasets/revenu-des-francais-a-la-commune){ target="_blank" rel="noopener" } — fichier à télécharger et filtrer (voir Source de données).
- [Nos communes — Loudéac Communauté Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } — liste officielle des 38 communes, à utiliser pour le filtrage de l'étape A.
- [Niveau de vie et pauvreté des territoires en 2021 — Insee](https://www.insee.fr/fr/statistiques/7752770){ target="_blank" rel="noopener" } — source des chiffres de cadrage (niveau de vie médian national et départemental).

## Compétences CRCN et parcours Pix

- **CRCN 1.2** — Gérer des données
- **CRCN 1.3** — Traiter des données

## Grille d'évaluation

La production attendue est un classeur transmis à la coordinatrice du CCAS de Loudéac.

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Filtrage et nettoyage des données | Les 38 communes sont correctement isolées ; les données manquantes sont signalées, jamais supprimées ou inventées. | -- / - / + / ++ |
| Formule conditionnelle (SI) | La formule SI est exacte, commentée, et gère correctement le cas des données non disponibles. | -- / - / + / ++ |
| Comptage, tri et interprétation | Les formules NB.SI et SOMME.SI renvoient des résultats cohérents avec le filtrage réalisé ; le tri et la mise en forme conditionnelle sont fonctionnels ; les réponses de synthèse sont cohérentes avec les données. | -- / - / + / ++ |

</div>
