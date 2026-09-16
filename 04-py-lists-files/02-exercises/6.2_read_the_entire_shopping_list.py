from pathlib import Path

shopping_list = Path("..") / "data" / "shopping_list.txt"

with open(shopping_list, "r", encoding="utf-8") as file:
    content = file.read()

    print(content)