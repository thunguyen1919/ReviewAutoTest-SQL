from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service

from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get('https://www.expedia.com/')

driver.find_element(By.XPATH, '//span[contains(.,"Flights")]').click()

driver.find_element(By.XPATH, '//button[@aria-label="Leaving from"]').click()
driver.find_element(By.CSS_SELECTOR, '#location-field-leg1-origin').send_keys('SFO', Keys.ENTER)

driver.find_element(By.XPATH, '//button[@aria-label="Going to"]').click()
driver.find_element(By.XPATH, '//input[@id="location-field-leg1-destination"]').send_keys('NYC', Keys.ENTER)

driver.find_element(By.ID, 'd1-btn').click()
driver.find_element(By.XPATH, '//button[@aria-label="Dec 25, 2021"]').click()
driver.find_element(By.XPATH, '//button[@aria-label="Dec 29, 2021"]').click()
#driver.execute_script("window.scrollTo(0,300)")
driver.find_element(By.XPATH, '//ul[@id="uitk-tabs-button-container"]').click()
driver.implicitly_wait(10)

driver.find_element(By.XPATH, '//button[text()="Search"]').click()

wait=WebDriverWait(driver,20)
wait.until(EC.text_to_be_present_in_element((By.XPATH, '//h2[@class="uitk-heading-5"]'), 'Show us your human side...'))

driver.close()
