from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver import ActionChains
import time

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()

driver.get('https://opensource-demo.orangehrmlive.com/index.php/auth/login')
driver.find_element(By.ID,'txtUsername').send_keys('Admin')
driver.find_element(By.ID,'txtPassword').send_keys('admin123')
driver.find_element(By.ID,'btnLogin').click()

admin=driver.find_element(By.ID,'menu_admin_viewAdminModule')
umg=driver.find_element(By.ID,'menu_admin_UserManagement')
user=driver.find_element(By.ID,'menu_admin_viewSystemUsers')
actions=ActionChains(driver)
actions.move_to_element(admin).move_to_element(umg).move_to_element(user).click().perform()
time.sleep(1)

driver.close()