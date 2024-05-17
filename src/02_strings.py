
def read_file_content():
    # writing to the file
    with open("input/input.txt", 'w') as f:
        f.write("Mojo\nis\nthe\nbest")
    
    # reading the file
    with open("input/input.txt", 'r') as f:
        file_content = f.read()
    print(file_content)
    print("Lines:")
    with open("input/input.txt", 'r') as f:
        line = f.readline()
        while line:
            print(line.strip())
            line = f.readline()
    # lines = file_content.split('\n')
    # for i in range(len(lines)):
    #     print(lines[i])


def string_function():
    s1 = "abcba"
    s2 = " happy coding in Mojo  "

    print("Characters in s1:")
    for c in s1:
        print(c)
    # for i in range(len(s1)):
    #     print(s1[i])
    print("First two characters:", s1[0:2])
    print("Last character:", s1[-1])
    print("Every second character:", s1[::2])
    print("Number of 'a':", s1.count('a'))
    print("First 'b' from the left:", s1.find('b', 0))
    print("First 'b' from the right:", s1.rfind('b', 0))
    print(s1.replace('c', 'x'))

    print(s2.strip())
    print(s2.rstrip())
    print(s2.strip().upper())
    print(s2.strip().lower())

    s2_words = s2.strip().split(' ')
    for word in s2_words:
        if word.startswith("ha"):
            print("HAPPY")
        if word.endswith("jo"):
            print("MOJO")

    joined = " and ".join([s1, s2])
    print(joined)
    print(" - ".join(s2_words))  # does not work in Mojo (yet?)


if __name__ == '__main__':
    print("File\n--------------------")
    read_file_content()
    print("\nString\n--------------------")
    string_function()
