*** Settings ***
Documentation    Suite description
Resource       ../Keywords/K_CreateOrder_TMS.robot
Resource       ../Keywords/K_Login_TMS.robot
*** Variables ***
${SiteUrl}   https://tms.podro.com/
${Browser}   chrome
${username}  PodroFleet
${password}  558Ww%86zD_@Sk9!

${FirstAndLastnameOS}   Ahmad sazgar
${MobileOS}   09127988405
${NationalCodeOS}   0440053153
${PostalCodeOS}  12345678911
${AddressOS}    تهران  میدان نوبنیاد
${plateOS}     5
${unitOS}    1



${FirstAndLastnameOR}   Ahmad sazgar
${MobileOR}   09127988405
${NationalCodeOR}   0440053153
${PostalCodeOR}  12345678911
${AddressOR}    تهران  میدان نوبنیاد
${plateOR}     5
${unitOR}    1
*** Test Cases ***
CreateOrder
    Open my Browser   ${SiteUrl}   ${Browser}
Login
    GotoLogin
    Login   ${username}   ${password}
CreateOrder
    Enter SenderOrder   ${FirstAndLastnameOS}   ${MobileOS}   ${NationalCodeOS}
    sleep5
    Enter SenderOrderAddress   ${PostalCodeOS}   ${AddressOS}  ${plateOS}  ${unitOS}
    sleep5

    Enter ReceiverOrder   ${FirstAndLastnameOR}   ${MobileOR}   ${NationalCodeOR}
    sleep5
    Enter ReceiverOrderAddress   ${PostalCodeOR}   ${AddressOR}  ${plateOR}  ${unitOR}
    sleep5