'''

# phuong phap ds Noi: (l1, l2) / add: append

fruits = ["peaches", "pears",  "apples"]
years = [3, "1998", 2.5, 987, "1994"]

print(fruits, years)

fruits.append("oranges")
print(fruits)


# phuong phap ds Mo rong: extend
fruits.extend(years)
print(fruits)


# pp ds loai bo: remove
fruits.remove("oranges")
print(fruits)


# pp ds: pop - xoa 1 ptu theo chi muc - bdau tu 0
fruits.pop(0)
print(fruits)


# pp sxep:
# fruits.sort()
# print(fruits)

numbers = [5, 1928, 4, 17, 68, 73.76, 20.458]
numbers.sort()
print(numbers)

'''

# ktra ptu co trong list: in
fruits = ["peaches", "apples", "pears", "apples", "apples"]
years = [3, "1998", 2.5, 987, "1994"]

print("apple" in fruits)
print("apples" in fruits)
print(fruits.count("apples"))
print(fruits.index("apples"))
