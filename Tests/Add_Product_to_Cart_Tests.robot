*** Settings ***

Resource     ../Resources/Keywords/Add_Product_to_Cart_keywords.resource
Resource     ../Resources/Keywords/User_Login_&_Logout_keywords.resource
Suite Setup   Open Browser     ${None}    gc
Test Setup    Run Keywords     Go To    ${demo_web_url}    AND     Maximize Browser Window
Suite Teardown      Close Browser


*** Test Cases ***
Add to cart product verification
     [Tags]      TC03    smoke
     Login verification     ${registered_email}    ${registered_password}
     Add product to cart test