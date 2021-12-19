from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)

driver.maximize_window()
driver.get('http://supermarket-tws.somee.com/')
driver.implicitly_wait(5)

assert 'Super Market an Ecommerce Online Shopping' in driver.title
driver.find_element(By.LINK_TEXT, 'Login').click()
lb_Remember=driver.find_element(By.CSS_SELECTOR, '[for="RememberMe"]')
driver.execute_script('arguments[0].scrollIntoView()', lb_Remember)

driver.close()