*** Settings ***

Suite Setup     log to console  Opening Browser
Suite Teardown  log to console  Closing Browser

Test Setup  log to console  Login to application
Test Teardown  log to console   Logout from application

*** Test Cases ***
TC1 Prepaid recharge
    log to console  This is prepaid recharge test case

TC2 Postpaid recharge
    log to console  This is postpaid recharge test case

TC3 Search
    log to console  This is search test case
