*** Settings ***
Documentation    Continue on Failure
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open Amazon01.com
    [Documentation]    Continue on Failure
    [Tags]    001
    open browser    https://www.amazon.com/    Chrome
    maximize browser window
    builtin.run keyword and continue on failure   click link    Gift Cards
    sleep    2s
    close browser

Open Amazon02.com
    register keyword to run on failure    close browser
    [Documentation]    Continue on Failure
    [Tags]    002
    open browser    https://www.amazon.com/    Chrome
    maximize browser window
    click link    Gift Cards
    sleep    2s
    close browser

*** Keywords ***
