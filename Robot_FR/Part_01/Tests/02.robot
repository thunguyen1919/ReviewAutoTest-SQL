*** Settings ***
Documentation    Locator Strategies
Library    SeleniumLibrary

*** Variables ***
# id, name, css, xpath


*** Test Cases ***
#Select Element
#    [Documentation]    Locator Strategies
#    [Tags]    Second
#    open browser    http://supermarket-tws.somee.com/   Chrome
#    input text    name=ctl00$Header$TextBoxKeyword    Tadka Pan
#    click element    css=#LinkButtonSearch
#    sleep    2s
#    close browser

Select Element
    [Documentation]    Locator Strategies
    [Tags]    Second
    open browser    http://supermarket-tws.somee.com/   Chrome
    maximize browser window
    press keys    name=ctl00$Header$TextBoxKeyword    Tadka Pan    RETURN
    page should contain    Tadka Pan
    wait until element is visible    //*[@href="Single.aspx?Id=13"]
    click element    //*[@href="Single.aspx?Id=13"]
    sleep    3s
    close browser