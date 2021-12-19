from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from webdriver_manager.firefox import GeckoDriverManager

s=Service(GeckoDriverManager().install())
driver=webdriver.Firefox(service=s)

driver.maximize_window()
driver.get('http://supermarket-tws.somee.com')

print(driver.title)
print(driver.current_url)

driver.close()