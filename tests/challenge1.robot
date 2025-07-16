*** settings ***
Resource    ../resources/setup_teardown_kabum.resource
Resource    ../resources/PO/Kabum/home.resource
Resource    ../resources/PO/Kabum/search.resource

Test Setup    Open Kabum
Test Teardown    Close Browser

*** Test Cases ***


Scenario 1 - Validate if product was added to the cart
    [Documentation]    Validate that a product can be searched and added to the cart
    Given User Is On Kabum Home Page
    When User Searches For Product    Notebook
    And Select First Iten from list
    And Typing A CEP And Validating Available    14166000
    And Click On Buy Button
    # Selecione a garantia de +12 meses -> This step isn't available for this product
    ${item_name}=    And Go To Shopping Cart
    Then Checking Product Name In Cart    ${item_name}
