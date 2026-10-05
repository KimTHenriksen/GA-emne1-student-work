from pathlib import Path

# Find data folde
data_folder = Path(__file__).parent.parent / "data"

# Find report file
path = data_folder / "report.txt"
print(path)

try:
    with path.open("w", encoding="UTF-8") as file:
        file.write("Practice report\n")

except PermissionError:
    print(f"Error, no permission to write here: {path}")

