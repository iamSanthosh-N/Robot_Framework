*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html  chrome
    maximize browser window
    #to execute till the mentioned pixel
    #execute javascript  window.scrollTo(0,2500)

    #to scroll till the element is found
    #scroll element into view  //*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[2]

    #to scroll till end of the page
    execute javascript  window.scrollTo(0,document.body.scrollHeight)

    sleep  3
    #to scroll back to top of the page
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)