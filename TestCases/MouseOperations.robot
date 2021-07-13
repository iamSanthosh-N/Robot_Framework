*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseOperationsTest
    open browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    #to perform right click action
    open context menu  xpath://span[text()='right click me']
    sleep  3

    #double click action
    go to  http://testautomationpractice.blogspot.com/
    double click element  xpath://button[text()='Copy Text']
    sleep  3

    #drag and drop action
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop  id:box6  id:box106
    sleep  3

    close browser
