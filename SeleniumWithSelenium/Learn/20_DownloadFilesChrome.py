import time

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

chromeOptions=Options()
chromeOptions.add_experimental_option("prefs",{"download.default_directory":"C:\\Users\\Asus\\Downloads"})

s=Service('E:\Install\drivers\chromedriver.exe')

driver=webdriver.Chrome(service=s, options=chromeOptions)
driver.maximize_window()
driver.get('http://demo.automationtesting.in/FileDownload.html')

driver.find_element(By.ID,'textbox').send_keys('info')
driver.find_element(By.ID,'createTxt').send_keys(Keys.ENTER)
e=driver.find_element(By.ID,'link-to-download')
driver.execute_script('arguments[0].scrollIntoView()',e)
driver.find_element(By.ID,'link-to-download').click()

driver.find_element(By.ID,'pdfbox').send_keys('info')
driver.find_element(By.ID,'createPdf').click()
e=driver.find_element(By.ID,'pdf-link-to-download')
driver.execute_script("arguments[0].scrollIntoView()",e)
driver.find_element(By.ID,'pdf-link-to-download').click()
time.sleep(1)

driver.close()