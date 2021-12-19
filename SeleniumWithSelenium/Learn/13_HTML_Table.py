from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service

s=Service('E:\Install\drivers\chromedriver.exe')
driver=webdriver.Chrome(service=s)
driver.maximize_window()

driver.get('https://testautomationpractice.blogspot.com/')
driver.execute_script('window.scrollTo(0,1700)')

rows=len(driver.find_elements(By.XPATH, '//*[@id="HTML1"]/div[1]/table/tbody/tr'))
print(rows)
cols=len(driver.find_elements(By.XPATH, '//*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th'))
print(cols)

print('BookName'+'          '+'Author'+'            '+'Subject'+'           '+"Price")

for r in range(2,rows+1):
    for c in range(1,cols+1):
        value=driver.find_element(By.XPATH,'//*[@id="HTML1"]/div[1]/table/tbody/tr['+str(r)+']/td['+str(c)+']').text
        print(value,end='           ')
    print()

driver.close()


# driver.get('https://www.w3schools.com/w3css/w3css_tables.asp')
# driver.execute_script('window.scrollTo(0,100)')
#
# rows=len(driver.find_elements(By.XPATH, '//*[@id="main"]/table[1]/tbody/tr'))
# print(rows)
# cols=len(driver.find_elements(By.XPATH, '//*[@id="main"]/table[1]/tbody[1]/tr/th'))
# print(cols)
#
# print('First Name'+'    '+'Last Name'+'    '+'Points')
#
# for r in range(1,rows):
#     for c in range(1,cols+1):
#         value=driver.find_element(By.XPATH,'//*[@id="main"]/table[1]/tbody[2]/tr['+str(r)+']/td['+str(c)+']').text
#         print(value,end='           ')
#     print()
#
# driver.close()