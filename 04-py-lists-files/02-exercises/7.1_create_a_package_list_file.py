packing_list = ["t-shirts", "pants", "toothbrush", "schampoo", "deodorant", "socks"]

with open("../data/packing_list.txt", "w", encoding="UTF-8") as file:
    for item in packing_list:
        file.write(item + "\n")