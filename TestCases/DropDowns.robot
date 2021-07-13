*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns and list boxes
    open browser  ${url}    ${browser}
    maximize browser window
    #method 1
    select from list by label  continents   Australia
    sleep  2
    #method 2
    select from list by index  continents   5
    sleep  2
    #method 3
    #select from list by value  continents  #value attr value

    #list box
    select from list by label  selenium_commands    Switch Commands
    sleep   2
    select from list by label  selenium_commands    Navigation Commands
    sleep  2
    unselect from list by label  selenium_commands  Switch Commands
    sleep  2
    close browser

*** Keywords ***
