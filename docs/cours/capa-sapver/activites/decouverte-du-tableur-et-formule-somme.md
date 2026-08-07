# 💶 Découvrir le tableur et construire un budget de fête

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN</span>
  <span title="Traiter des données">CRCN 1.3</span>
</div>

<p class="zt-kicker">CAPa SAPVER 1 — MG1 · Vie sociale</p>

<p class="zt-lede">Découvrir le tableur (lignes, colonnes, formule SOMME), puis construire au tableur le budget complet d'un repas de fête.</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 2 séances</span>
  <span>:material-school-outline: MG1 — Vie sociale</span>
  <span>:material-tag-outline: Tableur</span>
</div>

<small style="color:#7239f6">*Parcours Pix associé — Tableur pour calculer*</small>

## Objectifs pédagogiques

<div class="zt-objectifs" markdown>

- Être capable de **saisir des données** dans un tableur (lignes, colonnes, cellules) et d'utiliser la **formule SOMME**.
- Être capable de **construire un tableau** de budget avec plusieurs postes, d'appliquer le **format monétaire** et de constater le **recalcul automatique**.

</div>

## Mise en situation

Tu es agent dans un EHPAD. Pour les fêtes, on te confie une mission : organiser le **repas de Noël pour 6 résidents** avec un budget de **60 €**. Tu notes tes achats sur un bout de papier, tu additionnes de tête… et tu te trompes de 15 €. Trop tard, tu as dépassé le budget. Avec un **tableur**, l'ordinateur aurait fait le calcul **à ta place**, sans erreur.

## Problématique

!!! question "Problématique"
    Comment utiliser un tableur pour calculer et suivre un budget sans se tromper ?

## Travail à faire

### 📘 Notion — le tableur

Un **tableur** est un grand quadrillage : les **colonnes** sont des lettres (A, B, C…), les **lignes** des chiffres (1, 2, 3…), une **cellule** est repérée par sa colonne + sa ligne (**B2**, **C5**). Une formule commence toujours par **`=`** : `=3+2` affiche `5`, `=B2+B3` affiche la somme des cellules B2 et B3.

Pour additionner **plusieurs cellules à la suite**, on utilise **SOMME** : `=SOMME(B2:B6)`. Pour afficher **€** automatiquement, on sélectionne les cellules puis on clique sur le bouton **format monétaire**.

!!! example "Consigne 1 — seul (10 min)"
    Ouvrir un tableur. En **A1** écrire `Produit`, en **B1** écrire `Prix`. Saisir 3 produits et 3 prix dans les lignes en dessous.

!!! example "Consigne 2 — seul (10 min)"
    Sous les prix, taper `=SOMME(` puis sélectionner les cellules de prix à la souris, fermer avec `)` et valider avec **Entrée**. Vérifier le total.

!!! tip "Coup de pouce"
    Si le résultat affiche la formule au lieu du nombre, vérifie que tu as bien commencé par le signe **`=`** et qu'il n'y a pas d'espace avant.

### 🎯 Atelier — le budget du repas de fête

**Ta mission :** préparer, au tableur, le **budget du repas de Noël des résidents pour 6 personnes**, sans dépasser **60 €**.

!!! example "Consigne 1 — seul (10 min)"
    Créer un tableau avec les colonnes : **A = Aliment**, **B = Quantité**, **C = Prix**. Saisir au moins **6 aliments** avec des prix réalistes.

!!! example "Consigne 2 — seul (10 min)"
    En bas de la colonne **C**, calculer le **total** avec `=SOMME(C2:C7)` (adapte les numéros de ligne à ton tableau).

!!! example "Consigne 3 — seul (5 min)"
    Appliquer le **format monétaire (€)** à toute la colonne des prix et au total.

!!! example "Consigne 4 — seul (10 min)"
    Comparer ton total au budget de **60 €**. Répondre : **suis-je dans le budget ?** Si non, **quels aliments** je change ? Puis modifier un prix et **regarder le total se recalculer tout seul**.

!!! success "Défi (pour aller plus loin) ⭐"
    Ajouter une colonne **D = Prix pour 12 résidents** en doublant chaque prix avec une formule (`=C2*2`), puis calculer le nouveau total.

!!! tip "Où répondre ?"
    Dépose ton fichier tableur d'entraînement (notion), puis ton budget complet et ta réponse sur le respect du budget (atelier) dans ta trace **OneNote** de la classe (section MG1 — Vie sociale).

## Ressources

- Un tableur (Excel, Google Sheets ou équivalent, accessible via l'ENT).

## Grille d'évaluation

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Saisie et formule SOMME | Le tableau a des colonnes titrées, 3 lignes de données, et un total calculé avec `=SOMME(...)`. | -- / - / + / ++ |
| Construction du budget | Le tableau comporte au moins 6 aliments avec des prix réalistes, un total calculé, le format monétaire € appliqué et le recalcul automatique constaté. | -- / - / + / ++ |

</div>
