*** Settings ***
Library    SeleniumLibrary
Resource    PO/homepage.robot
Resource    PO/search_result.robot
Resource    PO/navigation_bar.robot

*** Variables ***


*** Keywords ***
User searches for product
    homepage.Load Page
    homepage.Verify Page Load
    navigation_bar.Search for Product
    search_result.Select Product at Position 1
    navigation_bar.Enter for Search
#    page should contain    results for "lego"
    wait until element is visible    xpath=//div[@data-cel-widget='search_result_2']

User adds product to shopping cart
    click element    xpath=//div[@data-cel-widget='search_result_2']
    wait until element is visible    xpath=//a[@title="See All Buying Options"]
    click element    xpath=//a[@title="See All Buying Options"]

User clicks Proceed to Checkout button
    wait until element is visible    name=submit.addToCart
    click element    name=submit.addToCart
    click element    id=hlb-ptc-btn-native
    title should be    Amazon Sign-In

User click on Next button in pagination
    scroll element into view    xpath=//*[contains(text(),'Next')]
    click element    xpath=//*[contains(text(),'Next')]

User click signin button
    homepage.Load Page
    homepage.Verify Page Load
    navigation_bar.Click Signin Button
    title should be    Amazon Sign-In
