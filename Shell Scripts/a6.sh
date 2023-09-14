#!/bin/bash

read -p "Enter operand-1: " operand1
read -p "Enter operator (+, -, *, /): " operator
read -p "Enter operand-2: " operand2

if [ "$operator" == "+" ]; then
    result=$(echo "$operand1 + $operand2" | bc)
elif [ "$operator" == "-" ]; then
    result=$(echo "$operand1 - $operand2" | bc)
elif [ "$operator" == "*" ]; then
    result=$(echo "$operand1 * $operand2" | bc)
elif [ "$operator" == "/" ]; then
    if [ "$operand2" == "0" ]; then
        echo "Error: Division by zero is not allowed."
        exit 1
    else
        result=$(echo "scale=2; $operand1 / $operand2" | bc)
    fi
else
    echo "Error: Invalid operator."
    exit 1
fi

echo "Result: $result"
