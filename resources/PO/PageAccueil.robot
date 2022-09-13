*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Charger La Page Web
    Go To   ${GOOGLE_URL}

    Wait Until Page Contains  Google

Chercher Le Site Web

    Clear Element Text  name=q

    Input Text  name=q  Amazon

    Mouse Down  xpath=/html/body/div[1]/div[2]/div/img

    Mouse Up  xpath=/html/body/div[1]/div[2]/div/img

    Click Element   xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Wait Until Page Contains  Images


Naviger vers le site Amazon

    Click Element  xpath=//*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/a/h3

    Wait Until Page Contains  Amazon

    Click Element  xpath=//*[@id="sp-cc-rejectall-link"]


Rechercher un produit

    Clear Element Text  xpath=//*[@id="twotabsearchtextbox"]

    Input Text  xpath=//*[@id="twotabsearchtextbox"]  Banger bag

    Click Element  id=nav-search-submit-button

    Wait Until Page Contains  Banger bag





