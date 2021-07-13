*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Test Cases ***
RegistrationTest
    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}
    set selenium implicit wait  10seconds
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    select radio button  Gender  M
    input text  id:FirstName1    Santhosh
    input text  name:LastName   N
    input text  name:Email  santhosh127@gmail.com
    input text  id:Password  santhu127
    input text  id:ConfirmPassword  santhu127

    close browser
