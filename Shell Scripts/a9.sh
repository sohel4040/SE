#!/bin/bash

file_path="example.txt"

if [ -e "$file_path" ]; then
    echo "Hello, world!" > "$file_path"
else
    touch "$file_path"
    echo "Hello, world!" > "$file_path"
fi

echo "Done."
