from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
import time

s=Service("E:\Install\drivers\chromedriver.exe")
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get("https://the-internet.herokuapp.com/")

driver.execute_script('window.scrollTo(0,400)')
driver.find_element(By.LINK_TEXT,'Multiple Windows').click()
driver.find_element(By.LINK_TEXT, 'Click Here').click()
driver.find_element(By.LINK_TEXT, 'Elemental Selenium').click()


handles=driver.window_handles
for h in handles:
    driver.switch_to.window(h)
    print(driver.title)
    if driver.title=='New Window':
        driver.close()
        break

time.sleep(2)
driver.quit()

