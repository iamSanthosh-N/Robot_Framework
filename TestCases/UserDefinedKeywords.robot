*** Settings ***
Library  SeleniumLibrary
#if keywords are already created in Resources directory then we can use the below command without using *** keywords *** section
Resource  ../Resources/resources.robot
*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle}=   LaunchBrowser3  ${url}  ${browser}
    log to console  ${PageTitle}
    log  ${PageTitle}
    input text  name:userName   santhosh
    input text  name:password   santhu123
    close browser

#*** Keywords ***
##user defined keywords without arguments
#LaunchBrowser1
#    open browser  ${url}    ${browser}
#    maximize browser window
#
##user defined keywords with arguments
#LaunchBrowser2
#    [Arguments]  ${appurl}   ${appbrowser}
#    open browser  ${appurl}    ${appbrowser}
#    maximize browser window
#
##user defined keywords with arguments and return value
#LaunchBrowser3
#    [Arguments]  ${appurl}   ${appbrowser}
#    open browser  ${appurl}    ${appbrowser}
#    maximize browser window
#    ${title}=   get title
#    [Return]  ${title}
