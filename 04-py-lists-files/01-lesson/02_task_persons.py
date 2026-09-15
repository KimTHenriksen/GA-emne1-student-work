persons = ["Bilbo", "Bowser", "Batman", "Barbie"]
print(persons[0])
print(persons[2])
print(persons[-1])
print(persons[-2])

persons[1] = "Buffy"
print(persons)

# IndexError: out of range (there aren't 6 items)
print(persons[5])

