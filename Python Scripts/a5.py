subject1 = float(input("Enter marks for Subject 1: "))
subject2 = float(input("Enter marks for Subject 2: "))
subject3 = float(input("Enter marks for Subject 3: "))
subject4 = float(input("Enter marks for Subject 4: "))
subject5 = float(input("Enter marks for Subject 5: "))

total_marks = subject1 + subject2 + subject3 + subject4 + subject5
average_marks = total_marks / 5

if subject1 < 40 or subject2 < 40 or subject3 < 40 or subject4 < 40 or subject5 < 40:
    result = "Fail"
elif average_marks >= 70:
    result = "I-Division"
elif average_marks >= 60:
    result = "II-Division"
elif average_marks >= 50:
    result = "III-Division"
else:
    result = "Fail"

print(f"Result: {result}")
