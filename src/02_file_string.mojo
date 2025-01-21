
fn read_file_content() raises:
    # writing to the file
    with open("input/input.txt", 'w') as f:
        f.write(String("Mojo\nis\nthe\nbest"))

    # reading the file
    var file_content: String = String()
    with open("input/input.txt", 'r') as f:
        file_content = f.read()
    print(file_content)
    print("Lines:")
    var lines: List[String] = file_content.split('\n')
    for i in range(len(lines)):
        print(lines[i])


fn string_function() raises:
    var s1: String = String("abcba")
    var s2: String = String()
    s2 = " happy coding in Mojo  "

    print("Characters in s1:")
    for i in range(len(s1)):
        print(s1[i])
    print("First two characters:", s1[0:2])
    print("Last character:", s1[-1])
    print("Every second character:", s1[::2])
    print("Number of 'a':", s1.count('a'))
    print("First 'b' from the left:", s1.find('b', 0))
    print("First 'b' from the right:", s1.rfind('b', 0))
    print(s1.replace('c', 'x'))

    print(str(s2.strip()))
    print(str(s2.rstrip()))
    print(str(s2.strip()).upper())
    print(str(s2.strip()).lower())

    var s2_words: List[String] = str(s2.strip()).split(' ')
    for word in s2_words:
        if word[].startswith("ha"):
            print("HAPPY")
        if word[].endswith("jo"):
            print("MOJO")

    var joined: String = String(" and ").join(s1, s2)
    print(joined)


fn main() raises:
    print("File\n--------------------")
    read_file_content()
    print("\nString\n--------------------")
    string_function()
