def calculate_discounted_price(price, discounted_percent):
    return price * (1 - discounted_percent)

discounted_price = calculate_discounted_price(500, 0.40)
print(f"The discounted price is {discounted_price:.2f}")
