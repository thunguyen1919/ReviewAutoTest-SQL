*** Settings ***
Documentation    POM - Py Object

# xem mỗi trang của Website là 1 object độc lập với thuộc tính và chức năng riêng biệt
# Func: load trang, tìm kiếm sp, hiển thị sp,... - các hành động thực hiện trên 1 trang nào đó ==> Tạo 1 file robot riêng cho trang đó
# Thuộc tính: locator of các element trên 1 trang or các biến liên quan

Resource    ../Resources/11_keywords.robot
Resource    ../Resources/common_keywords.robot

# thực thi trước/ sau cho MỖI TC
Test Setup    Common keyword open browser
Test Teardown    User close browser

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