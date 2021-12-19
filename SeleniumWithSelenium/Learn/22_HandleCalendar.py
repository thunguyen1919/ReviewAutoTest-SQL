import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.common.exceptions import ElementClickInterceptedException

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.get('https://secure.yatra.com/')

origin=driver.find_element(By.ID, 'BE_flight_origin_date').click()
time.sleep(2)
driver.find_element(By.ID,'16/11/2021').click()
time.sleep(2)

all_dates=driver.find_elements(By.XPATH,'//div[@id="monthWrapper"]//tbody//td[@class!="inActiveTD"]')
for date in all_dates:
    if date.get_attribute('data-date')=='23/12/2021':
        date.click()
        time.sleep(2)
        break


# wait=WebDriverWait(driver,10)
# wait.until(EC.element_to_be_clickable((By.ID, 'BE_flight_origin_date'))).click()
# time.sleep(2)
# driver.find_element(By.ID,'16/12/2021').click()
# time.sleep(2)
#
# all_dates=wait.until(EC.element_to_be_clickable((By.XPATH,'//div[@id="monthWrapper"]//tbody//td[@class!="inActiveTD"]')))\
#     .find_elements(By.XPATH,'//div[@id="monthWrapper"]//tbody//td[@class!="inActiveTD"]')
#
# for date in all_dates:
#     if date.get_attribute('data-date')=='23/12/2021':
#         date.click()
#         time.sleep(2)
#         break


# wait=WebDriverWait(driver,10,2, ignored_exceptions=[ElementClickInterceptedException])
# wait.until(EC.element_to_be_clickable((By.ID, 'BE_flight_origin_date'))).click()
# time.sleep(2)
# driver.find_element(By.ID,'16/12/2021').click()
# time.sleep(2)
#
# all_dates=wait.until(EC.element_to_be_clickable((By.XPATH,'//div[@id="monthWrapper"]//tbody//td[@class!="inActiveTD"]')))\
#     .find_elements(By.XPATH,'//div[@id="monthWrapper"]//tbody//td[@class!="inActiveTD"]')
#
# for date in all_dates:
#     if date.get_attribute('data-date')=='23/12/2021':
#         date.click()
#         time.sleep(2)
#         break

driver.close()