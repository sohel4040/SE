#!/bin/bash

echo "Cat
dog
bear
hello
elephant
hello
tiger
hello
horse" >> input.txt

grep -v "hello" input.txt >> temp.txt

mv temp.txt input.txt

cat input.txt
