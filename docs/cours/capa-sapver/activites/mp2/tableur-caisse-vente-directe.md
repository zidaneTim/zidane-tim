# 🧮 Construire un simulateur de caisse pour un marché de producteurs

## Contexte et problématique



Tu es en mission ponctuelle sur le stand d'une **AMAP du Pays de Loudéac**, au moment du Black Friday : la
productrice veut proposer une alternative locale et responsable (« Green Friday ») pour son marché du samedi. Elle
te confie la caisse et te demande un outil simple pour calculer rapidement le montant dû par chaque client et le
rendu de monnaie, sans erreur de calcul en pleine affluence.

!!! question "Problématique"
    « Comment construire, avec un tableur, un simulateur de caisse fiable qui calcule automatiquement un montant dû
    et un rendu de monnaie, quel que soit le panier du client ? »

## Objectifs pédagogiques



<div class="zt-objectifs" markdown>

- Calculer un total de commande (prix × quantités) et un rendu de monnaie à l'aide de formules automatiques
- Mettre en forme un tableau de caisse clair et utilisable en situation réelle de vente

</div>

## Travail à faire



**Construire le simulateur de caisse**

1. Créer un tableau des produits du stand (au moins 6 produits réalistes : légumes, œufs, miel, fromage, pain...)
   avec une colonne *Prix unitaire* en euros.
2. Construire une feuille « Commande » avec, pour chaque produit, une colonne *Quantité* que le client peut saisir,
   et une colonne *Sous-total* calculée automatiquement par une formule de multiplication.
3. Ajouter une cellule *Total commande* qui fait la somme de tous les sous-totaux avec la fonction `SOMME`.
4. Ajouter une cellule *Montant remis par le client* (saisie libre) et une cellule *Rendu de monnaie* calculée par
   soustraction (montant remis − total commande), avec une alerte visuelle (mise en forme conditionnelle rouge) si
   le montant remis est inférieur au total.
5. Mettre en forme le tableau pour qu'il soit lisible en situation de vente : format monétaire sur toutes les
   colonnes d'argent, lignes alternées ou bordures pour bien distinguer chaque produit.
6. Tester le simulateur avec trois commandes différentes (paniers variés, montants remis différents) et vérifier
   que le rendu de monnaie est toujours juste.

!!! tip "Astuce"
    Verrouiller (figer) les cellules contenant les formules pour éviter qu'un client ou un collègue ne les efface
    par erreur pendant une vente.

**Questions de synthèse**

- Pourquoi une alerte visuelle est-elle utile quand le montant remis est inférieur au total de la commande ?
- Quel avantage un tableau de caisse automatisé a-t-il par rapport à un calcul mental en pleine affluence sur un
  marché ?

??? tip "Vérifier mes réponses"
    - L'alerte visuelle évite de rendre un mauvais montant de monnaie par inattention, ce qui protégerait à la fois
      le client et la trésorerie du stand.
    - Un tableau automatisé élimine le risque d'erreur de calcul mental, fait gagner du temps sur chaque vente, et
      reste fiable même en cas d'affluence ou de fatigue en fin de marché.

!!! tip "Où répondre ?"
    Dépose ton fichier tableur avec les trois commandes testées dans ton bloc-notes **OneNote**, section
    *MP2 — Communication professionnelle*.

## Ressources et outils



- **Tableur (Excel/LibreOffice Calc)** : pour construire le simulateur — formules `SOMME`, multiplication,
  soustraction, mise en forme conditionnelle.

## Compétences CRCN et parcours Pix

- **CRCN 4.2.6** — Tableur professionnel.

## Grille d'évaluation



<div class="zt-grille" markdown>

| Critère | Indicateurs observables | Niveau |
|---|---|---|
| Formules de calcul (4.2.6) | Total de commande et rendu de monnaie sont calculés automatiquement et juste sur les trois tests. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Mise en forme et alerte | Format monétaire appliqué, alerte visuelle fonctionnelle en cas de montant insuffisant. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |
| Utilisabilité en situation réelle | Le tableau reste lisible et directement utilisable en conditions de vente sur un stand. | Insatisfaisant / À consolider / Satisfaisant / Très satisfaisant |

</div>
