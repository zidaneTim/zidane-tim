# 🗺️ Organiser une tournée de partenaires France services

## Objectifs pédagogiques



<div class="zt-objectifs" markdown>

- Récupérer et structurer un tableau de données professionnelles réelles pour produire un document de tournée clair
  et utilisable sur le terrain (4.2.6 — tables de données)
- Géolocaliser des adresses réelles et construire un itinéraire avec un outil numérique (4.3.9 — géolocalisation)
- Expliquer ce qui changerait si le document contenait, au lieu d'adresses professionnelles publiques, des données
  personnelles de bénéficiaires (secret professionnel)

</div>

!!! abstract "Source de données"
    **Téléchargement :** [Liste des structures labellisées France services](https://www.data.gouv.fr/datasets/liste-des-structures-labellisees-france-services){ target="_blank" rel="noopener" }

    | Colonne | Signification |
    |---|---|
    | Nom de la structure | Nom du point France services |
    | Commune | Commune d'implantation |
    | Adresse postale | Adresse complète de la structure |
    | Téléphone | Contact téléphonique |
    | Horaires d'ouverture | Horaires d'accueil du public |

## Contexte et problématique



Tu es agent du **SAAD (Service d'Aide et d'Accompagnement à Domicile) de Loudéac**. De nombreux bénéficiaires du
service — souvent des personnes âgées isolées — ont aussi besoin d'aide pour leurs démarches administratives
(retraite, CAF, Assurance Maladie, impôts). Ta responsable de secteur veut nouer un partenariat de proximité avec
les **points France services** du territoire, pour pouvoir orienter les bénéficiaires du SAAD vers le point le plus
proche de chez eux.

Elle te confie une mission : identifier tous les points France services du territoire de Loudéac Communauté –
Bretagne Centre, préparer une tournée de visite (dépôt d'une plaquette de présentation du SAAD auprès de chaque
point), dans un ordre qui limite les déplacements inutiles entre communes.

!!! question "Problématique"
    « Comment organiser, à partir d'un vrai jeu de données de structures partenaires, un itinéraire de tournée clair
    et efficace pour un agent du SAAD ? »

## Travail à faire



**Récupérer les données, organiser la tournée, cartographier**

1. Ouvrir la page du jeu de données (lien en Ressources et outils), repérer les fichiers CSV proposés dans la
   rubrique *Fichiers* et, à l'aide du fichier de documentation PDF, identifier celui qui contient une ligne par
   structure avec adresse postale complète.
2. Télécharger ce fichier et l'importer dans Excel (Données → À partir d'un fichier texte/CSV ; séparateur virgule ;
   origine du fichier : Unicode UTF-8 — la page data.gouv.fr détaille cette procédure d'import).
3. Filtrer le tableau sur le département des Côtes-d'Armor (code postal ou code INSEE commençant par « 22 »).
4. À l'aide de la liste officielle des communes de [Loudéac Communauté – Bretagne Centre](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" } (lien en Ressources et outils), ne garder que les lignes correspondant aux communes du territoire ; copier-coller *en valeurs* le résultat dans un nouvel onglet nommé `Donnees-LCBC`.
5. Dans `Donnees-LCBC`, conserver au minimum les colonnes utiles (nom de la structure, commune, adresse postale, téléphone, horaires d'ouverture) et supprimer les colonnes inutiles à l'étude.
6. Trier le tableau par commune, puis par ordre alphabétique de structure, pour avoir une première vue d'ensemble de la tournée.
7. Créer une carte dans **Google MyMaps** et importer les structures retenues (import direct du tableau ou saisie manuelle si l'import échoue) : un repère par structure, avec le nom et les horaires dans la description du repère.
8. Observer la carte et proposer un **ordre de passage** qui limite les allers-retours entre communes éloignées (sans outil de calcul d'itinéraire automatique : un choix raisonné à l'œil, justifié en une phrase).
9. Construire la **feuille de tournée** finale dans Excel : une ligne par structure, triée dans l'ordre de passage choisi, avec une colonne « Ordre » numérotée de 1 à N.

!!! tip "Astuce"
    Sur la carte, les structures d'une même commune apparaissent groupées visuellement : commence par regrouper les
    communes proches avant de choisir un ordre précis pour chacune.

**Questions de synthèse**

- Combien de points France services se trouvent sur le territoire de Loudéac Communauté – Bretagne Centre ?
- Quel est l'ordre de passage que tu proposes, et pourquoi (une phrase de justification) ?
- Ces adresses sont publiques. Si ce même exercice portait sur une vraie tournée de bénéficiaires du SAAD (noms et
  adresses personnelles), qu'est-ce que cela changerait dans la manière de traiter, stocker et partager le document ?

??? tip "Vérifier mes réponses"
    - Le nombre exact de points France services dépend du fichier nationale téléchargé au moment de l'activité (le
      jeu de données évolue) : vérifie que ton compte correspond au nombre de repères posés sur ta carte MyMaps, et
      que chaque structure retenue appartient bien à une des 38 communes de Loudéac Communauté – Bretagne Centre.
    - Il n'existe pas un seul bon ordre de passage : ta justification doit citer un critère géographique concret
      (communes voisines regroupées, allers-retours évités) et correspondre réellement à la colonne « Ordre » de ta
      feuille de tournée.
    - Avec des données personnelles de bénéficiaires (noms, adresses privées), le document relèverait du secret
      professionnel et du RGPD : accès restreint aux seules personnes habilitées, pas de diffusion ni de stockage
      non sécurisé, conservation limitée dans le temps — contrairement aux adresses professionnelles publiques de
      cet exercice.

!!! tip "Où répondre ?"
    Dépose ta feuille de tournée Excel, le lien de ta carte MyMaps et tes réponses dans ton bloc-notes **OneNote**,
    section *MP2 — Communication professionnelle*.

## Ressources et outils



- **Liste des structures labellisées France services (data.gouv.fr)** : jeu de données réel à télécharger et filtrer — [voir Source de données ci-dessus](https://www.data.gouv.fr/datasets/liste-des-structures-labellisees-france-services){ target="_blank" rel="noopener" }.
- **Nos communes — Loudéac Communauté Bretagne Centre** : liste officielle des 38 communes membres du territoire, pour filtrer les données — [lien](https://www.bretagnecentre.bzh/la-communaute/le-territoire/nos-communes){ target="_blank" rel="noopener" }.
- **Google MyMaps** : pour créer la carte et les repères — [lien](https://www.google.com/mymaps){ target="_blank" rel="noopener" }.

## Compétences CRCN et parcours Pix

- **CRCN 4.2.6** — Structuration du tableau.
- **CRCN 4.3.9** — Géolocalisation.

## Grille d'évaluation



<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Structuration du tableau (4.2.6) | Le sous-ensemble LCBC est correctement construit à partir du fichier national réel, trié, exploitable ; l'ordre de passage est numéroté clairement. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Géolocalisation (4.3.9) | La carte MyMaps est créée, chaque structure retenue est présente et correctement renseignée. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Conformité professionnelle | La question de synthèse sur la confidentialité des données personnelles de bénéficiaires est correctement traitée ; la feuille de tournée est présentable en usage réel. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |

</div>
