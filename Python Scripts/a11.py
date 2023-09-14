file_path = "example.txt"

try:
    with open(file_path, "r") as file:
        lines = file.readlines()
        for line in lines:
            print(line.strip())
except FileNotFoundError:
    print(f"File '{file_path}' not found.")
except Exception as e:
    print(f"An error occurred: {e}")

