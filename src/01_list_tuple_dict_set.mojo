from collections import Set


fn list_function():
    var l: List[Int] = List[Int]()
    l.append(1)
    l.insert(1, 2)
    l.insert(2, 3)
    l[2] = 5

    print("Loop by index:")
    for i in range(len(l)):
        print(l[i])

    print("Pop:", l.pop())

    print("Loop by element:")
    for element in l:
        print(element[])

    l.clear()
    print("Length after clear:", len(l))


fn tuple_function():
    var t: Tuple[Int, StringLiteral] = Tuple[Int, StringLiteral](1, "two")
    print("Length:", len(t))
    print("First element:", t.get[0, Int]())
    print("Second element:", t.get[1, StringLiteral]())


fn dict_function() raises:
    var d: Dict[String, Int] = Dict[String, Int]()
    d["first"] = 1
    d["second"] = 2
    print(Dict[String, Int].__str__(d))
    var d2: Dict[String, Int] = Dict[String, Int]()
    d2["third"] = 3
    d.update(d2)
    print(Dict[String, Int].__str__(d))

    print("First element popped:", d.pop("first"))

    if d.__contains__("second"):
        print("The dictionary has the key 'second'.")

    print("Keys:")
    for key in d.keys():
        print(key[])
    print("Values:")
    for value in d.values():
        print(value[])
    print("Items:")
    for item in d.items():
        print(item[].key, ":", item[].value)

    print("Length:", len(d))


fn set_function() raises:
    var s: Set[Int] = Set[Int](1, 2, 3)
    s.add(4)
    print("Length:", len(s))
    s.remove(3)
    if s.__contains__(4):
        print("The set contains 4.")
    print("Pop:", s.pop())

    var s2: Set[Int] = Set[Int](1, 3)
    s = s | s2
    print("Elements after union:")
    for element in s:
        print(element[])


fn main() raises:
    print("List\n--------------------")
    list_function()
    print("\nTuple\n--------------------")
    tuple_function()
    print("\nDict\n--------------------")
    dict_function()
    print("\nSet\n--------------------")
    set_function()
