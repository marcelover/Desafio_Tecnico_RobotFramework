*** settings ***
Resource    ../resources/setup_teardown_amazon.resource
Resource    ../resources/PO/Amazon/home.resource
Resource    ../resources/PO/Amazon/search.resource

Test Setup    Open Amazon
# Test Teardown    Close Browser

*** Test Cases ***
Scenario 1 - 


Scenario 2 - validating a product was added to the cart
    [Documentation]    Validate that a product can be searched and added to the cart
    Get Home Title
    Searching by livro
    Get Search Title
    Get First Product Title
    Click Buy Now And Sign In
    Buy Item Selected
