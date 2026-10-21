
-- SUBQUERY: One SELECT in another
-- Show all city names with a population greater than the global average population per city.

-- Example with a subquery
SELECT Name, Population
FROM city
WHERE Population > (
    SELECT AVG(Population)
    FROM city
    )
ORDER BY Population DESC;


-- Example 2 with two queries
SELECT AVG(Population)
    FROM city;
-- 350468.2236

SELECT Name, Population
FROM city
WHERE Population > 350468.2236
Order BY Population ASC;

-- Subquery with several values:
-- countries with recorded cities of over a million inhabitants
SELECT Code, Name
FROM country
WHERE Code IN (
    SELECT  CountryCode
    FROM city
    WHERE Population >= 1000000
    )
ORDER BY Name;


-- Use JOIN when you want to see columns from multiple tables.
-- Use a subquery when you need the answer to something before you can complete your actual query.