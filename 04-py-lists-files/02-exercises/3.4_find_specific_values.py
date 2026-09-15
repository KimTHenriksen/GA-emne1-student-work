numbers = [10, 70, 40, 80, 90]

count = 0

for number in numbers:
    if number > 50:
        print(number)
        count += 1

print(f"Numbers over 50: {count}")
