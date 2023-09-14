def print_numeric_pyramid(rows):
    for i in range(1, rows + 1):
        for j in range(1, rows - i + 1):
            print(" ", end=" ")
        for k in range(1, i * 2):
            print(k, end=" ")
        print()

def print_special_char_pyramid(rows):
    character = '*'
    for i in range(1, rows + 1):
        for j in range(1, rows - i + 1):
            print(" ", end=" ")
        for k in range(1, i * 2):
            print(character, end=" ")
        print()

rows = int(input("Enter the number of rows: "))

print("\nNumeric Pyramid:")
print_numeric_pyramid(rows)

print("\nSpecial Character Pyramid:")
print_special_char_pyramid(rows)
