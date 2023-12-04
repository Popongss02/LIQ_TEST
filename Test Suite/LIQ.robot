*** Settings ***
Library    FlaUILibrary

Resource    ../Configuration/Import_File.robot



*** Test Cases ***
TC012
  LIQLoginWindow.Launch LIQ    ${loaniq_path}
  sleep    15s
  LIQLoginWindow.LIQ Active Widow    ${Loaniq_Login_Window}
  LIQLoginWindow.LIQ Input UserName    ${Username_Textfield}    ${Username}
  LIQLoginWindow.LIQ Input Password    ${Password_Textfield}    ${password}
