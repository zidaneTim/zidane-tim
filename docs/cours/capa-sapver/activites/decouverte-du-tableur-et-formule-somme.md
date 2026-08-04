# 💶 Découvrir le tableur : cellules et formule SOMME

<div class="zt-pix" markdown>
  <span class="zt-pix-label">:material-certificate-outline: Compétences CRCN</span>
  <span title="Traiter des données">CRCN 1.3</span>
</div>

<p class="zt-kicker">CAPa SAPVER 1 — MG1 · Vie sociale</p>

<p class="zt-lede">Découvrir le tableur : lignes, colonnes, cellules et formule SOMME.</p>

<div class="zt-meta" markdown>
  <span>:material-clock-outline: 1 séance</span>
  <span>:material-school-outline: MG1 — Vie sociale</span>
  <span>:material-tag-outline: Tableur</span>
</div>

<small style="color:#7239f6">*Parcours Pix associé — Tableur pour calculer*</small>

## La situation

Tu es agent dans un EHPAD. Pour les fêtes, on te confie une mission : organiser le **repas de Noël pour 6 résidents** avec un budget de **60 €**. Tu notes tes achats sur un bout de papier, tu additionnes de tête… et tu te trompes de 15 €. Trop tard, tu as dépassé le budget. Avec un **tableur**, l'ordinateur aurait fait le calcul **à ta place**, sans erreur, et t'aurait prévenu.

!!! question "Problématique"
    Comment utiliser un tableur pour calculer sans se tromper ?

## Objectifs

<div class="zt-objectifs" markdown>

- Être capable de **saisir des données** dans un tableur (lignes, colonnes, cellules).
- Être capable d'utiliser la **formule SOMME**.

</div>

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

!!! tip "Où répondre ?"
    Dépose ton fichier tableur (ou une capture) dans ta trace **OneNote** de la classe (section MG1 — Vie sociale).

## Grille d'évaluation

<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Saisie et organisation | Le tableau a des colonnes titrées et 3 lignes de données correctement saisies. | -- / - / + / ++ |
| Formule SOMME | Le total est calculé avec `=SOMME(...)` (pas à la main). | -- / - / + / ++ |

</div>
