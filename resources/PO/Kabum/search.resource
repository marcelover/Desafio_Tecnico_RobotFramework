*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${first_product}            xpath=//*[@id="listing"]/div[3]/div/div/div[2]/div/main/div[1]/article[1]/a[1]
${input_cep}                id=inputCalcularFrete
${button_freight}           id=botaoCalcularFrete
${freight_express}           xpath=//li[1]//span[@class="flex items-center gap-4 text-xxs font-bold"][1]
${freight_express_price}    xpath=//li[1]/div[2]//span[1]
${freight_default}           xpath=//li[2]/div[1]//span[1]
${freight_default_price}           xpath=//li[2]/div[2]//span[1]
${button_buy}               xpath=//*[@id="main-content"]/div[1]/div[1]/div[1]/div[3]/div[2]/button[2]
${product_name}    xpath=//*[@id=":rc:"]
${button_go_to_cart}    xpath=//*[@id="main-content"]/div[1]/div/div/section/button[1]    
${product_name_in_cart}    xpath=//*[@id="sellersContainer"]/div/div/div/div/div/div/div[1]/div[1]/a

*** Keywords ***
And Select First Iten from list
    [Documentation]    Select the first product from the search results
    Wait Until Page Contains Element    ${first_product}
    Click Link    ${first_product}
    
And Typing A ${CEP} And Validating Available
    [Documentation]    Input a CEP and validate the available freight options
    [Arguments]    ${CEP}
    Wait Until Element Is Visible    ${input_cep}
    # It's necessary to click the input field before typing to cursor start at the beginning
    Click Element    ${input_cep}
    Input Text    ${input_cep}    ${CEP}
    Click Button    ${button_freight}
    Wait Until Element Is Visible    ${freight_express}
    ${freight_info_express}=    Get Text    ${freight_express}
    Should Be Equal As Strings    ${freight_info_express}    Expressa
    ${freight_info_express_price}=    Get Text    ${freight_express_price}
    Should Be Equal As Strings    ${freight_info_express_price}    Grátis
    ${freight_info_default}=    Get Text    ${freight_default}
    Should Be Equal As Strings    ${freight_info_default}    Padrão
    ${freight_info_default_price}=    Get Text    ${freight_default_price}
    Should Be Equal As Strings    ${freight_info_default_price}    Grátis

And Click On Buy Button
    [Documentation]    Click on the buy button for the product
    Wait Until Element Is Visible    ${button_buy}
    Click Element    ${button_buy}

And Go To Shopping Cart
    [Documentation]    Navigate to the shopping cart
    Wait Until Element Is Visible    ${product_name}
    ${product_name_text}=    Get Text    ${product_name}
    Click Button    ${button_go_to_cart}
    [RETURN]    ${product_name_text}

Then Checking Product Name In Cart
    [Documentation]    Validate that the product name in the cart matches the expected product name
    [Arguments]    ${product_name_text}
    Wait Until Element Is Visible    ${product_name_in_cart}
    ${product_name_in_cart_text}=    Get Text    ${product_name_in_cart}
    Should Be Equal As Strings    ${product_name_in_cart_text}    ${product_name_text}
