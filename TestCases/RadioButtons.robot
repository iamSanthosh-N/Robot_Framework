*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  2seconds

    #selecting radio buttons
    select radio button  sex    Male
    select radio button  exp    5

    #selecting check boxes
    select checkbox  BlackTea
    select checkbox  RedTea
    unselect checkbox  BlackTea

    close browser

*** Keywords ***
