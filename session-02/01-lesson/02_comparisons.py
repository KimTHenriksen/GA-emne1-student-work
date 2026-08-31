age = 20
minimum_age = 25


print(age >= minimum_age)
print(age == 20)
print(age != 20)
print(age < 10)

# Tilordning
score = 10

# Sammenligning
print(score == 10)


# and, or, not
has_ticket = True

can_enter = age >= minimum_age or has_ticket
print(can_enter)

can_sleep_late = True
print(can_sleep_late)

must_get_up = not can_sleep_late
print(must_get_up)