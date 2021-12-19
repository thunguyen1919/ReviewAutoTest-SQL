from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)

driver.maximize_window()
driver.get('http://supermarket-tws.somee.com/')
WebDriverWait(driver, 20).until(EC.title_contains('Super Market an Ecommerce Online Shopping Category'))
print(driver.title)

driver.close()