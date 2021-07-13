*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
AlertHandling
    open browser      http://testautomationpractice.blogspot.com/   chrome
    maximize browser window
    click element  //div[@class='widget-content']/button[1]
    sleep  3
    #handle alert  accept     #this will move to alert and clicks ok button
    handle alert  dismiss    #this will move to alert and selects cancel
    #handle alert  leave     #this will move to alert and do nothing
    #alert should be present  Press a button!    #this will check whether the mentioned text is present in the alert or not
    #alert should not be present  Press a button!