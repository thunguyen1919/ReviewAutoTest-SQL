*** Settings ***
Documentation    Wait
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open Amazon.com
    [Documentation]    Wait
    [Tags]    03
    open browser    https://www.amazon.com/    Chrome
    maximize browser window
    press keys    id=twotabsearchtextbox   lego    RETURN
    page should contain   results for "lego"
    click element    //*[@data-uuid="s-searchgrid-carousel:1"]
    sleep    2s
    close browser

*** Keywords ***

