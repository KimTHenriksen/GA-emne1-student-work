# Copy 3, debug

product_price = float(input("Productprice:"))
discount = float(input("Discount in percentage:"))

discount_amount = product_price * (discount / 100)

new_price = product_price - discount_amount

print("The price with discount is:", new_price)

# Occurs when you combine different datatypes
# TypeError

# str and float can't be concatenated, should use "," instead of "+", line 44
# TypeError: can only concatenate str (not "float") to str