def is_even(number):
    """Check if a number is even and returns True or False"""
    if number % 2 == 0:
        return True
    else:
        return False


def find_largest(first_number, second_number):
    """Finds the largest number of two numbers and returns it"""
    if first_number > second_number:
        return first_number
    elif first_number < second_number:
        return second_number
    else:
        return first_number

