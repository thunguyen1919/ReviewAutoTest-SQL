*** Settings ***
Documentation    Variable in RF
Library    SeleniumLibrary

*** Variables ***
#Biến toàn cục
${SCALAR_VAR} =    I'm a global variable
@{LIST_VAR} =    var1    var2

*** Test Cases ***
Dummy TC 1
    log    ${SCALAR_VAR}

Dummy TC 2
    log    ${SCALAR_VAR}

Local TC 1
    # biến local cho mỗi TC
    ${local_val} =  set variable    Local variable 1

Local TC 2
    # biến local cho mỗi TC
    ${local_val} =  set variable    Local variable 2

List TC 1
    log to console      ${LIST_VAR}[0]
    log to console    ${list_var}[1]
