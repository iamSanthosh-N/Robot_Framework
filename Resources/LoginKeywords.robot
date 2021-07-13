*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}     ${browser}
    open browser  ${url}    ${browser}
    maximize browser window

Enter username
    [Arguments]  ${username}
    input text  ${txt_LoginUserName}    ${username}

Enter password
    [Arguments]  ${password}
    input text  ${txt_LoginPassword}    ${password}

Click submit
    click element  ${submit}

Verify successful login
    title should be     Login: Mercury Tours

Close my browsers
    close all browsers
