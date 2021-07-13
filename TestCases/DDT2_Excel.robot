*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_resources.robot
Library     DataDriver     ../TestData/LoginData.xlsx  sheet_name=Sheet1
Suite Setup  OpenMyBrowser
Suite Teardown  CloseBrowsers
Test Template  Invalid Login

*** Test Cases ***
TC1     #${username}     ${password}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    InputUsername  ${username}
    InputPassword  ${password}
    ClickLogin
    Error message should be visible
