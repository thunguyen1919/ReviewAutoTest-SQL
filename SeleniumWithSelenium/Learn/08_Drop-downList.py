from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
from selenium.webdriver.chrome.service import Service
import time

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get('https://fs2.formsite.com/meherpavan/form2/index.html')

element=driver.find_element(By.ID,'RESULT_RadioButton-9')
drl=Select(element)
print(len(drl.options))

all_options=drl.options
for e in all_options:
    print(e.text)
    if e.text=='Evening':
        e.click()
        break
time.sleep(1)

#Select by text
drl.select_by_visible_text('Morning')
time.sleep(1)

#Select by index (1 to n)
drl.select_by_index(2) #Afternoon
time.sleep(1)

#Select by value
drl.select_by_value('Radio-2')
time.sleep(1)

driver.get('https://www.google.com/')
driver.find_element(By.NAME,'q').send_keys('naveen automation labs')
time.sleep(1)
opt=driver.find_elements(By.CSS_SELECTOR, 'ul.G43f7e li span') #ul.class
print(len(opt))
for o in opt:
    print(o.text)
    if o.text=='naveen automation labs udemy':
        o.click()
        break

driver.close()