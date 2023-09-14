#!/bin/bash

read -p "Enter marks for Subject 1: " subject1
read -p "Enter marks for Subject 2: " subject2
read -p "Enter marks for Subject 3: " subject3
read -p "Enter marks for Subject 4: " subject4
read -p "Enter marks for Subject 5: " subject5

total_marks=$(echo "$subject1 + $subject2 + $subject3 + $subject4 + $subject5" | bc)
average_marks=$(echo "scale=2; $total_marks / 5" | bc)

if [ "$subject1" -lt 40 ] || [ "$subject2" -lt 40 ] || [ "$subject3" -lt 40 ] || [ "$subject4" -lt 40 ] || [ "$subject5" -lt 40 ]; then
    result="Fail"
elif [ "$(echo "$average_marks >= 70" | bc)" -eq 1 ]; then
    result="I-Division"
elif [ "$(echo "$average_marks >= 60" | bc)" -eq 1 ]; then
    result="II-Division"
elif [ "$(echo "$average_marks >= 50" | bc)" -eq 1 ]; then
    result="III-Division"
else
    result="Fail"
fi

echo "Result: $result"
