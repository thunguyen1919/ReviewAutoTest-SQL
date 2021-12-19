*** Settings ***

*** Variables ***
${NUMBER} =   50

*** Test Cases ***
Syntax of IF statement
    run keyword if    ${NUMBER} < 100   Keywords 1

Syntax of IF/ELSE statement
    ${NUMBER} =    set variable    200
    run keyword if    ${NUMBER} < 100   Keywords 1  ELSE    Keywords 2

Syntax of IF/ELSE ELSE/IF statement
    ${NUMBER} =    set variable    0
    run keyword if    ${NUMBER} < 100 and ${NUMBER} > 0    Keywords 1    ELSE IF  ${NUMBER} == 0    Keywords 3   ELSE    Keywords 2

Multi lines statements
    run keyword if    ${NUMBER} < 100   Keywords 1
    ...    ELSE IF    ${NUMBER} == 0    Keywords 3
    ...    ELSE                         Keywords 2

*** Keywords ***
Keywords 1
    log    Less than 100

Keywords 2
    log    Greater than 100

Keywords 3
    log    Equal zero