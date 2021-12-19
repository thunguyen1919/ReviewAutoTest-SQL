from selenium import webdriver
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

s=Service(ChromeDriverManager().install())
driver=webdriver.Chrome(service=s)
driver.maximize_window()

driver.get('http://supermarket-tws.somee.com/')
WebDriverWait(driver,20).until(EC.title_contains('Super Market an Ecommerce Online Shopping'))

driver.find_element(By.LINK_TEXT, 'Login').click()
WebDriverWait(driver,20).until(EC.text_to_be_present_in_element((By.TAG_NAME, 'h2'), 'LOGIN FORM'))

username=driver.find_element(By.ID, 'UserName')
print(username.is_displayed())
print(username.is_enabled())

try:
    driver.find_element(By.ID, 'UserName').send_keys('ThuNguyen01')
    driver.find_element(By.ID, 'Password').send_keys('asd@123')
except:
    raise Exception('Location of username is not found')

forgot=driver.find_element(By.LINK_TEXT, 'Forgot Password?')
driver.execute_script('arguments[0].scrollIntoView()', forgot)

driver.find_element(By.ID, 'LoginButton')

driver.close()