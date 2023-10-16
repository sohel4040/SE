#!/bin/bash

read -p "Enter the cost price: " cost_price
read -p "Enter the selling price: " selling_price

# Check if either cost_price or selling_price is negative
if (( $(echo "$cost_price < 0" | bc -l) )) || (( $(echo "$selling_price < 0" | bc -l) )); then
    echo "Error: Cost price and selling price cannot be negative."
    exit 1
fi

profit_or_loss=$(bc <<< "$cost_price - $selling_price")

if (( $(echo "$profit_or_loss > 0" | bc -l) )); then
    echo "Profit: \$${profit_or_loss}"
elif (( $(echo "$profit_or_loss < 0" | bc -l) )); then
    echo "Loss: \$${profit_or_loss#-}"
else
    echo "No profit, no loss."
fi
