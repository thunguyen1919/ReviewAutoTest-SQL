*** Settings ***
Documentation    Your first Auto scrip Part 1
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
#Ten test case
Open Amazon.com
    [Documentation]    Your first Auto scrip Part 1
    [Tags]    first
    open browser    https://www.amazon.com/    Chrome
    maximize browser window
    sleep    2s
    close browser


*** Keywords ***

