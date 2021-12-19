*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  Chrome
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}    xpath://input[@name='login-button']
${txt_error}    xpath://h3[@data-test='error']

*** Test Cases ***
Verify Login Fails - Wrong Username
    open browser    ${url}  ${browser}
    maximize browser window
    input text    ${txtbox_username}    standard_us
    input text    ${txtbox_password}    secret_sauce
    click button    ${btn_login}
    sleep    2s
    element should contain    ${txt_error}  Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - LockedOut User
    open browser    ${url}  ${browser}
    maximize browser window
    input text    ${txtbox_username}    locked_out_user
    input text    ${txtbox_password}    secret_sauce
    click button    ${btn_login}
    sleep    2s
    element should contain    ${txt_error}  Epic sadface: Sorry, this user has been locked out.
    close browser

Verify Login Fails - Wrong Password
    open browser    ${url}  ${browser}
    maximize browser window
    input text    ${txtbox_username}    standard_user
    input text    ${txtbox_password}    secret_sa
    click button    ${btn_login}
    sleep    2s
    element should contain    ${txt_error}  Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - Wrong Username and Password
    open browser    ${url}  ${browser}
    maximize browser window
    input text    ${txtbox_username}    standard_u
    input text    ${txtbox_password}    secret_s
    click button    ${btn_login}
    sleep    2s
    element should contain    ${txt_error}  Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - Blank Username and Password
    open browser    ${url}  ${browser}
    maximize browser window
    input text    ${txtbox_username}    ${EMPTY}
    input text    ${txtbox_password}    ${EMPTY}
    click button    ${btn_login}
    sleep    2s
    element should contain    ${txt_error}  Epic sadface: Username is required
    close browser