*** Settings ***
Documentation    Break the Script into Keywords
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.amazon.com/

*** Test Cases ***
User must sign in to check out
    Common keyword open browser
    User searches for product
    User adds product to shopping cart
    User clicks Proceed to Checkout button
    User close browser

User uses paging to browse more product
    Common keyword open browser
    User searches for product
    User click on Next button in pagination
    User close browser

User clicks on Sign in button
    Common keyword open browser
    User click signin button
    User close browser

*** Keywords ***
Common keyword open browser
    open browser    about:blank    ${browser}
    maximize browser window

User searches for product
    go to    ${url}
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
    sleep    2s

User click signin button
    go to    ${url}
    title should be    Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more
    click element    xpath=//a[@data-nav-role="signin"]
    title should be    Amazon Sign-In

User close browser
    close browser