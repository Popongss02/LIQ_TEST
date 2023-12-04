*** Settings ***
Library    FlaUILibrary
Library      Collections

*** Keywords ***
LIQ Launched Application
    [Documentation]    This keyword is use to launh liq.
    ...    @author:    econdino    26OCT2023    - initial create
    [Arguments]    ${value}=None     ${fieledName}=None

    launch application     ${value}

LIQ Wait Until Window Activated
    [Documentation]    This keyword is use to validate Active window in liq.
    ...    @author:    econdino    26OCT2023    - initial create
    [Arguments]    ${locator}

    wait until element is visible    ${locator}

LIQ Input Text
    [Documentation]    This keyword is use to input text in liq.
    ...    @author:    econdino    26OCT2023    - initial create
    [Arguments]     ${locator}     ${value}=None     ${fieledName}=None

    return from keyword if   '${value}'=='None' or '${value}'=='${EMPTY}'

    set text to textbox      ${locator}     ${value}

LIQ Click Button
    [Documentation]    This keyword is use to click button in liq.
    ...    @author:    econdino    26OCT2023    - initial create
    [Arguments]     ${locator}     ${fieledName}=None

    click    ${locator}

