*** Variables ***
#Configuration data
${url}  https://www.saucedemo.com/
${browser}  Chrome

#Locators
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}    xpath://input[@name='login-button']
${txt_error}    xpath://h3[@data-test='error']