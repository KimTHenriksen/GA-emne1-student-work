

mileage_in_km = float(input("Mileage in km: "))

fuel_per_100_km = float(input("Fuel per 100 km: "))

fuel_price = float(input("Fuel price: "))

fuel_quantity = mileage_in_km / 100 * fuel_per_100_km

total_cost = fuel_quantity * fuel_price
print(f"The cost for driving {mileage_in_km} km is {total_cost} NOK.")

