prices = [149.50, 50, 250.50, 399, 15]

for price in prices:
    discounted_price = price * 0.80
    print(f"Discounted price: {discounted_price:.2f}")

print(f"The total of original prices: {sum(prices)}")