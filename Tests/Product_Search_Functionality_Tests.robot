*** Settings ***

Resource     ../Resources/Keywords/User_Registration_keywords.resource
Suite Setup   Open Browser     ${None}    gc
Test Setup    Run Keywords     Go To    ${demo_web_url}    AND     Maximize Browser Window
Suite Teardown      Close Browser


*** Test Cases ***
Product search functionality test
      [Tags]     TC04    smoke
      Product search test     ${product_name}