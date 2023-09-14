#!/bin/bash

file_path="example.txt"

if [ -f "$file_path" ]; then
    while IFS= read -r line; do
        echo "$line"
    done < "$file_path"
else
    echo "File '$file_path' not found."
fi
