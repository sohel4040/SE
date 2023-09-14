#!/bin/bash

print_numeric_pyramid() {
    rows=$1
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= rows - i; j++)); do
            printf "  "
        done
        for ((k = 1; k <= i * 2 - 1; k++)); do
            printf "$k "
        done
        echo
    done
}

print_special_char_pyramid() {
    rows=$1
    character="*"
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= rows - i; j++)); do
            printf "  "
        done
        for ((k = 1; k <= i * 2 - 1; k++)); do
            printf "$character "
        done
        echo
    done
}

echo -n "Enter the number of rows: "
read rows

echo -e "\nNumeric Pyramid:"
print_numeric_pyramid "$rows"

echo -e "\nSpecial Character Pyramid:"
print_special_char_pyramid "$rows"
