secret_pin = 2468
attempts_left = 3
is_authenticated = False

pin_code = int(input("Write PIN-code: "))

while attempts_left > 0 and not is_authenticated:
    if pin_code == secret_pin:
        is_authenticated = True
        print("Access granted")
    else:
        attempts_left -= 1
        print("Access denied")
        print("Attempts left:", attempts_left)
        pin_code = int(input("Write PIN-code: "))