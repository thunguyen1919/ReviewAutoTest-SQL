*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot
Library    DataDriver   ../TestData/TestData.xlsx   sheet_name=Sheet1

#pip install -U robotframework-datadriver[XLS]

Suite Setup    common.Start TestCase
Suite Teardown    common.Finish TestCase
Test Template    Invalid Login Scenarios

*** Test Cases ***
Verify Login Fails with invalid creds   ${username}    ${password}    ${error_msg}

*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${username}    ${password}    ${error_msg}
    input text    ${txtbox_username}    ${username}
    input text    ${txtbox_password}    ${password}
    click button    ${btn_login}
    sleep    2s
    ELEMENT SHOULD CONTAIN    ${txt_error}  ${error_msg}