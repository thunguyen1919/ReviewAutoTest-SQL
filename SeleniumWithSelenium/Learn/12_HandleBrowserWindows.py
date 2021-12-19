from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service

s=Service("E:\Install\drivers\chromedriver.exe")
driver=webdriver.Chrome(service=s)
driver.maximize_window()
driver.get("http://demo.automationtesting.in/Windows.html")

driver.find_element(By.XPATH, '//*[@id="Tabbed"]/a/button').click()
print(driver.current_window_handle) #CDwindow-D41AE149442298F861DCB7E827541E4D - cha

handles=driver.window_handles
for h in handles:
    driver.switch_to.window(h)
    print(driver.title)
    if driver.title=='Frames & windows':
        driver.close() # chi close cha
        break

#driver.close()
driver.quit()

# duyệt all window not close => close cuối => close con
# trong close cha => mà bdau khi ko duyệt => handle cha => duyệt ts cha close => chưa duyệt ts con => close lỗi

# quit close hết
# close cửa sổ handle hiện tại