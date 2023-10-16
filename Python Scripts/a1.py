cost_price = float(input("Enter the cost price: "))
selling_price = float(input("Enter the selling price: "))

profit_or_loss = cost_price - selling_price

if profit_or_loss > 0:
    print(f"Profit: ${profit_or_loss:.2f}")
elif profit_or_loss < 0:
    print(f"Loss: ${-profit_or_loss:.2f}")
else:
    print("No profit, no loss.")