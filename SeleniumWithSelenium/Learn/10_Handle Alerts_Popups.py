from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.get('https://testautomationpractice.blogspot.com/')
driver.maximize_window()

driver.find_element(By.XPATH, '//*[@id="HTML9"]/div[1]/button').click()
alert=driver.switch_to.alert
alert.accept()

wait=WebDriverWait(driver,10)
wait.until(EC.text_to_be_present_in_element((By.ID, 'demo'), 'You pressed OK!'))
time.sleep(1)

driver.find_element(By.XPATH, '//*[@id="HTML9"]/div[1]/button').click()
alert=driver.switch_to.alert
alert.dismiss()

wait=WebDriverWait(driver,10)
wait.until(EC.text_to_be_present_in_element((By.ID, 'demo'), 'You pressed Cancel!'))
time.sleep(1)

driver.close()