from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver import ActionChains
from selenium.webdriver.chrome.service import Service
import time

class DemoDropAndDrap():
    def demo_drop_and_drap(self):
        s=Service('E:\Install\drivers\chromedriver.exe')
        driver=webdriver.Chrome(service=s)
        driver.maximize_window()
        driver.get('https://jqueryui.com/droppable/')
        driver.switch_to.frame(driver.find_element(By.XPATH,'//iframe[@class="demo-frame"]'))
        edrag=driver.find_element(By.ID,'draggable')
        edrop=driver.find_element(By.ID,'droppable')
        actions=ActionChains(driver)
        actions.drag_and_drop(edrag,edrop).perform()
        time.sleep(1)

dDropAndDrag=DemoDropAndDrap()
dDropAndDrag.demo_drop_and_drap()