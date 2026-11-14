import mysql.connector
from mysql.connector import Error

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
                "WHERE CountryCode = 'SWE' "
                "ORDER BY Language ASC"
            )
            cursor.execute(sql)
            rows = cursor.fetchall()

            for language, percentage, is_official in rows:
                print(language, percentage, is_official)

            # Count the number of languages
            print("Number of languages:", len(rows))

except Error as e:
    print(f"Error using MySQL: {e}")

# I use three variables because each row has three values.
# The order is decided by the columns in SELECT.