*** Settings ***
Documentation    Example data field register Dictionary
Resource    ../Resources/Keywords.robot

*** Variables ***
&{VALID_CREDENTIAL} =   email=thu@gmail.com    password=123456    error=locator-error
&{BLANK_EMAIL} =        email=                 password=123456    error=email is empty
&{BLANK_PASSWORD} =     email=thu@gmail.com    password=          error=password is empty

*** Test Cases ***
Log in with valid credential verbase
    Log in page verbase    ${VALID_CREDENTIAL.email}    ${VALID_CREDENTIAL.password}    ${VALID_CREDENTIAL.error}

Log in with valid credential
    Log in page    ${VALID_CREDENTIAL}

Log in with blank email
    Log in page    ${BLANK_EMAIL}

Log in with blank password
    Log in page    ${BLANK_PASSWORD}