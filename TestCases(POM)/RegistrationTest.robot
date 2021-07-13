*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegistrationKeywords.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${broswer}  chrome

*** Test Cases ***
RegistrationTest
    Open my browser  ${url}     ${broswer}
    Click register link
    Enter FirstName  Santhosh
    Enter LastName  N
    Enter PhoneNo  9876543210
    Enter Email  santhosh@gmail.com
    Enter Address  Bangalore
    Enter City  Bangalore
    Enter State  USA
    Enter Postcode  100100
    Enter Country  CANADA
    Enter Username  santhu
    Enter Password  santhu123
    Enter ConfirmPassword  santhu123
    Enter Submit
    sleep  3
    Verify Successful registration
    Close my browsers
