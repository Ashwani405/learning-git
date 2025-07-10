*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     String
Variables   Common_Variables.py

*** Keywords ***

Generate Unique Date Without Special Characters
    ${Date}  Get Current Date
    ${Modified_Date}    Remove String    ${Date}    ${SPACE}  :  .  -
    [Return]   ${Modified_Date}

Generate And Return Unique Name
    ${Modified_Date}    Generate Unique Date Without Special Characters
    ${Unique_Name}  Catenate    Ashwani${Modified_Date}
    [Return]   ${Unique_Name}

Generate And Return Unique Last Name
    ${Modified_Date}    Generate Unique Date Without Special Characters
    ${Unique_Name}  Catenate    Verma${Modified_Date}
    [Return]   ${Unique_Name}

Generate And Return Unique Email
    ${Modified_Date}    Generate Unique Date Without Special Characters
    ${Unique_Name}  Catenate    Email${Modified_Date}@mail.com
    [Return]   ${Unique_Name}