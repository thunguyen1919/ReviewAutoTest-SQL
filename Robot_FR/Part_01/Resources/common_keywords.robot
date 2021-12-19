*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Common keyword open browser
    open browser    about:blank    Chrome
    maximize browser window

User close browser
    close browser