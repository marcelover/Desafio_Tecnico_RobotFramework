*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${first_product_title}    xpath=/html/body/div[1]/div[1]/div[1]/div[1]/div/span[1]/div[1]/div[3]
${button_buy_now}    id=buy-now-button
${input_email}    id=ap_email_login
${button_continue}    class=a-button-input
${input_password}    id=ap_password
${button_sign_in}    id=signInSubmit
${link_decline_prime}    id=prime-decline-button
${button_confirme_order}    id=placeOrder
${finish_order}    id=nav-checkout-title-header-text

*** keywords ***
Get Search Title
    [Documentation]    Get the title of the current page
    ${title}=    Get Title
    Should Be Equal As Strings    ${title}    Amazon.com.br : livro

Get First Product Title
    [Documentation]    Get first product in the search results
    Wait Until Element Is Visible    ${first_product_title}
    ${first_product_title}=    Click Element    ${first_product_title}

Click Buy Now And Sign In
    [Documentation]    Click the buy now button and sign in
    Wait Until Element Is Visible    ${button_buy_now}
    Click Button    ${button_buy_now}
    Wait Until Element Is Visible    ${input_email}
    Input Text    ${input_email}    ${EMAIL}
    Click Button    ${button_continue}
    Wait Until Element Is Visible    ${input_password}
    Input Text    ${input_password}    ${PASSWORD}
    Click Button    ${button_sign_in}
    
Buy Item Selected
    [Documentation]    follow the process to buy the item selected
    Wait Until Element Is Visible    ${link_decline_prime}
    Click Element    ${link_decline_prime}
    Get Text    ${finish_order}
    Wait Until Element Is Visible    ${button_confirme_order}
    # Click Button    ${button_confirme_order}
