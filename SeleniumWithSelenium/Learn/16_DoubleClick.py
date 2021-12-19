from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver import ActionChains
import time

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get('https://testautomationpractice.blogspot.com/')

element=driver.find_element(By.XPATH,'//button[@ondblclick="myFunction1()"]')

actions=ActionChains(driver)
actions.double_click(element).perform()
time.sleep(1)

driver.close()