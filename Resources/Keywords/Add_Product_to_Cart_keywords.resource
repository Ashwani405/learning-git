*** Settings ***
Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/User_Registration_variables.py

*** Keywords ***

Add product to cart test
      Click Element    ${Books_locator}
      Click Element    ${health_book_cart_locator}
      Wait Until Element Is Visible    ${added_product_message_locator}
      Scroll Element Into View    ${shoping_cart_locator}
      Click Element    ${shoping_cart_locator}
      Wait Until Element Is Visible    ${product_quantity_locator}
      Wait Until Element Is Visible    ${total_price_locator}

# doubt ==  how to verify total price and the quantity of the product
# Doubt == how to match the quantiy and price fresh every time while running automation