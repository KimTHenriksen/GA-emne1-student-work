# Text to the file
with open("../data/utf8_test.txt", "w", encoding="UTF-8") as file:
    file.write("Blåbær, grøt, pølse, ærlig og Østfold")

# Read the file
with open("../data/utf8_test.txt", "r", encoding="UTF-8") as file:
    text = file.read()

print(text)