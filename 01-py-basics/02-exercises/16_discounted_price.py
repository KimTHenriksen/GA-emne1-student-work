# Price with discount

product_price = float(input("Productprice:"))
discount = float(input("Discount in percentage:"))

discount_amount = product_price * (discount / 100)

new_price = product_price - discount_amount

print("The price with discount is:", new_price)