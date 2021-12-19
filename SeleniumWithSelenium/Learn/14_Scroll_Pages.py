from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
import time

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()

driver.get('https://www.countries-ofthe-world.com/flags-of-asia.html')
driver.execute_script('window.scrollTo(0,500)')
time.sleep(1)
driver.execute_script('window.scroll(0,0)')
time.sleep(1)
driver.execute_script('window.scrollBy(0,document.body.scrollHeight)')
time.sleep(1)
driver.execute_script('window.scrollTo(0,500)')
time.sleep(1)
driver.execute_script('window.scroll(0,0)')
time.sleep(1)
flag=driver.find_element(By.XPATH,'//td[text()="Georgia"]')
driver.execute_script('arguments[0].scrollIntoView()',flag)
time.sleep(1)

driver.close()