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
${PostalCodeOS}  1234567891
${AddressOS}    تهران  میدان نوبنیاد
${plateOS}     5
${unitOS}    1



${FirstAndLastnameOR}   Ahmad sazgar
${MobileOR}   09127988405
${NationalCodeOR}   0440053153
${PostalCodeOR}  1234567891
${AddressOR}    تهران  میدان نوبنیاد
${plateOR}     5
${unitOR}    1

# Shipping specifications
${parcelٌWeight}  1000
${parcelPrice}   25000
${content}       تخم مرغ
*** Test Cases ***
CreateOrder
    Open my Browser   ${SiteUrl}   ${Browser}
Login
    GotoLogin
    Login   ${username}   ${password}
ComboboxOS
    comboboxOS
CreateOrder

    Enter SenderOrder   ${FirstAndLastnameOS}   ${MobileOS}   ${NationalCodeOS}
    #sleep5
    Enter SenderOrderAddress   ${PostalCodeOS}   ${AddressOS}  ${plateOS}  ${unitOS}
    #sleep5
PartReceiver
    Enter ReceiverOrder   ${FirstAndLastnameOR}   ${MobileOR}   ${NationalCodeOR}
   # sleep5
    Enter ReceiverOrderAddress   ${PostalCodeOR}   ${AddressOR}  ${plateOR}  ${unitOR}
  #  sleep5
ShippingSpecifications

    Enter Shipping specifications  ${parcelٌWeight}   ${parcelPrice}  ${content}
Select SizeBox
    Select SizeBox
NextStep1
    NextStep1