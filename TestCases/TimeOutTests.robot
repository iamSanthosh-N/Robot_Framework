*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Test Cases ***
RegistrationTest
    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium timeout  10seconds
    wait until page contains  Registeration         #default is 5sec
    set selenium speed  2
    select radio button  Gender  M
    input text  id:FirstName    Santhosh
    input text  name:LastName   N
    input text  name:Email  santhosh127@gmail.com
    input text  id:Password  santhu127
    input text  id:ConfirmPassword  santhu127

    close browser
