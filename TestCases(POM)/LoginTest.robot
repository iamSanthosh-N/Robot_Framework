*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${broswer}  firefox
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    Open my browser  ${url}     ${broswer}
    Enter username  ${user}
    Enter password  ${pwd}
    Click submit
    sleep  3
    Verify successful login
    Close my browsers
