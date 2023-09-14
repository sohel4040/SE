#!/bin/bash

year=2000
leap_years_found=0

while [ $leap_years_found -lt 10 ]; do
    if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
        echo $year
        leap_years_found=$((leap_years_found + 1))
    fi
    year=$((year + 1))
done
