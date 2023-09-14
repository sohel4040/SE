file1_path = "file1.txt"
file2_path = "file2.txt"

try:
    with open(file1_path, "r") as file1, open(file2_path, "r") as file2:
        content1 = file1.read()
        content2 = file2.read()

    if content1 == content2:
        print("The contents of both files are the same.")
    else:
        print("The contents of both files are different.")
except FileNotFoundError:
    print("One or both of the files were not found.")
except Exception as e:
    print(f"An error occurred: {e}")
