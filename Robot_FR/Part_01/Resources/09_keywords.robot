*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
User searches for product
    go to    https://www.amazon.com/
    title should be    Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more
    click element    id=twotabsearchtextbox
    input text    id=twotabsearchtextbox    lego
    press keys    None  RETURN
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
    go to    https://www.amazon.com/
    title should be    Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more
    click element    xpath=//a[@data-nav-role="signin"]
    title should be    Amazon Sign-In
