*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#user defined keywords without arguments
LaunchBrowser1
    open browser  ${url}    ${browser}
    maximize browser window

#user defined keywords with arguments
LaunchBrowser2
    [Arguments]  ${appurl}   ${appbrowser}
    open browser  ${appurl}    ${appbrowser}
    maximize browser window

#user defined keywords with arguments and return value
LaunchBrowser3
    [Arguments]  ${appurl}   ${appbrowser}
    open browser  ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]  ${title}