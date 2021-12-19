*** Settings ***
Documentation    Syntax Dictionary

*** Variables ***
&{DICT} =   key1=value1    key2=value2

*** Test Cases ***
Acess dictionary values
    log to console    ${DICT.key1}
    log to console    ${DICT.key2}