*** Settings ***
Documentation    Suite description
Resource       ../Keywords/K_Login_TMS.robot

*** Variables ***
${SiteUrl}   https://tms.podro.com/
${Browser}   chrome
${username}  PodroFleet
${password}  558Ww%86zD_@Sk9!


*** Test Cases ***
Test title
    Open my Browser   ${SiteUrl}   ${Browser}
    GotoLogin

    Enter UserName    ${username}
    Enter Password    ${password}
    Click Login

    Close Browser
