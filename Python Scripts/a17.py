content = """Cat
dog
bear
hello
elephant
hello
tiger
hello
horse"""

with open("example.txt", "w") as file:
    file.write(content)

with open("example.txt", "r") as file:
    lines = file.readlines()
    updated_content = [line.strip() for line in lines if "hello" not in line]

with open("example.txt", "w") as file:
    file.write("\n".join(updated_content))

with open("example.txt", "r") as file:
    updated_lines = file.readlines()
    for line in updated_lines:
        print(line.strip())
