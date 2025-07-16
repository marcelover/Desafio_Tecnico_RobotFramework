*** settings ***
Resource    ../resources/setup_teardown_amazon.resource
Resource    ../resources/PO/Amazon/home.resource
Resource    ../resources/PO/Amazon/search.resource

Test Setup    Open Amazon
Test Teardown    Close Browser

*** Test Cases ***

Scenario 1 - validating a product was added to the cart
    [Documentation]    Validate that a product can be searched and added to the cart
    Given User Is On Home Page
    When User Searches For livro
    Then First Product Should Selected
    When User Clicks Buy Now And Logs In
    Then Purchase Should Be Successful
