#!/bin/bash

read -p "Enter the cost price: " cost_price
read -p "Enter the selling price: " selling_price

profit_or_loss=$(bc <<< "$selling_price - $cost_price")

if (( $(echo "$profit_or_loss > 0" | bc -l) )); then
    echo "Profit: \$${profit_or_loss}"
elif (( $(echo "$profit_or_loss < 0" | bc -l) )); then
    echo "Loss: \$${profit_or_loss#-}"
else
    echo "No profit, no loss."
fi