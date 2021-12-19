*** Settings ***
Documentation    Variable in RF
Resource    ../Resources/PO/13_locators.robot


*** Test Cases ***
Login amazon with valid credential
    open browser    ${URL}  ${BROWSER}
    maximize browser window
    wait until page contains element    ${HOME_PAGE_SIGN_IN_BUTTON}
    click element    ${HOME_PAGE_SIGN_IN_BUTTON}
    wait until page contains element    ${EMAIL_FIELD}
    input text    ${EMAIL_FIELD}   ${EMAIL}
    click element    ${CONTINUE_BUTTON}

    close browser