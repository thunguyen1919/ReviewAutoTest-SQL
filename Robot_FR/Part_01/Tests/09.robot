*** Settings ***
Documentation    Resource Files
Resource    ../Resources/09_keywords.robot
Resource    ../Resources/common_keywords.robot

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