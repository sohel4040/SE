#!/bin/bash

dir_path="my_directory"

if [ ! -d "$dir_path" ]; then
    mkdir "$dir_path"
    echo "Directory '$dir_path' created successfully."
else
    echo "Directory '$dir_path' already exists."
fi