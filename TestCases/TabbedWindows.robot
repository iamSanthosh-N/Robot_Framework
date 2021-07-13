*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser  http://demo.automationtesting.in/Windows.html  chrome
    click element  //*[@id="Tabbed"]/a/button
#    select window  SeleniumHQ Browser Automation
#    click element  //span[text()='About']
    sleep  3
    select window  Frames & windows
    click element  //a[text()='Home']
    sleep   3
    close all browsers