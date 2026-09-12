import random

def roll_die(sides = 6):
    return random.randint(1, sides)

for roll in range(10):
    print(roll_die())

print(roll_die(20))