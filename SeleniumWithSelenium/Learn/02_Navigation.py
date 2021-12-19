from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

s=Service(ChromeDriverManager().install())
driver=webdriver.Chrome(service=s)
driver.maximize_window()

driver.get('http://supermarket-tws.somee.com/')     #P1
WebDriverWait(driver, 20).until(EC.title_contains('Super Market an Ecommerce Online Shopping Category'))
print(driver.title)

driver.get('https://www.pavantestingtools.com/')    #P2
WebDriverWait(driver, 20).until(EC.title_is('SDET QA Automation Techie'))
print(driver.title)

driver.back()       #P1
print(driver.title)
time.sleep(1)

driver.forward()    #P2
print(driver.title)
time.sleep(1)

driver.close()