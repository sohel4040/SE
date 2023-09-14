#!/bin/bash

read -p "Enter marks for Math: " maths
read -p "Enter marks for Science: " science
read -p "Enter marks for English: " english

total_marks=$(echo "$maths + $science + $english" | bc)
average_marks=$(echo "scale=2; $total_marks / 3" | bc)

case $average_marks in
    70.00* | 8[0-9].* | 9[0-9].* | 100.00*)
        result="I-Division";;
    60.00* | 7[0-9].*)
        result="II-Division";;
    50.00* | 6[0-9].*)
        result="III-Division";;
    *)
        result="Fail";;
esac

echo "Result: $result"
