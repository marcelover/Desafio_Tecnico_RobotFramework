*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_search_product}     xpath=//input[@data-testid="searchbar-search-input"]
${search_button}            xpath=//button[@data-testid="buttonBuscaKabum"]

*** Keywords ***
Given User Is On Kabum Home Page
    [Documentation]    Get the title of the current page
    ${title}=    Get Title
    Should Be Equal As Strings    ${title}    KaBuM! | Ofertas em Tech e Gamer? Só se for no KaBuM!

When User Searches For Product
    [Arguments]    ${product}
    Wait Until Element Is Visible    ${input_search_product}
    Click Element    ${input_search_product}
    # Probably Kabum's website doesn't accept typping using automation tools
    # Simulating a human typing.
    ${characters}=    Evaluate    list('${product}')
    FOR    ${char}    IN    @{characters}
       Press Key    ${input_search_product}    ${char}
       Sleep    0.5
    END
    Wait Until Element Is Visible    ${search_button}
    Click Element    ${search_button}
