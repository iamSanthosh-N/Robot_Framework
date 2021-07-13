*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
LoginTestCase
    open browser  https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    input text  id:txtUsername  Santhosh
    input text  id:txtPassword  santhu123

    capture element screenshot  xpath://img[1]  logo.png
    capture page screenshot  fullpage.png

    close browser
