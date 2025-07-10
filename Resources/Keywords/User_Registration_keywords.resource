*** Settings ***
Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/User_Registration_variables.py

*** Keywords ***

Enter register information
       [Arguments]     ${firstname}    ${lastname}    ${EMAIL}    ${PASSWORD}   ${CONFIRM PASSWORD}
       Click Element    ${register_link_locator}
       Click Element    ${gender_locator}
       Input Text    ${first_name_locator}    ${firstname}
       Input Text    ${last_name_locator}    ${lastname}
       Input Text    ${email_locator}   ${EMAIL}
       Input Text    ${password_locator}    ${PASSWORD}
       Input Text    ${confirm_password_locator}   ${CONFIRM PASSWORD}
       Click Element    ${register_button_locator}


Wait until Register Successfull
      Wait Until Element Is Visible    ${register_successful_text_locator}

# doubt == how to take the same register email and name every time while login

Wait Until Successfully Logged
      Wait Until Element Is Visible    ${logout_button_locator}
      Click Element    ${logout_button_locator}
      Wait Until Element Is Visible    ${login_locator}

Newsletter subscription test
      [Arguments]      ${newsletter_email}
      Input Text    ${newsletter_searchbox_locator}    ${newsletter_email}
      Click Element    ${subscribe_button_locator}
      Wait Until Element Is Visible    ${newsletter_confirmation_locator}
#      Page Should Contain    Thank you for signing up!















      

