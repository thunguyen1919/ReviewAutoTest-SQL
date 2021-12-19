import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver import ActionChains

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.get('https://www.snapdeal.com/products/mobiles-cases-covers?sort=plrty')
driver.maximize_window()
driver.execute_script('window.scrollBy(0,300)')
leftSlider=driver.find_element(By.XPATH,'//a[contains(@class, "left-handle")]')
rightSlider=driver.find_element(By.XPATH,'//a[contains(@class, "right-handle")]')
actions=ActionChains(driver)

#actions.drag_and_drop_by_offset(leftSlider,80,0).perform()
#actions.click_and_hold(leftSlider).pause(1).move_by_offset(50,0).release().perform()
#actions.move_to_element(leftSlider).pause(1).click_and_hold(leftSlider).move_by_offset(80,0).release().perform()
actions.drag_and_drop_by_offset(rightSlider,-80,0).perform()

time.sleep(2)


driver.close()


