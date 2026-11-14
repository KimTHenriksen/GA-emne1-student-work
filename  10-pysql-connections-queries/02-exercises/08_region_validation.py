import mysql.connector
from mysql.connector import Error

region = input("Enter region ")

try:
    min_population = int(input("Enter min population: "))
except ValueError:
    print("Invalid number")
    exit()

if min_population < 0:
    print("Population can't be negative")
    exit()

try:
    with mysql.connector.connect(
        host="localhost",
        port=3306,
        user="root",
        password="gokstad",
        database="world"
    ) as connection:
        print("Connected to MySQL")

        with connection.cursor() as cursor:
            sql = (
                "SELECT Name, Population "
                "FROM country "
                "WHERE Region = %s AND Population >= %s "
                "ORDER BY Name ASC"
            )
            cursor.execute(sql, (region, min_population))
            rows = cursor.fetchall()

            if not rows:
                print("No countries found")
            else:
                for name, population in rows:
                    print(name, population)

            print("Number of countries:", len(rows))

except Error as e:
    print(f"Error using MySQL: {e}")

