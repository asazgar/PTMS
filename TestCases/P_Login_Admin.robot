*** Settings ***
Library        SeleniumLibrary

*** Variables ***
*** Test Cases ***
LoginTest
   open browser  https://tms.podro.com/    chrome
   maximize browser window
   Title Should Be    TMS
   click element   xpath: /html/body/div/div/div/div[2]/nav/span
   wait until element is visible  name:identity
   input text      name:identity   Test
   wait until element is visible  name:password
   input text     name:password   123456
   click element   name:go
*** Keywords ***
Provided precondition
