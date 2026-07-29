# 🖥️ Mettre en service et sécuriser le poste libre-service de la structure

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences Pix</span>
  <span title="Résoudre des problèmes techniques">CRCN 5.1</span>
  <span title="Construire un environnement numérique">CRCN 5.2</span>
</div>

<p class="zt-kicker">1ère Bac Pro SAPAT — MP8 · C8.1 — Cadre de vie / Quotidien</p>

<p class="zt-lede">Un poste mal réglé peut exclure l'usager qu'il est censé aider : savoir ce qu'un agent d'accueil peut préparer seul, et ce qu'il doit transmettre à qui de droit</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 45 min</span>
  <span>:material-school-outline: MP8 — C8.1, maintenance de premier niveau</span>
  <span>:material-tag-outline: Windows · Accessibilité · Mises à jour</span>
</div>

## Mise en situation

**France Services de Loudéac** vient de recevoir un nouvel ordinateur portable, destiné à l'espace libre-service
ouvert aux usagers. Comme sur la plupart des postes publics, le compte administrateur de la machine est réservé au
prestataire informatique de la structure : un agent d'accueil comme toi n'a accès qu'à un compte utilisateur
standard, sans droit d'installer un logiciel ni de créer un nouveau compte. **M. Rouault**, ton conseiller
référent, veut savoir précisément ce que tu peux préparer seul avant l'ouverture au public, et ce qui doit être
transmis au prestataire informatique de la structure.

!!! question "Problématique"
    « Que peut réaliser seul un agent d'accueil sans droits administrateur pour préparer un poste accessible et
    sécurisé, et que doit-il transmettre au prestataire informatique ? »

## Objectifs

- Distinguer les actions de mise en service réalisables par un agent sans droits administrateur de celles qui
  relèvent du prestataire informatique
- Paramétrer les réglages d'accessibilité adaptés à un usager malvoyant ou peu à l'aise avec le numérique
- Identifier des bonnes pratiques de maintenance de premier niveau recommandées par un organisme officiel, et
  repérer celles qu'un agent standard peut appliquer seul
- Rédiger une check-list de mise en service à deux niveaux de responsabilité, réutilisable par les collègues

## Travail à faire

### A — Vérifier l'état du poste avec un compte utilisateur standard

**Observer le poste sans droits administrateur**

1. Se connecter avec la session déjà ouverte sur le poste (compte utilisateur standard du lycée — équivalent au
   compte que M. Rouault donnerait à un agent d'accueil sur un poste public, jamais un compte administrateur).
2. Dans les paramètres système (Windows : Paramètres > Système > Informations système), relever la version du
   système d'exploitation installée ; dans Paramètres > Comptes, vérifier si le compte connecté est de type
   administrateur ou standard.
3. Vérifier que le poste est bien connecté à Internet et noter, pour ta check-list, les informations qu'un agent
   devrait demander pour connecter un poste réel de la structure à son réseau wifi (nom du réseau, personne à
   contacter pour obtenir le code d'accès).
4. Vérifier les branchements physiques de l'appareil (chargeur, souris/clavier) et signaler tout défaut de
   connectique observé — une action réalisable sans droits particuliers.

### B — Paramétrer l'accessibilité pour un usager en difficulté

**Adapter l'environnement visuel et sonore du poste**

1. Sur le poste, ouvrir Paramètres > Accessibilité, puis consulter en parallèle la page [Rendez votre PC plus
   accessible — Microsoft Windows](https://www.microsoft.com/fr-fr/windows/tips/accessibility-settings){ target="_blank" rel="noopener" }
   pour comparer les réglages affichés à l'écran avec ceux décrits sur la page.
2. Augmenter la taille du texte et des icônes, activer un contraste élevé, et régler le pointeur de souris pour le
   rendre plus visible.
3. Activer et tester quelques secondes la loupe intégrée ainsi que le Narrateur (lecteur d'écran), pour comprendre
   ce qu'expérimente un usager malvoyant qui les utiliserait.
4. Ajuster le volume système et vérifier la présence de haut-parleurs fonctionnels — utiles à un usager qui
   activerait le Narrateur ou les sous-titres en direct.

!!! tip "🆘 Coup de pouce"
    Si un réglage reste introuvable, utilise directement la barre de recherche Windows en tapant « accessibilité » :
    cela ouvre le bon menu sans naviguer dans tous les paramètres. Ces réglages sont des préférences liées au
    compte utilisateur : ils ne demandent pas de droits administrateur.

### C — Distinguer ce qu'un agent peut faire seul de ce qui relève du prestataire

**Identifier les limites du compte utilisateur standard face aux mises à jour**

1. Ouvrir la fiche [Pourquoi et comment bien gérer ses mises à jour ?](https://www.cybermalveillance.gouv.fr/tous-nos-contenus/bonnes-pratiques/mises-a-jour){ target="_blank" rel="noopener" }
   de Cybermalveillance.gouv.fr et, parmi les bonnes pratiques listées, identifier celles qui s'appliquent le plus
   directement à un poste public en libre-service.
2. Sur le poste, ouvrir l'écran de recherche de mises à jour (Paramètres > Windows Update) et noter si l'action
   d'installer une mise à jour est accessible avec le compte utilisateur connecté ou si elle réclame des droits
   administrateur.
3. Pour chaque bonne pratique identifiée à l'étape 1, indiquer si elle est réalisable seul par un agent d'accueil
   sans droits particuliers (ex. redémarrer le poste, signaler une fausse fenêtre de mise à jour suspecte) ou si
   elle doit être demandée au prestataire informatique (ex. installer une mise à jour système).
4. Rédiger, à destination du prestataire informatique de France Services Loudéac, un message court (3-4 lignes)
   signalant l'état des mises à jour observé à l'étape 2 et demandant leur installation si nécessaire.

!!! tip "Astuce"
    Un agent qui n'a pas les droits pour agir n'est pas un agent qui ne fait rien : signaler précisément un besoin
    au bon interlocuteur fait pleinement partie de la mission.

### D — Rédiger la check-list de mise en service à deux niveaux

**Formaliser la procédure pour les collègues et pour le prestataire**

1. Ouvrir un traitement de texte et créer un tableau à deux colonnes de responsabilité — « Réalisable par l'agent
   d'accueil » et « À transmettre au prestataire informatique » — reprenant toutes les étapes réalisées en A, B et C.
2. Pour chaque étape, préciser en une ligne le résultat attendu qui permet de cocher la case (ex. « contraste élevé
   activé → texte lisible à 2 mètres »).
3. Ajouter en tête du document un titre, la date de mise en service et le nom de l'agent qui l'a réalisée.
4. Exporter la check-list au format PDF.

### Questions de synthèse

- Quelles sont les deux familles de réglages d'accessibilité Windows mobilisées dans cette mise en service ?
- Pourquoi un agent d'accueil n'a-t-il généralement pas de droits administrateur sur un poste public ?
- Que doit faire un agent qui repère un poste non à jour, s'il n'a pas les droits pour installer la mise à jour
  lui-même ?

??? tip "Vérifier mes réponses"
    - Les réglages de confort visuel (taille du texte, contraste, loupe) et les réglages de lecture/écoute
      (Narrateur, sous-titres en direct, volume).
    - Séparer le compte administrateur du compte utilisateur limite les risques si le poste public est piraté ou
      mal manipulé — un principe de sécurité appliqué à tout poste partagé, pas seulement en médiation numérique.
    - Il doit signaler précisément la situation au prestataire informatique ou au responsable technique de la
      structure, plutôt que de tenter de contourner la restriction.

!!! tip "Où répondre ?"
    Dépose ta check-list PDF et tes réponses aux questions de synthèse dans ton bloc-notes **OneNote**, section
    *MP8 — Cadre de vie / Quotidien*.

## Ressources et outils

- **Microsoft — Rendez votre PC plus accessible** : détail des réglages d'accessibilité Windows (police, contraste,
  loupe, Narrateur, sous-titres) — [microsoft.com/fr-fr/windows/tips/accessibility-settings](https://www.microsoft.com/fr-fr/windows/tips/accessibility-settings){ target="_blank" rel="noopener" }.
- **Cybermalveillance.gouv.fr — Pourquoi et comment bien gérer ses mises à jour ?** : bonnes pratiques officielles
  de maintenance de premier niveau — [cybermalveillance.gouv.fr](https://www.cybermalveillance.gouv.fr/tous-nos-contenus/bonnes-pratiques/mises-a-jour){ target="_blank" rel="noopener" }.
- **France Services** : réseau national de points d'accueil aux démarches administratives, structure de la mise en
  situation — [france-services.gouv.fr](https://www.france-services.gouv.fr/){ target="_blank" rel="noopener" }.

## Grille d'évaluation C8.1 — Mise en service et maintenance d'un poste (MP8)

**Production attendue :** une check-list de mise en service au format PDF, prête à être réutilisée par les
collègues de France Services Loudéac pour tout futur poste libre-service, accompagnée du message au prestataire
informatique et des réponses aux questions de synthèse.

| Critère (référentiel C8.1) | Indicateurs observables | Niveau |
|---|---|---|
| Relation interpersonnelle de proximité et distanciée | Réglages choisis en anticipant les besoins d'un usager non identifié ; signalement au prestataire formulé avec la juste distance professionnelle, sans dépasser son rôle | -- / - / + / ++ |
| Organisation de l'espace de vie | Poste préparé et organisé (accessibilité, branchements, informations réseau) comme élément fonctionnel de l'espace d'accueil de la structure | -- / - / + / ++ |
| Réalisation des opérations d'entretien en toute sécurité | Bonnes pratiques de maintenance de premier niveau correctement identifiées et appliquées dans la limite des droits de l'agent, sans contournement d'une restriction de sécurité | -- / - / + / ++ |
