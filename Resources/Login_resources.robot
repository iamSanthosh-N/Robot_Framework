*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${login_url}  https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Keywords ***
OpenMyBrowser
    open browser  ${login_url}  ${browser}
    maximize browser window

CloseBrowsers
    close all browsers

OpenLoginPage
    go to  ${login_url}

InputUsername
    [Arguments]  ${username}
    clear element text  id:Email
    input text  id:Email    ${username}

InputPassword
    [Arguments]  ${password}
    clear element text  id:Password
    input text  id:Password     ${password}

ClickLogin
    click element  xpath://button[contains(text(),'Log in')]

clickLogout
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard
