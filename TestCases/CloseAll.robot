*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com  chrome
    maximize browser window

    open browser  http://www.practiceselenium.com/practice-form.html    chrome
    maximize browser window

    close all browsers
