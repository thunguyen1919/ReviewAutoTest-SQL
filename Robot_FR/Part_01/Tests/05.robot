*** Settings ***
Documentation    Phan trang Product
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Phan trang Product
    [Documentation]    Phan trang Product
    [Tags]    001
    open browser    http://supermarket-tws.somee.com/   Chrome
    maximize browser window
    #click link    partial link = SHOP
    click link    SHOP NOW
    click element    css=[class="sorting-left"]
    click element    //*[@value="18"]
    wait until page contains element    css=[class="snipcart-thumb"]    limit=18
    page should contain element    css=[class="snipcart-thumb"]    limit=18
    sleep    2s
    close browser


*** Keywords ***

