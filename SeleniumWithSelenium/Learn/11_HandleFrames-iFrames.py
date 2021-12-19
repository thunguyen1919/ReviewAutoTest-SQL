from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import time

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get('https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html')

driver.switch_to.frame('packageListFrame')
driver.find_element(By.LINK_TEXT, 'org.openqa.selenium').click()
time.sleep(2)
driver.switch_to.default_content()

driver.switch_to.frame('packageFrame')
driver.find_element(By.LINK_TEXT,'TakesScreenshot').click()
time.sleep(2)
driver.switch_to.default_content()

driver.switch_to.frame('classFrame')
driver.find_element(By.XPATH, '/html/body/header/nav/div[1]/div[1]/ul/li[6]').click()
time.sleep(2)

driver.close()