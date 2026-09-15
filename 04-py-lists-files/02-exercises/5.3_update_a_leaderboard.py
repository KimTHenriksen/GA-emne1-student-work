scoreboard = {
    "Anna": 10,
    "Bob": 5,
    "Charlie": 20,
    "David": 15
}

print(f"Bob's score is: {scoreboard["Bob"]}")

scoreboard["Eric"] = 15
print(scoreboard)

for name in scoreboard:
    print(name, scoreboard[name])

# Used a new variable: name, to go through all the keys in the dictonary.
# scoreboard[name] to get the value from each key.