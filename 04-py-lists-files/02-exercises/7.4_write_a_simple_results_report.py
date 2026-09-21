scores = [10, 25, 45, 50, 60]

number = len(scores)
total = sum(scores)
average = total / number
lowest = min(scores)
highest = max(scores)

with open ("../data/score_report.txt", "w", encoding="UTF-8") as file:
    file.write(f"Number: {number}\n")
    file.write(f"Total: {total}\n")
    file.write(f"Average: {average:.2f}\n")
    file.write(f"Lowest: {lowest}\n")
    file.write(f"Highest: {highest}\n")