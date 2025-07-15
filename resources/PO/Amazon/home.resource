*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_search}    id=twotabsearchtextbox
${search_button}    id=nav-search-submit-button
${item}    livro


*** keywords ***
Get Home Title
    [Documentation]    Get the title of the current page
    ${title}=    Get Title
    Should Be Equal As Strings    ${title}    Amazon.com.br | Tudo pra você, de A a Z.

Searching by livro
    [Documentation]    Search for an item on Amazon
    Wait Until Element Is Visible    ${input_search}
    Input Text    ${input_search}    ${item}
    Click Button    ${search_button}
