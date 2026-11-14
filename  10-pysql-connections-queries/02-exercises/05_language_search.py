import mysql.connector
from mysql.connector import Error

country_code = input("Enter country code: ")
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
                "SELECT Language, Percentage, IsOfficial "
                "FROM countrylanguage "
                "WHERE CountryCode = %s "
                "ORDER BY Language ASC"
            )
            cursor.execute(sql, (country_code,))
            rows = cursor.fetchall()

            if not rows:
                print("No language found")
            else:
                for language, percentage, is_official in rows:
                    print(language, percentage, is_official)

            print("Number of languages:", len(rows))

except Error as e:
    print(f"Error using MySQL: {e}")

