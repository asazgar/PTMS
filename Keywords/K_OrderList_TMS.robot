*** Settings ***
Library        SeleniumLibrary
Variables      ../Objects/CreateOrder.py

*** Keywords ***


GotoCreateOrder
   wait until element is visible   ${linkPartCreateOrder}

   click element   ${linkPartCreateOrder}
Enter SenderOrder
   [Arguments]    ${FirstAndLastnameOS}   ${MobileOS}   ${NationalCodeOS}

   wait until element is visible  ${TXTFirstAndLastnameOS}
   input text  ${TXTFirstAndLastnameOS}    ${FirstAndLastnameOS}
   input text  ${TXTMobileOS}    ${MobileOS}
   input text  ${TXTNationalCodeOS}    ${NationalCodeOS}

Enter SenderOrderAddress
   [Arguments]     ${PostalCodeOS}   ${AddressOS}  ${plateOS}  ${unitOS}

   input text  ${TXTPostalCodeOS}    ${PostalCodeOS}
   input text  ${TXTAddressOS}    ${AddressOS}
   input text  ${TXTplateOS}    ${plateOS}
   input text  ${TXTunitOS}     ${unitOS}

Enter ReceiverOrder
   [Arguments]    ${FirstAndLastnameOR}   ${MobileOR}   ${NationalCodeOR}

   wait until element is visible  ${TXTFirstAndLastnameOR}
   input text  ${TXTFirstAndLastnameOR}    ${FirstAndLastnameOR}
   input text  ${TXTMobileOR}    ${MobileOR}
   input text  ${TXTNationalCodeOR}    ${NationalCodeOR}

Enter ReceiverOrderAddress
   [Arguments]       ${PostalCodeOR}   ${AddressOR}  ${plateOR}  ${unitOR}
   input text  ${TXTPostalCodeOR}    ${PostalCodeOR}
   input text  ${TXTAddressOR}    ${AddressOR}
   input text  ${TXTplateOR}    ${plateOR}
   input text  ${TXTunitOR}     ${unitOR}
Enter Shipping specifications
   [Arguments]    ${parcelٌWeight}   ${parcelPrice}  ${content}
   input text  ${TXTparcelٌWeight}    ${parcelٌWeight}
   input text  ${TXTparcelPrice}    ${parcelPrice}
   input text  ${TXTcontent}    ${content}
Select SizeBox
   wait until element is visible  ${TXTSize2}

   click element   ${TXTSize2}
ComboboxOS
   wait until element is visible  ${ProvinceAndCityOS}
   click button   ${ProvinceAndCityOS}
   wait until element is visible  ${SProvinceAndCityOS}
   input text  ${SProvinceAndCityOS}   تهران - ت
   wait until element is visible  ${CProvinceAndCityOS}
   click button   ${CProvinceAndCityOS}
ComboboxOR
   wait until element is visible  ${ProvinceAndCityOR}
   click button   ${ProvinceAndCityOR}
   wait until element is visible  ${SProvinceAndCityOR}
   input text  ${SProvinceAndCityOR}   تهران - ت
   wait until element is visible  ${CProvinceAndCityOR}
   click button   ${CProvinceAndCityOR}
   #Mouse Down  ${CProvinceAndCityOS}
   #click element     ${CProvinceAndCityOS}
Service
   wait until element is visible  ${Service}
   click button   ${Service}
   click button    ${CService}
TimeSendorder
   wait until element is visible  ${TimeSendorder}
   click element  ${TimeSendorder}
NextStep1

   click button    ${btnNextStep}

btnfinalOrder
  wait until element is visible  ${btnfinalOrder}
  click button    ${btnfinalOrder}

