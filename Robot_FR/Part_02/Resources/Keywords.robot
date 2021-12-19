*** Settings ***


*** Keywords ***
Log in page verbase
    [Arguments]   ${EMAIL}    ${PASSWORD}    ${ERROR}
    log    ${EMAIL}
    log    ${PASSWORD}
    log    ${ERROR}

Log in page
   [Arguments]    ${INVALID_DATA}
   log    ${INVALID_DATA.email}
   log    ${INVALID_DATA.password}
   log    ${INVALID_DATA.error}