*** Settings ***
Documentation    Multiple Elements
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open Tiki.vn
    [Documentation]    Multiple Elements
    [Tags]    04
    open browser    https://tiki.vn/    Chrome
    maximize browser window
    press keys    //*[@data-view-id="main_search_form_input"]   lego    RETURN
    wait until page contains    Kết quả tìm kiếm cho `lego`
    wait until page contains element    xpath=//*[@class="product-item"]    limit=64
    page should contain element    xpath=//*[@class="product-item"]    limit=64
    sleep    2s
    close browser



*** Keywords ***
