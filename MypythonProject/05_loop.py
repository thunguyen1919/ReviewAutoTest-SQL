
# fruits = ["apple", "orange", "pears", "cherries", "grapes"]
#
# for fruit in fruits:
#     print("Would you like {} ?".format(fruit))


# for number in range(1,11):
#     print("Number {}".format(number))
#     # 1=> 10 ko bao gom so 11



# temp_f = 37
# while temp_f > 32:
#     print("The water is {} degrees not frozen.".format(temp_f))
#     temp_f -= 1
# print("Water becomes frozen at 32 degrees Fahrenheit")

'''

Cau lenh break chi ra rang khi ban nhin thay no, vong lap se ket thuc va chuyen sang cau lenh
tiep theo trong chuong trinh nam ngoai vong lap

Cau lenh continue bo qua phan hien tai cua vong lap va chuyen sang phan tiep theo cua vong lap

Cau lenh pass bo qua bat ky phan nao cua vong lap ma pass xuat hien. Dieu nay duoc sd tot nhat de kiem tra ma,
nhung hay dam bao rang ban ko quen xoa cau lenh pass khi ban da san sang de ma of minh di vao san xuat

'''

# #break
# temp_f = 40
# while temp_f > 32:
#     print("The water is {} degrees.".format(temp_f))
#     temp_f -= 1
#     if temp_f == 33:
#         break
# # Va khi nhiet do = 33, cau lenh in se ngung in và vong lap ngung chay



# # continue
# for number in range(1,11):
#     if number == 7:
#         print("We're skipping number 7.")
#         continue
#     print("This is the number {}.".format(number))
# # Trong dó cau lenh break ket thuc hoan toan vong lap khi dieu kien if duoc dap ung,
# # cau lenh continue thuc hien bat cu dieu gi can thiet khi dk if dc dap ung nhung sau đo
# # tiep tuc phan con lai cua vong lap


# #pass
# for number in range(1,11):
#     if number == 3:
#         pass
#     else:
#         print("The number is {}.".format(number))
# # 3 bi bo qua hoan toan, vi vay ko co cau lenh in cho so 3



calc_on = True

def add():
    a = float(input("Enter a number. "))
    b = float(input("Enter another number. "))
    print(a + b)

def subtraction():
    a = float(input("Enter a number. "))
    b = float(input("Enter another number. "))
    print(a - b)

def multiply():
    a = float(input("Enter a number. "))
    b = float(input("Enter another number. "))
    print(a * b)

def divide():
    a = float(input("Enter a number. "))
    b = float(input("Enter another number. "))
    print(a / b)

# enclose selection into while loop

while calc_on:
    operation = input("Please type +, -, *, /, or q: ")
    if operation == '+':
        add()

    elif operation == '-':
        subtraction()

    elif operation == '*':
        multiply()

    elif operation == '/':
        divide()

    elif operation == 'q':
        calc_on = False

    else:
        print("That operation is not available.  ")
