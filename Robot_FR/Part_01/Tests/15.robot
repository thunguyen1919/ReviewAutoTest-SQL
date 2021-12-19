*** Settings ***
Documentation    Keyword as Function - Overide keyword
Resource    ../Resources/PO/14_keywords.robot


Test Teardown   User close browser

*** Variables ***
${URL} =    https://www.amazon.com
${BROWSER} =    Firefox

# khái niệm overide trong trường hợp sd file keyword
# những biến trong file keyword bị overide bởi những biến trong file TC, sript testing
# ví dụ: keyword.file biến ${BROWSER} = Chrome  nhưng trong file TC thì lại chạy firefox
# lúc này khi run TC biến keyword sẽ bị ghi đè và chạy trình duyệt of firefox

*** Test Cases ***
User open amazon website
    Open Website
    Verify Page Title

    sleep    2s

*** Keywords ***
Open Website
    open browser    ${URL}  ${BROWSER}
    maximize browser window

Get Page Title
    ${title} =  get title
    [Return]    ${title}

Verify Page Title
    ${page_title} =    Get Page Title
    log    ${page_title}
    title should be    ${page_title}

User close browser
    close browser