from pathlib import Path

shopping_list = Path("..") / "data" / "shopping_list.txt"

shopping_items = []

with open(shopping_list, "r", encoding="utf-8") as file:
    for line in file:
        line = line.strip()
        shopping_items.append(line)

print(shopping_items)

