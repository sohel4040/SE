operand1 = float(input("Enter operand-1: "))
operator = input("Enter operator (+, -, *, /): ")
operand2 = float(input("Enter operand-2: "))

if operator == "+":
    result = operand1 + operand2
elif operator == "-":
    result = operand1 - operand2
elif operator == "*":
    result = operand1 * operand2
elif operator == "/":
    if operand2 == 0:
        print("Error: Division by zero is not allowed.")
    else:
        result = operand1 / operand2
else:
    print("Error: Invalid operator.")

print(f"Result: {result}")
