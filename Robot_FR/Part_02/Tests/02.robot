*** Settings ***
Library    String

*** Test Cases ***
#FOR Loop With Upper Bound Range
#    ${Index} =  set variable    0
#    FOR    ${Index}    IN RANGE    5
#        ${RANDOM_STRING} =  GENERATE RANDOM STRING    ${Index}
#        log to console    ${RANDOM_STRING}
#    END

#FOR Loop with List
#    ${ITEMS} =  create list    Item 1   Item 2  Item 3
#    FOR    ${ITEM}    IN    @{ITEMS}
#        log to console    ${ITEM}
#    END

#FOR Loop with Steps
#    FOR    ${EVEN_NUMBER}   IN RANGE    0   20    2
#        log to console    ${EVEN_NUMBER}
#    END

#Exit a FOR Loop
#    FOR    ${EVEN_NUMBER}    IN RANGE    0   20    2
#        log to console    ${EVEN_NUMBER}
#        exit for loop if    ${EVEN_NUMBER} == 10
#    END

#Repeat a Keyword many times
##    repeat keyword    5 times   Do Something
##    repeat keyword    5    Do Something
#    repeat keyword    3 s   Do Something

Generate random emails
    FOR    ${Index}    IN RANGE    5
        ${random_string} =  GENERATE RANDOM STRING    8    [LOWER]
        ${random_email} =   set variable    ${random_string}@gmail.com
        log to console    ${random_email}
    END

*** Keywords ***
Do Something
    log to console    REPEATING