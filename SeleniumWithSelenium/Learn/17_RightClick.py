import time
from selenium import webdriver
from selenium.webdriver import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service

class DemoRightDoubleClick():
    def demo_right_double_click(self):
        s=Service('E:\Install\drivers\chromedriver.exe')
        driver=webdriver.Chrome(service=s)
        driver.maximize_window()
        driver.get('http://swisnl.github.io/jQuery-contextMenu/demo.html')
        btnRightClick=driver.find_element(By.XPATH,'/html/body/div/section/div/div/div/p/span')
        actions=ActionChains(driver)
        actions.context_click(btnRightClick).perform()
        time.sleep(1)
        btnCopy=driver.find_element(By.XPATH,'/html/body/ul/li[3]')
        btnCopy.click()
        time.sleep(1)

drRightClick=DemoRightDoubleClick()
drRightClick.demo_right_double_click()
