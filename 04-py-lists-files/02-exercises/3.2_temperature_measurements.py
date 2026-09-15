degrees = [15, 5, 25, 17, 8, 14, -2]

for degree in degrees:
    print(f"{degree} degrees")

print()
print(f"Lowest degree: {min(degrees)}")
print(f"Highest degree: {max(degrees)}")

average = sum(degrees) / len(degrees)
print(f"Average degree: {average:.2f}")

print()
for degree in degrees:
    if degree < 10:
        print(f"Cold day: {degree} degrees")
