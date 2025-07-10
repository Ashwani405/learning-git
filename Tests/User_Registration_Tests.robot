*** Settings ***

Resource     ../Resources/Keywords/User_Registration_keywords.resource
Suite Setup   Open Browser     ${None}    gc
Test Setup    Run Keywords     Go To    ${demo_web_url}    AND     Maximize Browser Window
Suite Teardown      Close Browser


*** Test Cases ***
Registration functionality test
       [Tags]    TC01   Regression
       ${first name input}    Generate And Return Unique Name
       ${last name input}     Generate And Return Unique Last Name
       ${email input}   Generate And Return Unique Email
       Enter register information     ${first name input}    ${last name input}    ${email input}     ${password}     ${confirm_password}
       Wait until Register Successfull
       Click Element    ${logout_button_locator}

Login Logout Test
      [Tags]     TC02    Regression
      Login verification     ${registered_email}     ${registered_password}
      Wait Until Successfully Logged


Newsletter subscription
        [Tags]    TC06    sanity
        Newsletter subscription test     ${registered_email}

Wishlist Functionality
        [Tags]    TC_007   sanity
        Login verification     ${registered_email}    ${registered_password}

# wishlist me kaise add kare kisi product ko
# checkout process, payment method ko samjhna hai ache se






















# for running all the test cases in a file
# robot Tests\User_Registration_Tests.robot

#  for running all the test case with specific tag
#  robot -d Results -i Regression .\tests\User_Registration_Tests.robot

# for running the tests parrellely
# pabot --testlevelsplit -d Results .\tests\User_Registration_Tests.robot