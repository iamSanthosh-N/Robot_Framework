*** Settings ***

*** Test Cases ***
TC1 User Registration test
    [Tags]  regression
    log to console  This is user registration test
    log to console  User registration is over
TC2 LoginTest
    [Tags]  sanity
    log to console  This is login test
    log to console  Login test is over
TC3 Change user settings
    [Tags]  regression
    log to console  This is is changing user settings test
    log to console  Change user settings test is over
TC4 LogoutTest
    [Tags]  functional
    log to console  This is logout test
    log to console  Logout test is over
