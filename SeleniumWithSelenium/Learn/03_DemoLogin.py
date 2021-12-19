from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service

from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait


s=Service("E:\Install\drivers\chromedriver.exe")
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get('http://supermarket-tws.somee.com/')

driver.find_element(By.XPATH, '//a[@id="Header_LoginViewHeader_HyperLink2"]').click()

user_ele=driver.find_element(By.XPATH, '//input[@id="UserName"]')
user_ele.send_keys('ThuNguyen')

pass_ele=driver.find_element(By.XPATH, '//input[@id="Password"]')
pass_ele.send_keys('asd@12345')

btn_Login=driver.find_element(By.XPATH, '//input[@id="LoginButton"]')
btn_Login.send_keys(Keys.ENTER)

wait = WebDriverWait(driver, 20)
wait.until(EC.text_to_be_present_in_element((By.XPATH, '//span[@id="Header_LoginViewHeader_LoginName1"]'), "ThuNguyen"))

driver.close()