*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}     ${browser}
    open browser  ${url}    ${browser}
    maximize browser window

Click register link
    click link  ${link_reg}

Enter FirstName
    [Arguments]  ${firstname}
    input text  ${txt_FirstName}    ${firstname}

Enter LastName
    [Arguments]  ${lastname}
    input text  ${txt_LastName}    ${lastname}

Enter PhoneNo
    [Arguments]  ${phoneno}
    input text  ${txt_PhoneNo}  ${phoneno}

Enter Email
    [Arguments]  ${email}
    input text  ${txt_Email}    ${email}

Enter Address
    [Arguments]  ${address}
    input text  ${txt_Address}  ${address}

Enter City
    [Arguments]  ${city}
    input text  ${txt_City}     ${city}

Enter State
    [Arguments]  ${state}
    input text  ${txt_State}    ${state}

Enter Postcode
    [Arguments]  ${postcode}
    input text  ${txt_PostCode}     ${postcode}

Enter Country
    [Arguments]  ${country}
    select from list by label   ${drp_Country}  ${country}

Enter Username
    [Arguments]  ${username}
    input text  ${txt_UserName}     ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_Password}     ${password}

Enter ConfirmPassword
    [Arguments]  ${confirmpassword}
    input text  ${txt_ConfirmPassword}  ${confirmpassword}

Enter Submit
    click element  ${btn_Submit}

Verify Successful registration
    page should contain  Thank you for registering.

Close my browsers
    close all browsers

