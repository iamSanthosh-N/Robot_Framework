*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegistrationTest

    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium speed  2
    select radio button  Gender  M
    input text  id:FirstName    Santhosh
    input text  name:LastName   N
    input text  name:Email  santhosh127@gmail.com
    input text  id:Password  santhu127
    input text  id:ConfirmPassword  santhu127

    ${speed}=   get selenium speed
    log to console  ${speed}

    close browser
