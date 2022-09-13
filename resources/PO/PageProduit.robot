*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choisir un produit  
    Sleep  3

    Scroll Element Into View   xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[5]/div/div/div/div/div[2]/div[2]/h2/a
    

    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[5]/div/div/div/div/div[2]/div[2]/h2/a
    
    Wait Until Page Contains  Ajouter à votre liste

Choisir la couleur

    Click Element   id=color_name_1

    Wait Until Page Contains  Ajouter à votre liste

Ajouter produit au panier
    Click Element   id=add-to-wishlist-button-submit

    Wait Until Page Contains  Afficher votre liste

*** Comments ***
Click Button  xpath:/html/body/div[2]/div[3]/div[5]/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div[2]/div/div/div/form/div/div/div[4]/div[1]/span[1]/span/span/input



    
    
        
        