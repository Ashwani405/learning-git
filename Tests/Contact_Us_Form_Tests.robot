*** Settings ***

Resource     ../Resources/Keywords/Contact_Us_Form_Keywords.resource
Suite Setup   Open Browser     ${None}    gc
Test Setup    Run Keywords     Go To    ${demo_web_url}    AND     Maximize Browser Window
Suite Teardown      Close Browser
*** Test Cases ***
Contact us functionality test
       [Tags]    TC05    smoke
       Contact us test     ${name}    ${registered_email}    ${enquiry_message}