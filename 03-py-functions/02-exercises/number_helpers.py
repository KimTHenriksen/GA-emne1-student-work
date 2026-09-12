def is_even(number):
    if number % 2 == 0:
        return True
    else:
        return False


def find_largest(first_number, second_number):
    if first_number > second_number:
        return first_number
    elif first_number < second_number:
        return second_number
    else:
        return first_number

