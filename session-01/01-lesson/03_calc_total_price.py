#Input
product_name = input("Product name: ")
unit_price = float(input("Unit price: "))
quantity = int(input("Quantity: "))

total = unit_price * quantity

# :.2f 2 decimals
print(f"{product_name}: {total:.2f}")