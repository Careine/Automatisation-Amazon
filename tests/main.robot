*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot
Resource  ../resources/PO/PageAccueil.robot
Resource  ../resources/PO/PageProduit.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test
*** Test Cases ***
Voir Produits Disponibles
    PageAccueil.Charger La Page Web
    PageAccueil.Chercher Le Site Web
    PageAccueil.Naviger vers le site Amazon
    PageAccueil.Rechercher un produit

Ajouter un produit au panier
    PageProduit.Choisir un produit
    PageProduit.Choisir la couleur
    PageProduit.Ajouter produit au panier