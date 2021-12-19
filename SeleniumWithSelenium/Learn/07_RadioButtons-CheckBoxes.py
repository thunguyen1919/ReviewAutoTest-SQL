from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.get('https://fs2.formsite.com/meherpavan/form2/index.html')
driver.maximize_window()
driver.execute_script('window.scrollTo(0,300)')

driver.find_element(By.XPATH, '//label[@for="RESULT_RadioButton-7_1"]').click()
status=driver.find_element(By.XPATH, '//input[@id="RESULT_RadioButton-7_1"]').is_selected()
print('Status of Female: ', status)

driver.find_element(By.XPATH, '//label[@for="RESULT_CheckBox-8_0"]').click() #Sunday
driver.find_element(By.XPATH, '//label[@for="RESULT_CheckBox-8_4"]').click() #Thursday

driver.close()
