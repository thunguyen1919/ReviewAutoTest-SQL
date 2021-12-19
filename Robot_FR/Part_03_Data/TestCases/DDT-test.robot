*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot
Library    DataDriver   ../TestData/TestData.csv

#pip install -U robotframework-datadriver[XLS]

Test Setup    common.Start TestCase
Test Teardown    common.Finish TestCase
#Test Template    Invalid Login Scenarios

*** Test Cases ***
Template example test case
    [Template]    Invalid Login Scenarios
    ${username}
    ${password}
    ${error_msg}

*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${username}    ${password}    ${error_msg}
    input text    ${txtbox_username}    ${username}
    input text    ${txtbox_password}    ${password}
    click button    ${btn_login}
    sleep    2s
    ELEMENT SHOULD CONTAIN    ${txt_error}  ${error_msg}