*** Settings ***
Library        SeleniumLibrary
Variables      ../Objects/Login.py

*** Keywords ***
Close Browser
   close all browsers
Open my Browser
   [Arguments]    ${SiteUrl}    ${Browser}
   open browser    ${SiteUrl}    ${Browser}
   maximize browser window
GotoLogin
   click element   ${linkLogin}
EnterUserName
   [Arguments]    ${username}
   wait until element is visible  ${txtUsername}
   input text  ${txtUsername}    ${Username}

EnterPassword
   [Arguments]    ${password}
   input text  ${txtPassword}    ${password}
Click Login
   click button   ${btnLogin}
