*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}       https://www.amazon.com.br

*** Keywords ***
Open Amazon
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close Browser
    Close All Browsers
