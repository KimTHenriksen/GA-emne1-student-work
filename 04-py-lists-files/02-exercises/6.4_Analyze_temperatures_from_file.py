from pathlib import Path

temperatures = Path ("..") / "data" / "temperatures.txt"

temperature_list = []

with open(temperatures, "r", encoding="utf-8") as file:
    for line in file:
        line = line.strip()
        temperature_list.append(float(line))

print(temperature_list)

print(f"Number of temperatures: {len(temperature_list)}")
print(f"Lowest temperature: {min(temperature_list)}")
print(f"Highest temperature: {max(temperature_list)}")

total = sum(temperature_list)
print(f"Sum temperature: {total}")

average = total / len(temperature_list)
print(f"Average temperature: {average:.2f}")

