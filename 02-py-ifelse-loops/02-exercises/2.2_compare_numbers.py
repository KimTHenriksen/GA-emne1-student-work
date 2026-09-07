first_number = int(input("First number: "))

second_number = int(input("Second number: "))

sum = first_number + second_number
print("Sum:", sum)

difference = first_number - second_number
print("Difference:", difference)

product = first_number * second_number
print("Product:", product)

division = first_number / second_number
print("Division", division)

floor_division = first_number // second_number
print("Floor division:", floor_division)

rest_after_division = first_number % second_number
print("Rest after division (modulo):", rest_after_division)

# When second_number is 0, you get a ZeroDivisionError because you cannot divide by 0.