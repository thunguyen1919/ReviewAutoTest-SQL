#args
def user_info(name, age, city):

    '''This functoin prints name, age, and city from an argument provided to the function.'''

    print("{} is {} years old, from {}".format(name, age, city))

#args & kwargs
def Keyword_user_info(name, age=0, city="Tucson"):

    '''This functoin prints name, age, and city from an argument provided to the function.'''

    print("{} is {} years old, from {}".format(name, age, city))

user_info("Janet", 58, "Oklahama City")

Keyword_user_info("Micah")
Keyword_user_info(age=56, name="Kadeem")

'''
* args & ** kwargs

    The *args allows a function to take any number of positional arguments
    *args cho phep mot ham nhan bat ky so luong doi so vi tri nao

    The **kwargs allows a function to take any number of keyword arguments
    ** kwargs cho phep mot ham nhan bat ky so luong doi so tu khoa nao

'''

# *args and **kwargs
def application(fname, lname, email, company, *args, **kwargs):
    print("{} {} works at {}. Her email is {}.".format(fname, lname, company, email))
    print("{} {} works at {}. Her email is {}. She has salary {} when she started work on {}.".format(fname, lname, company, email, *args, **kwargs))

application("Jess", "Ingrass", "mail @ mail.com", "Teach Code", 75000, "September 2010")

'''

    Trong vd nay, chung ta co fname, lname, email va cac doi so vi tri chinh thuc cua cty theo sau la *args va **kwargs
    
    Khi sd ham, chung ta truyen cac doi so vao ham truoc tien, bat dau voi cac doi so bat buoc
    
    Sau đó, chung toi chuyen khoan a *arg la luong cho nhan vien và a **kwarg la ngay tuyen dung
    
    application("Jess", "Ingrass", "mail @ mail.com", "Teach Code", 75000, hire_date = "September 2010")
    
    error hire_date=value => bo hire_date run dc

'''