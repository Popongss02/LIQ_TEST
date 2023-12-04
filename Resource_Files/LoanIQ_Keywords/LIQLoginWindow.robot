*** Settings ***
Library    FlaUILibrary
Library      Collections

Resource    ../../Configuration/Import_File.robot

*** Keywords ***
Launch LIQ
    [Documentation]    This keyword is use to open the LIQ app.
    ...    @author:    econdino    03NOV2023    - initial create
    [Arguments]    ${value}

    LIQ Launched Application     ${value}

LIQ Active Widow
    [Documentation]    This keyword is use to validate if loanIq windwow tab is activated.
    ...    @author:    econdino    03NOV2023    - initial create
    [Arguments]    ${locator}

    LIQ Wait Until Window Activated    ${locator}

LIQ Input UserName
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:    econdino    07NOV2023    - initial create
    [Arguments]    ${UserName}    ${value}
    
    LIQ Input Text    ${UserName}    ${value}

LIQ Input Password
    [Documentation]    This keyword is use to input Password in Password Textfield.
    ...    @author:    econdino    07NOV2023    - initial create
    [Arguments]    ${Password}    ${value}
    
    LIQ Input Text    ${Password}    ${value}

LIQ Click Login Button
    [Documentation]    This keyword is use to click login button.
    ...    @author:    econdino    07NOV2023    - initial create
    [Arguments]    ${Locator}
    
    LIQ Click Button    ${Login_Button}
