*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =   https://www.amazon.com
${BROWSER} =   Chrome
${EMAIL} =   thu@gmail.com
${EMAIL_FIELD} =    id=ap_email
${CONTINUE_BUTTON} =    id=continue
${HOME_PAGE_SIGN_IN_BUTTON} =   id=nav-link-accountList-nav-line-1

# terminal thay đổi giá trị biến
# robot -v BROWSER:Firefox -v EMAIL:nguyen@gmail.com -d Results Tests/13.robot