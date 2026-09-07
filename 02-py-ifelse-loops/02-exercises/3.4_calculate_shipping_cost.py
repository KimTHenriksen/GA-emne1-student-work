package_weight = float(input("Package in kilogram: "))
if package_weight <= 2:
    print("79 kr")
elif package_weight <= 5:
    print("129 kr")
elif package_weight <= 10:
    print("199 kr")
else:
    print("The package weight over 10 kg and can't be sent with this service.")