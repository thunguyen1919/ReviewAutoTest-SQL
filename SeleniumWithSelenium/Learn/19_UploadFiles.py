from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.get('https://the-internet.herokuapp.com/upload')

driver.find_element(By.XPATH,'//*[@id="file-upload"]').send_keys('D:\img.png')
driver.find_element(By.ID,'file-submit').click()
wait=WebDriverWait(driver,20)
wait.until(EC.text_to_be_present_in_element((By.TAG_NAME,'h3'),'File Uploaded!'))

driver.close()