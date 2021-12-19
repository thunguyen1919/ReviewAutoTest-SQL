from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.get('http://supermarket-tws.somee.com/')
driver.maximize_window()

driver.find_element(By.LINK_TEXT, 'Login').click()

link = driver.find_elements(By.TAG_NAME, 'a')
print(len(link))

for l in link:
    print(l.text)

driver.find_element(By.PARTIAL_LINK_TEXT, 'SHOP').click()

driver.close()