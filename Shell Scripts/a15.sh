#!/bin/bash

file1="file1.txt"
file2="file2.txt"

if diff "$file1" "$file2" &>/dev/null; then
    echo "The contents of '$file1' and '$file2' are the same."
else
    echo "The contents of '$file1' and '$file2' are different."
fi
