def get_result(average_marks):
    result_switch = {
        70 <= average_marks <= 100: "I-Division",
        60 <= average_marks < 70: "II-Division",
        50 <= average_marks < 60: "III-Division",
    }
    
    return result_switch.get(True, "Fail")

maths = float(input("Enter marks for Math: "))
science = float(input("Enter marks for Science: "))
english = float(input("Enter marks for English: "))

total_marks = maths + science + english
average_marks = total_marks / 3

result = get_result(average_marks)
print(result)
