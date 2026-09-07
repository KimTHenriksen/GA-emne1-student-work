# Ask the user to enter a whole number of seconds.
# First, calculate the whole hours.
# Then, use the remaining seconds to calculate the whole minutes and the remaining seconds.
# Print all three values.

seconds = int(input("Write how many seconds:"))

hours = seconds // 3600

remaining_seconds = seconds % 3600

minutes = remaining_seconds // 60

remaining_seconds = remaining_seconds % 60

print("Hours:", hours)
print("Minutes:", minutes)
print("Remaining seconds:", remaining_seconds)



