def is_even(number):
        if number % 2 == 0:
            return True
        else:
            return False

for number in range(1, 11):
    print(is_even(number))