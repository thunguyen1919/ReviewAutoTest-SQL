*** Settings ***
Library    SeleniumLibrary
Resource    ../TestData/ConfigData.robot

*** Keywords ***
Start TestCase
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2s

Finish TestCase
    close browser