import os

file_path = "example.txt"

if os.path.isfile(file_path):
    with open(file_path, "w") as file:
        file.write("Hello, world!")
else:
    with open(file_path, "w") as file:
        file.write("Hello, world!")

print("Done.")
