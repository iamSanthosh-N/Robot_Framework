*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com/en/demo

*** Test Cases ***
TestingInputBox
    open browser  ${url}  ${browser}
    maximize browser window
    title should be  Store Demo - nopCommerce
    click element  xpath://span[@class='ico-caret sprite-image']
    click link  xpath://a[@class='ico-login']

    ${email_txt}  set variable  id:Username
    element should be visible  ${email_txt}
    element should be enabled  ${email_txt}

    input text  ${email_txt}    santhosh.santhu127@gmail.com
    sleep  5
    clear element text  ${email_txt}
    sleep  3
    close browser

*** Keywords ***

