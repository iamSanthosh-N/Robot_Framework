*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com/en


*** Test Cases ***
LoginTest
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    open browser    ${url}   ${browser}
    maximize browser window
    sleep  5
    click element  xpath://span[@class='ico-caret sprite-image']
    click link  xpath://a[@class='ico-login']
    input text  id:Username  santhosh.santhu127@gmail.com
    input text  id:Password  santhu123
    click element  xpath:(//input[@class='btn blue-button'])[2]
