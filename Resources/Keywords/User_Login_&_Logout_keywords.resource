*** Settings ***
Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/User_Registration_variables.py

*** Keywords ***

Login verification
      [Arguments]       ${OLD EMAIL}    ${OLD PASSWORD}
      Click Element    ${login_locator}
      Input Text    ${login_email}    ${OLD EMAIL}
      Input Text    ${login_password}    ${OLD PASSWORD}
      Click Element    ${login_button_locator}