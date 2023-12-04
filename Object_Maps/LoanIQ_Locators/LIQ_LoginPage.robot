*** Settings ***
Library    FlaUILibrary

*** Variables ***
### LIQ Login Window ###
${Loaniq_Login_Window}     /Window/TitleBar
${Username_Textfield}    /Window/Pane/Pane[2]/Edit
${Password_Textfield}    /Window/Pane/Pane[3]/Edit
${Login_Button}          /Window/Pane/Button

### LIQ Warning Message Box Window Login ###
${Login_Popup_OK_Button}    Window[1]/Button

### LIQ Dashboard Window ###
${Loaniq_Maximize_Window}     (Window/TitleBar)/Button[2]
${Loaniq_Close_Window}     (Window/TitleBar)/Button[3]
${Logout_Popup_OK_Button}    (/Window/Pane[1])/Button[1]
