#!/bin/bash

echo -n "Enter a string: "
read string

string=$(echo "$string" | tr -d ' ' | tr '[:upper:]' '[:lower:]')

reversed_string=$(echo "$string" | rev)

if [ "$string" = "$reversed_string" ]; then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi
