*** Settings ***
Documentation    Enviroment Dictionary

*** Variables ***
&{URL} =   staging=staging-amazon.com   product=product-amazon.com
${ENV} =    staging

*** Test Cases ***
Open different enviroment
    log to console    ${URL.${ENV}}