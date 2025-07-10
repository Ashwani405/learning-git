*** Settings ***
Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/Product_Search_Functionality_variables.py

*** Keywords ***

Product search test
      [Arguments]      ${product}
      Input Text    ${product_search_locator}    ${product}
      Click Element    ${search_button_locator}
      Wait Until Element Is Visible    ${search_word_locator}
      Click Element    ${product_cart_locator}