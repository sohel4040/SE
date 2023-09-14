import os

dir_path = "my_directory"

if not os.path.exists(dir_path):
    os.mkdir(dir_path)
    print(f"Directory '{dir_path}' created successfully.")
else:
    print(f"Directory '{dir_path}' already exists.")
