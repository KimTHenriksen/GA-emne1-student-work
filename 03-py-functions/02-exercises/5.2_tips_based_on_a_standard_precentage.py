def calculate_tip(amount, tip_percent = 0):
  tip = tip_percent * amount
  return tip

result = calculate_tip(100, 0.50)
print(result)