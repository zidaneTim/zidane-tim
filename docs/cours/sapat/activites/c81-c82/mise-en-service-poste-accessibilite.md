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

Avant l'ouverture au public, M. Rouault a une idée précise du test à faire passer au poste : le faire essayer par
**M. Guillard, 73 ans**, un habitué de la structure (venu plusieurs fois pour des démarches CAF et impôts) atteint
de **DMLA** (dégénérescence maculaire liée à l'âge) diagnostiquée il y a deux ans. Sa vision centrale est floue et
déformée, sa vision périphérique reste correcte : il ne peut pas fixer directement une icône ou un mot, doit
regarder légèrement à côté de ce qu'il veut lire, et se fatigue vite à l'écran. Lors de son dernier passage, M.
Rouault l'a vu tenir ses papiers très près du visage et légèrement de travers pour compenser. M. Guillard a
demandé, un peu inquiet, si le nouvel ordinateur serait « aussi difficile à lire que l'ancien ».

M. Rouault te demande de tester le poste avec un collègue plutôt que de le préparer dans ton coin : l'un de vous
prépare et présente le poste (rôle **aidant**), l'autre joue **M. Guillard** (rôle **aidé**, à partir du profil
ci-dessus) et donne un avis réel sur ce qui est lisible ou non. Vous inverserez les rôles à la prochaine activité
de ce type.

!!! info "Ton rôle aujourd'hui"
    Vérifie dans ta fiche de suivi **OneNote** (section *MP8 — Cadre de vie / Quotidien*) si tu joues l'**aidant**
    ou l'**aidé** pour cette activité, et note-le une fois l'activité terminée.

    🆘 **Binôme absent ce jour-là ?** Joue les deux rôles toi-même : configure les réglages (partie aidant), puis
    rejoue la vérification en te mettant à la place de M. Guillard — fixe un point à côté de l'écran plutôt que le
    centre, puis juge la lisibilité en vision périphérique — c'est la même technique de simulation individuelle
    que celle utilisée en classe avec les kits de vieillissement ou les lunettes simulatrices.

!!! question "Problématique"
    « Que peut réaliser seul un agent d'accueil sans droits administrateur pour préparer un poste accessible et
    sécurisé, et que doit-il transmettre au prestataire informatique ? »

## Objectifs

- Analyser les besoins d'un usager à partir d'éléments observés, avant toute action technique
- Distinguer les actions de mise en service réalisables par un agent sans droits administrateur de celles qui
  relèvent du prestataire informatique
- Paramétrer les réglages d'accessibilité adaptés à une perte de vision centrale (type DMLA) et à un usager peu à
  l'aise avec le numérique
- Identifier des bonnes pratiques de maintenance de premier niveau recommandées par un organisme officiel, et
  repérer celles qu'un agent standard peut appliquer seul
- Rédiger une check-list de mise en service à deux niveaux de responsabilité, réutilisable par les collègues
- Ajuster ses réglages à partir du retour réel d'un usager-test, en tant qu'aidant ou en tant qu'aidé

## Travail à faire

### A — Je diagnostique les besoins de M. Guillard

**Analyser sa situation avant de toucher au poste**

1. Relire la mise en situation et lister, en deux colonnes, ce que M. Rouault a **observé** de la vision de M.
   Guillard (faits) et ce qu'il faudra **vérifier directement avec lui** lors du test (hypothèses à confirmer,
   voir étape C).
2. Consulter la fiche [Symptômes et diagnostic de la DMLA — Ameli.fr](https://www.ameli.fr/assure/sante/themes/dmla/symptomes-diagnostic){ target="_blank" rel="noopener" }
   pour comprendre pourquoi une vision centrale floue n'empêche pas d'utiliser un ordinateur, mais change
   complètement la façon de s'en servir (vision périphérique conservée, regard qui s'ajuste autour du point flou).
3. Pour chaque famille de réglages d'accessibilité Windows (taille/contraste des éléments, loupe, lecteur d'écran),
   noter dans un tableau à deux colonnes si elle répond entièrement, partiellement ou pas du tout au besoin de M.
   Guillard identifié à l'étape 2 — ce tableau guidera le paramétrage de l'étape C, ne le remplis pas au hasard.
4. Formuler une hypothèse sur ce qu'un agrandissement seul du texte ne résoudrait pas dans le cas de M. Guillard,
   à vérifier concrètement lors du test avec ton binôme (étape C).

!!! tip "🆘 Coup de pouce"
    Si le tableau te semble difficile à remplir avant d'avoir touché au poste, c'est normal : c'est justement le
    but du diagnostic, formuler des hypothèses qui seront confirmées ou corrigées par le test réel à l'étape C.

### B — Je vérifie l'état du poste

**Observer le poste avec un compte utilisateur standard, sans droits administrateur**

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

### C — J'accompagne M. Guillard

**Paramétrer l'environnement visuel et sonore du poste pour une perte de vision centrale (type DMLA)**

1. À partir du tableau construit à l'étape A, ouvrir Paramètres > Accessibilité et consulter en parallèle la page
   [Rendez votre PC plus accessible — Microsoft Windows](https://www.microsoft.com/fr-fr/windows/tips/accessibility-settings){ target="_blank" rel="noopener" }
   pour retrouver, réglage par réglage, ceux que ton diagnostic a identifiés comme utiles à M. Guillard.
2. Augmenter la taille du texte et des icônes, activer un contraste élevé, et régler le pointeur de souris pour le
   rendre plus visible.
3. Activer et tester quelques secondes la loupe intégrée ainsi que le Narrateur (lecteur d'écran) : avec une perte
   de vision centrale comme celle de M. Guillard, l'agrandissement seul ne suffit pas toujours — le texte agrandi
   peut rester dans la zone floue — le Narrateur devient alors un complément indispensable, pas une option.
4. Ajuster le volume système et vérifier la présence de haut-parleurs fonctionnels — indispensables pour M.
   Guillard s'il active le Narrateur ou les sous-titres en direct.
5. **Aidant** : fais tester tes réglages par ton binôme dans le rôle de M. Guillard — demande-lui de lire à
   distance normale un texte affiché à l'écran **en fixant un point légèrement à côté**, comme le ferait M.
   Guillard, puis d'utiliser le Narrateur quelques secondes. **Aidé** : donne un avis honnête (lisible ou non,
   confortable ou non), sans faciliter la tâche de ton binôme. Ajustez ensemble au moins un réglage suite à ce
   retour.

!!! tip "🆘 Coup de pouce"
    Si un réglage reste introuvable, utilise directement la barre de recherche Windows en tapant « accessibilité » :
    cela ouvre le bon menu sans naviguer dans tous les paramètres. Ces réglages sont des préférences liées au
    compte utilisateur : ils ne demandent pas de droits administrateur.

### D — J'oriente vers le bon interlocuteur

**Identifier les limites du compte utilisateur standard face aux mises à jour, et distinguer ce qui relève de l'agent de ce qui relève du prestataire**

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
5. **Aidé** : demande à ton binôme, comme le ferait M. Guillard, d'installer une application de loupe qu'il a vue
   chez sa fille, ou de créer un compte à sa place pour lui simplifier la vie. **Aidant** : explique pourquoi tu ne
   peux pas le faire toi-même et ce que tu proposes à la place (sans le faire à sa place — la posture reste
   « faire avec, jamais pour »).

!!! tip "Astuce"
    Un agent qui n'a pas les droits pour agir n'est pas un agent qui ne fait rien : signaler précisément un besoin
    au bon interlocuteur fait pleinement partie de la mission.

### E — Je formalise et je transmets

**Rédiger la check-list de mise en service à deux niveaux de responsabilité, pour les collègues et pour le prestataire**

1. Ouvrir un traitement de texte et créer un tableau à deux colonnes de responsabilité — « Réalisable par l'agent
   d'accueil » et « À transmettre au prestataire informatique » — reprenant le tableau besoins/réglages de l'étape
   A et toutes les étapes réalisées en B, C et D.
2. Pour chaque étape, préciser en une ligne le résultat attendu qui permet de cocher la case (ex. « contraste élevé
   activé → texte lisible à 2 mètres »).
3. Ajouter en tête du document un titre, la date de mise en service et le nom de l'agent qui l'a réalisée.
4. Exporter la check-list au format PDF.

### Questions de synthèse

- Quelles sont les deux familles de réglages d'accessibilité Windows mobilisées dans cette mise en service ?
- Pourquoi un agent d'accueil n'a-t-il généralement pas de droits administrateur sur un poste public ?
- Que doit faire un agent qui repère un poste non à jour, s'il n'a pas les droits pour installer la mise à jour
  lui-même ?
- Pourquoi le retour de M. Guillard (joué par ton binôme) peut-il faire changer un réglage que tu jugeais déjà
  correct ?

??? tip "Vérifier mes réponses"
    - Les réglages de confort visuel (taille du texte, contraste, loupe) et les réglages de lecture/écoute
      (Narrateur, sous-titres en direct, volume).
    - Séparer le compte administrateur du compte utilisateur limite les risques si le poste public est piraté ou
      mal manipulé — un principe de sécurité appliqué à tout poste partagé, pas seulement en médiation numérique.
    - Il doit signaler précisément la situation au prestataire informatique ou au responsable technique de la
      structure, plutôt que de tenter de contourner la restriction.
    - Parce qu'un réglage jugé confortable par celui qui l'a paramétré n'est pas forcément perçu de la même façon
      par la personne qui l'utilise réellement : seul le retour de l'usager valide si le réglage répond au besoin.

!!! tip "Où répondre ?"
    Dépose ta check-list PDF et tes réponses aux questions de synthèse dans ton bloc-notes **OneNote**, section
    *MP8 — Cadre de vie / Quotidien* — et note dans ta fiche de suivi le rôle que tu as joué aujourd'hui (aidant ou
    aidé) et le nom de ton binôme.

## Ressources et outils

- **Ameli.fr — Symptômes et diagnostic de la DMLA** : comprendre les conséquences fonctionnelles d'une perte de
  vision centrale — [ameli.fr/dmla/symptomes-diagnostic](https://www.ameli.fr/assure/sante/themes/dmla/symptomes-diagnostic){ target="_blank" rel="noopener" }.
- **Microsoft — Rendez votre PC plus accessible** : détail des réglages d'accessibilité Windows (police, contraste,
  loupe, Narrateur, sous-titres) — [microsoft.com/fr-fr/windows/tips/accessibility-settings](https://www.microsoft.com/fr-fr/windows/tips/accessibility-settings){ target="_blank" rel="noopener" }.
- **Cybermalveillance.gouv.fr — Pourquoi et comment bien gérer ses mises à jour ?** : bonnes pratiques officielles
  de maintenance de premier niveau — [cybermalveillance.gouv.fr](https://www.cybermalveillance.gouv.fr/tous-nos-contenus/bonnes-pratiques/mises-a-jour){ target="_blank" rel="noopener" }.
- **France Services** : réseau national de points d'accueil aux démarches administratives, structure de la mise en
  situation — [france-services.gouv.fr](https://www.france-services.gouv.fr/){ target="_blank" rel="noopener" }.

## Grille d'évaluation C8.1 — Mise en service et maintenance d'un poste (MP8)

**Production attendue :** une check-list de mise en service au format PDF, prête à être réutilisée par les
collègues de France Services Loudéac pour tout futur poste libre-service, accompagnée du message au prestataire
informatique, des réponses aux questions de synthèse, et d'une ligne notant l'ajustement fait suite au retour de
M. Guillard.

| Critère (référentiel C8.1) | Indicateurs observables | Niveau |
|---|---|---|
| Relation interpersonnelle de proximité et distanciée | Réglages ajustés à partir du retour réel de M. Guillard (joué par le binôme), et non d'une idée générale de « l'accessibilité » ; échange et signalement au prestataire menés avec la juste distance professionnelle, sans dépasser son rôle | -- / - / + / ++ |
| Organisation de l'espace de vie | Poste préparé, organisé et validé par le test de M. Guillard (accessibilité adaptée à sa perte de vision centrale, branchements, informations réseau) comme élément fonctionnel de l'espace d'accueil de la structure | -- / - / + / ++ |
| Réalisation des opérations d'entretien en toute sécurité | Bonnes pratiques de maintenance de premier niveau correctement identifiées et appliquées dans la limite des droits de l'agent, sans contournement d'une restriction de sécurité | -- / - / + / ++ |
