*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationTest
    open browser  https://www.google.co.in/  chrome
    maximize browser window
    ${location}=    get location
    log to console  ${location}

    sleep  3

    go to  https://www.bing.com/
    ${location}=    get location
    log to console  ${location}

    sleep   3

    go back
    ${location}=    get location
    log to console  ${location}

    close browser

