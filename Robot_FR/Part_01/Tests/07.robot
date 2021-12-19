*** Settings ***
Documentation    Autocomplete and The Rest
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  http://itmscoaching.herokuapp.com/

*** Test Cases ***
Complete Web Form
    register keyword to run on failure    close browser
    [Documentation]    Complete Web Form
    [Tags]    Autocomplete Form
    open browser    ${url}  ${browser}
    maximize browser window
    scroll element into view    //a[@class='btn btn-lg'][normalize-space()='Complete Web Form']
    sleep   2s
    click element    //a[@class='btn btn-lg'][normalize-space()='Complete Web Form']
    sleep   2s
    input text    xpath=//input[@id='first-name']    Thu
    input text    xpath=//input[@id='last-name']    Nguyen
    input text    xpath=//input[@id='job-title']    Automation Tester
    click element    xpath=//input[@id='radio-button-2']
    select checkbox    id=checkbox-2
    scroll element into view    //a[@role='button']
#    click element   xpath=//select[@id='select-menu']
#    click element   xpath=//*[@id="select-menu"]/option[2]
    select from list by label    select-menu    0-1
    click element    id=datepicker
    click element    xpath=//td[@class='new day'][normalize-space()='2']
    click element    xpath=//a[@role='button']


    sleep    4s
    close browser