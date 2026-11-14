import mysql.connector
from mysql.connector import Error

region = input("Enter region ")

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
                "WHERE Region = %s "
                "ORDER BY Name ASC"
            )
            cursor.execute(sql, (region,))
            rows = cursor.fetchall()

            if not rows:
                print("No countries found")
            else:
                for name, population in rows:
                    print(name, population)

            print("Number of countries:", len(rows))

except Error as e:
    print(f"Error using MySQL: {e}")


# The unsafe query lets the user change the SQL.
# Parameters keep the input separate from SQL.
# Yes, I can use f-strings with print because it does not change the SQL.
