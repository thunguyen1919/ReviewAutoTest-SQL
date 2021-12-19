stuff = {"food": 15, "energy": 100, "enemies":3}
print(stuff.get("food"))
print(stuff.items())
print(stuff.keys())

# # phuong phap popitem cho phep loai bo cac muc cuoi cung trong tu dien
#
# print(stuff.popitem())
# print(stuff)


# setdefault cho phep xem gia tri cua 1 key co trong tu dien,
# cho phep thiet lap mot gia tri mac dinh khi 1 key ko co trong tu dien va them gia tri vao tu dien

print(stuff.setdefault("food"))
print(stuff)
print(stuff.setdefault("friends", 123))
print(stuff)

new_items = {"rocks": 4, "arrows": 18}
stuff.update(new_items)
print(stuff)

new_items = {"rocks": 2, "arrows":5}
stuff.update(new_items)
print(stuff)

up_new = {"food": 3, "webs":2}
stuff.update(up_new)
print(stuff)

stuff.update(food = 450, cookies = 6)
print(stuff)