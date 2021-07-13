*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser  http://demo.guru99.com/test/newtours/  chrome
    maximize browser window

    ${AllLinksCount}=   get element count  xpath://a
    log to console  ${AllLinksCount}

#    @{LinkItems}    create list
    : FOR   ${i}    IN RANGE    1   ${AllLinksCount}+1
    \   ${LinkText}=    get text    xpath:(//a)[${i}]
    \   log to console  ${LinkText}

    close browser

