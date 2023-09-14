string = input("Enter a string: ")

string = string.replace(" ", "").lower()

is_palindrome = string == string[::-1]

if is_palindrome:
    print("The string is a palindrome.")
else:
    print("The string is not a palindrome.")
