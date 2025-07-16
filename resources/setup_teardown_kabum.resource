*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}       https://www.kabum.com.br

*** Keywords ***
Open Kabum
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close Browser
    Close All Browsers
