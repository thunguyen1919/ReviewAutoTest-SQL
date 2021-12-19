from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.edge.service import Service

browserName= 'firefox'
#'edge'
#firefox
#chrome

if browserName == 'edge':
    s=Service('E:\Install\drivers\msedgedriver.exe')
    driver=webdriver.Edge(service=s)
elif browserName == 'firefox':
    s=Service(GeckoDriverManager().install())
    driver=webdriver.Firefox(service=s)
elif browserName == 'chrome':
    s=Service( ChromeDriverManager().install())
    driver=webdriver.Chrome(service=s)
else:
    print(f'BrowserName: {browserName} is not support')
    raise Exception('driver is not support')

driver.maximize_window()
driver.get('http://supermarket-tws.somee.com')
WebDriverWait(driver, 20).until(EC.title_contains('Super Market an Ecommerce Online Shopping'))
print(driver.title)

driver.close()