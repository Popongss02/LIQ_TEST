*** Settings ***
Library    FlaUILibrary

*** Variables ***
${username}    LOANIQ11
${password}    password01
${loaniq_path}  LoanIQJ.exe
### Object Locators ###
${Loaniq_Login_Window}         Window[1]/TitleBar
${Username_Textfield}    (/Window[1]/Pane)/Pane[2]/Edit
${Password_Textfield}    (/Window[1]/Pane)/Pane[3]/Edit
${Login_Button}          (Window/Pane)/Button
${Login_Popup_OK_Button}    Window[1]/Button
${Loaniq_Maximize_Window}     (Window/TitleBar)/Button[2]
${Loaniq_Close_Window}     (Window/TitleBar)/Button[3]
${Logout_Popup_OK_Button}    (/Window/Pane[1])/Button[1]
*** Keywords ***
Launched App
    [Documentation]    This keyword is use to open the LIQ app.
    ...    @author:    NOracion    24OCT2023    - initial create
    launch application    ${loaniq_path}
    sleep    10s
    wait until element is visible   ${Loaniq_Login_Window}
Login User Credentials
    set text to textbox    ${Username_Textfield}   ${username}
    set text to textbox    ${Password_Textfield}   ${password}
    click    ${Login_Button}
    sleep    55s
    wait until element is visible    ${Login_Popup_OK_Button}
    click    ${Login_Popup_OK_Button}
    click    ${Loaniq_Maximize_Window}
Logout User
     click    /Window/Pane/Pane[5]/Tree/TreeItem/TreeItem[2]
     sleep    55s
     click    /Window[2]/Button
     sleep    20s
     click    /Window/MenuBar/MenuItem[4]
     sleep    20s
     click    /Window/Menu/MenuItem[18]
     select radiobutton    /Window/Menu/MenuItem[18]


#    click    ${loaniq_close_window}
#    sleep    20s
#    click    ${logout_popup_ok_button}

*** Test Cases ***
#TC01
#    launched app
#    login user credentials
#    logout user
click Radio_button
       select radiobutton    (/Window/Pane)/Pane[2]/Edit