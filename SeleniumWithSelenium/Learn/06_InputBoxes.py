from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get('https://fs2.formsite.com/meherpavan/form2/index.html')

inputboxes = driver.find_elements(By.CLASS_NAME, 'text_field')
print(len(inputboxes))

status = driver.find_element(By.ID, 'RESULT_TextField-1')
print('Displayed or not: ', status.is_displayed())
print('Enabled or not: ', status.is_enabled())

driver.find_element(By.ID, 'RESULT_TextField-1').send_keys('Thu')
driver.find_element(By.ID, 'RESULT_TextField-2').send_keys('Nguyen')

driver.close()