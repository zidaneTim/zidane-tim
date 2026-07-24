# 💶 SQ10 — Mon premier budget au tableur

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences Pix</span>
  <span title="Traiter des données">CRCN 1.3</span>
</div>

<p class="zt-kicker">CAPa SAPVER 1 — MG1 · Vie sociale</p>

<p class="zt-lede">Découvrir le tableur en calculant tout seul le budget d'un repas de fête.</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 2 séances</span>
  <span>:material-school-outline: MG1 — Vie sociale</span>
  <span>:material-tag-outline: Tableur</span>
</div>

## La situation

Pour les fêtes, ta famille te confie une mission : organiser le **repas de Noël pour 6 personnes** avec un budget de **60 €**. Tu notes tes achats sur un bout de papier, tu additionnes de tête… et tu te trompes de 15 €. Trop tard, tu as dépassé le budget. Avec un **tableur**, l'ordinateur aurait fait le calcul **à ta place**, sans erreur, et t'aurait prévenu.

!!! question "Problématique"
    Comment utiliser un tableur pour calculer et suivre un budget sans se tromper ?

## Objectifs

- Être capable de **saisir des données** dans un tableur (lignes, colonnes, cellules).
- Être capable d'utiliser la **formule SOMME** et le **format monétaire**.

## La notion : le tableur

### Lignes, colonnes, cellules

Un **tableur** (Excel, LibreOffice Calc, Google Sheets) est un grand quadrillage.

- Les **colonnes** sont des lettres : A, B, C…
- Les **lignes** sont des chiffres : 1, 2, 3…
- Une **cellule** est une case, repérée par sa colonne + sa ligne : **B2**, **C5**.

### Une formule commence toujours par `=`

L'ordinateur **calcule** si on commence par le signe **`=`**.

| Je tape | L'ordinateur affiche |
|---|---|
| `=3+2` | `5` |
| `=B2+B3` | la somme des cellules B2 et B3 |

### La formule SOMME

Pour additionner **plusieurs cellules à la suite**, on utilise **SOMME** :

> `=SOMME(B2:B6)` additionne toutes les cellules **de B2 à B6**.

C'est beaucoup plus rapide que `=B2+B3+B4+B5+B6`.

### Le format monétaire

Pour afficher **€** automatiquement, on sélectionne les cellules, puis on clique sur le bouton **format monétaire** (l'icône **€** ou pièce). `12` devient alors `12,00 €`.

## ✏️ Je m'entraîne

!!! example "Consigne 1 — seul (10 min)"
    Ouvrir un tableur. En **A1** écrire `Produit`, en **B1** écrire `Prix`. Saisir 3 produits et 3 prix dans les lignes en dessous.

!!! example "Consigne 2 — seul (10 min)"
    Sous les prix, taper `=SOMME(` puis sélectionner les cellules de prix à la souris, fermer avec `)` et valider avec **Entrée**. Vérifier le total.

!!! tip "Coup de pouce"
    Si le résultat affiche la formule au lieu du nombre, vérifie que tu as bien commencé par le signe **`=`** et qu'il n'y a pas d'espace avant.

## 🎯 Atelier : le budget du repas de fête

**Ta mission :** préparer, au tableur, le **budget du repas de Noël pour 6 personnes**, sans dépasser **60 €**.

!!! example "Consigne 1 — seul (10 min)"
    Créer un tableau avec les colonnes : **A = Aliment**, **B = Quantité**, **C = Prix**. Saisir au moins **6 aliments** (entrée, plat, dessert, boisson…) avec des prix réalistes de ton choix.

!!! example "Consigne 2 — seul (10 min)"
    En bas de la colonne **C**, calculer le **total** avec `=SOMME(C2:C7)` (adapte les numéros de ligne à ton tableau).

!!! example "Consigne 3 — seul (5 min)"
    Appliquer le **format monétaire (€)** à toute la colonne des prix et au total.

!!! example "Consigne 4 — seul (10 min)"
    Comparer ton total au budget de **60 €**. Répondre dans OneNote : **suis-je dans le budget ?** Si non, **quels aliments** je change pour y arriver ? Puis modifier un prix et **regarder le total se recalculer tout seul**.

!!! success "Défi (pour aller plus loin) ⭐"
    Ajouter une colonne **D = Prix pour 12 personnes** en doublant chaque prix avec une formule (`=C2*2`), puis calculer le nouveau total.

!!! tip "Où répondre ?"
    Dépose ton fichier tableur (ou une capture) et ta réponse à la consigne 4 dans ta trace **OneNote** de la classe (section MG1 — Vie sociale).

## Grille d'évaluation

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Saisie et organisation | Le tableau a des colonnes titrées et au moins 6 lignes de données correctement saisies. | -- / - / + / ++ |
| Formule et format | Le total est calculé avec `=SOMME(...)` (pas à la main) et le format monétaire € est appliqué ; l'élève constate le recalcul automatique. | -- / - / + / ++ |

!!! note "Compétences visées"
    MG1 — vie sociale, obj. 2.2.2 (outils et projets) · CRCN 1.3 (traiter des données) — rattachement CRCN par interprétation. Évaluation **formative**. (La progression associe aussi 5.1 à cette séance ; ici l'activité mobilise surtout 1.3, voir note de synchronisation.)
