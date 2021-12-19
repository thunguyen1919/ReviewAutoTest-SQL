*** Settings ***
Documentation    Keyword as Function - Custom keyword
Resource    ../Resources/PO/14_keywords.robot

Test Teardown   User close browser

*** Test Cases ***
Login amazon with valid credential
    Open Amazon
    Open Sigin Page
    Input Credential    ${EMAIL}
    sleep    2s

Login amazon with invalid credential
    Open Amazon
    Open Sigin Page
    Input Credential    ${IN_EMAIL}
    sleep   2s

*** Keywords ***
Open Amazon
    open browser    ${URL}  ${BROWSER}
    maximize browser window
    wait until page contains element    ${HOME_PAGE_SIGN_IN_BUTTON}

Open Sigin Page
    click element    ${HOME_PAGE_SIGN_IN_BUTTON}
    wait until page contains element    ${EMAIL_FIELD}

Input Credential
    [Arguments]    ${email}
    input text    ${EMAIL_FIELD}   ${email}
    click element    ${CONTINUE_BUTTON}

User close browser
    close browser