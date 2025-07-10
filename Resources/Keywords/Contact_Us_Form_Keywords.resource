*** Settings ***
Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/Contact_Us_Form_variables.py

*** Keywords ***

Contact us test
      [Arguments]      ${contact name}     ${contact email}    ${enquiry text}
      Click Element    ${contact_us_locator}
      Input Text    ${contact_fullname_locator}   ${contact name}
      Input Text    ${contact_email_locator}    ${contact email}
      Input Text    ${enquiry_textbox_locator}    ${enquiry text}
      Click Element    ${contact_submit_locator}
      Wait Until Element Is Visible    ${enquiry_successfull_locator}