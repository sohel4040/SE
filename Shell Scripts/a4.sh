#!/bin/bash

echo -n "Enter the radius of the circle: "
read radius

if ((radius < 0)); then
    echo "Error: Please enter a non-negative radius."
else
    area=$(echo "3.14 * $radius * $radius" | bc)
    circumference=$(echo "2 * 3.14 * $radius" | bc)

    echo "Area of the circle: $area"
    echo "Circumference of the circle: $circumference"
fi
