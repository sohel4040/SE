#!/bin/bash

echo -n "Enter a number: "
read num

factorial=1

if [ $num -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
elif [ $num -eq 0 ]; then
    echo "The factorial of 0 is 1."
else
    for ((i=1; i<=$num; i++)); do
        factorial=$((factorial * i))
    done
    echo "The factorial of $num is $factorial"
fi
