
def read_number():
    number = int(input("Write a number: "))
    return number


def describe_sign(number):
    if number > 0:
        return("positive")
    elif number < 0:
        return("negative")
    else:
        return("zero")

def is_even(number):
    if number % 2 == 0:
        return True
    else:
        return False

def show_analysis(number, sign, even):
    print(number, sign, even)

def run_number_analyzer():
    number = read_number()
    sign = describe_sign(number)
    even = is_even(number)
    show_analysis(number, sign, even)

run_number_analyzer()