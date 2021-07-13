*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_resources.robot
Suite Setup  OpenMyBrowser
Suite Teardown  CloseBrowsers
Test Template  Invalid Login

*** Test Cases ***  username                  password
TC1                 admin@yourstore.com       ${EMPTY}
TC2                 admin@yourstore.com       xyz
TC3                 adm@yourstore.com         admin
TC4                 adm@yourstore.com         ${EMPTY}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    InputUsername  ${username}
    InputPassword  ${password}
    ClickLogin
    Error message should be visible
