
def list_function():
    l = []
    l.append(1)
    l.insert(1, 2)
    l.insert(2, 3)
    l[2] = 5

    if 5 in l:
        print("5 is an element of l, it is present " + str(l.count(5)) + " time(s)")

    print("Loop by index:")
    for i in range(len(l)):
        print(l[i])

    print("Pop:", l.pop())

    print("Loop by element:")
    for element in l:
        print(element)

    l.clear()
    print("Length after clear:", len(l))


def tuple_function():
    t = (1, "two")
    print("Length:", len(t))
    print("First element:", t[0])
    print("Second element:", t[1])

    if 1 in t:
        print("1 is in t")


def dict_function():
    d = {}
    d["first"] = 1
    d["second"] = 2
    print(d)
    d2 = {"third": 3}
    d.update(d2)
    print(d)

    print("First element popped:", d.pop("first"))

    if "second" in d:
        print("The dictionary has the key 'second'.")

    print("Keys:")
    for key in d.keys():
        print(key)
    print("Values:")
    for value in d.values():
        print(value)
    print("Items:")
    for key, value in d.items():
        print(key, ":", value)

    print("Length:", len(d))
    d.clear()
    print("Length after clear:", len(d))


def set_function():
    s = {1, 2, 3}
    s.add(4)
    print("Length:", len(s))
    s.remove(3)
    if 4 in s:
        print("The set contains 4.")
    
    print("Pop:", s.pop())

    s2 = {1, 3}
    s = s | s2
    print("Elements after union:")
    for element in s:
        print(element)


if __name__ == '__main__':
    print("List\n--------------------")
    list_function()
    print("\nTuple\n--------------------")
    tuple_function()
    print("\nDict\n--------------------")
    dict_function()
    print("\nSet\n--------------------")
    set_function()
