*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Load Page
    go to    https://www.amazon.com/

Verify Page Load
    title should be    Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more