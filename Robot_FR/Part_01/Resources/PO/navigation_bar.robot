*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Search for Product
    click element    id=twotabsearchtextbox

Enter for Search
    press keys    None  RETURN

Click Signin Button
    click element    xpath=//a[@data-nav-role="signin"]
