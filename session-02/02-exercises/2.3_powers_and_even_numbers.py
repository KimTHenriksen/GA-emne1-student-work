number = int(input("Number: "))

number_power_two = number ** 2
print("Number to the power of 2:", number_power_two)

number_power_three = number ** 3
print("Number to the power of 3:", number_power_three)

remaining = number % 2
print("Remainder:", remaining)

if remaining > 0:
    print("The number is odd.")
else:
    print("The number is even.")