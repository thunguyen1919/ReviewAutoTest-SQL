*** Settings ***
Documentation    Setup, Teardown
Resource    ../Resources/09_keywords.robot
Resource    ../Resources/common_keywords.robot

# thực thi trước/ sau cho MỖI TC
Test Setup    Common keyword open browser
Test Teardown    User close browser

# set up cho toàn bộ Suite
# thực thi trước/ sau cho tất cả TC
#Suite Setup    Create data test
#Suite Teardown  Clear all data test

*** Test Cases ***
User must sign in to check out
    User searches for product
    User adds product to shopping cart
    User clicks Proceed to Checkout button

User uses paging to browse more product
    User searches for product
    User click on Next button in pagination

User clicks on Sign in button
    User click signin button