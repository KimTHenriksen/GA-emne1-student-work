def find_largest(first_number, second_number):
    if first_number > second_number:
        return first_number
    elif first_number < second_number:
        return second_number
    else:
        return first_number

result = find_largest(2, 8)
print(result)