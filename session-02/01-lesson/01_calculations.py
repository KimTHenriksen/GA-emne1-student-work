number_of_tickets = int(input("How many tickets? "))
ticket_price = 180
service_fee = 35

subtotal = ticket_price * number_of_tickets
total = subtotal + service_fee
price_per_person = total / number_of_tickets

print("Totalprice:", total)
print(f"{price_per_person:.2f}")


total_cost = 120
number_of_people = 5

cost_per_person = total_cost / number_of_people
print(f"Each person pays {cost_per_person:.2f}")