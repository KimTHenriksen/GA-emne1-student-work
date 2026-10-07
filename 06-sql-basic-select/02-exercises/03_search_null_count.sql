-- TEXT SEARCH WITH LIKE

-- Task 7.1 Country name with a specific start

-- Get country that begins with "B". Sort in alphabetical order.
SELECT Name
FROM country
WHERE Name Like 'B%'
ORDER BY Name;

-- Sort on names beginning with "Br".
SELECT Name
FROM country
WHERE Name Like 'Br%'
ORDER BY Name;

-- The result with 'Br%' gets smaller because there is only three countries in the list starting with "Br".


-- Task 7.2 The end or middle of the name

-- Get countries with name ending with "stan".
SELECT Name
FROM country
WHERE Name Like '%stan'
ORDER BY Name;

-- Get countries with the letters "is" in the name.
SELECT Name
FROM country
WHERE Name Like '%is%'
ORDER BY Name;

-- '%stan' means there can be anything before "stan".
-- '%is%' means there can be anything before and after "is"


-- Task 7.3 Exactly one character

-- Get Name from "country", that has the letter "a" as the second letter.
SELECT Name
FROM country
WHERE Name Like '_a%'
ORDER BY Name;

-- Get country names that have exactly four characters.
SELECT Name
FROM country
WHERE Name Like '____'
ORDER BY Name;

-- % means there can be characters before or after, depending on where it is placed.
-- _ represents one character, so the numbers of "_" controls the number of characters.


-- 8 LISTS AND MISSING VALUES

-- Task 8.1 Three countries with IN

-- Get Name, CountryCode and Population for cities in France (FRA), Spain (ESP) and Portugal (PRT). Use IN.
SELECT Name, CountryCode, Population
FROM city
WHERE Countrycode IN ('FRA', 'ESP', 'PRT')

-- Sort on CountryCode and then Name of the cities.
SELECT Name, CountryCode, Population
FROM city
WHERE Countrycode IN ('FRA', 'ESP', 'PRT')
ORDER BY CountryCode, NAME;


-- Task 8.2 IN and OR

-- IN and OR gives the same result, but IN is shorter to write.
SELECT Name, CountryCode, Population
FROM city
WHERE (Countrycode = 'FRA'
    OR CountryCode ='ESP'
    OR CountryCode = 'PRT')
AND Population >= 300000
ORDER BY CountryCode, Name;


-- Task 8.3 Missing life expectancy

-- Get Name and LifeExpectancy for countries , where life expectancy hasn't been registered.
-- Use IS NULL.
SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NULL;

-- NULL means there is no information filled in.


-- Task 8.4 Recorded life expectancy

-- Get Name and LifeExpectancy for countries with a register value.
-- Use IS NOT NULL and sort on life expectancy descending. Sort on Code ascending
-- Show the ten first rows.
SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC, CODE ASC
LIMIT 10;


-- 9 COUNT ROWS WITH COUNT

-- Task 9.1 How many cities and countries

-- Get all the rows in city and country with two queries.
SELECT COUNT(*) AS CityCount
FROM city;

SELECT COUNT(*) AS CountryCount
FROM country;

-- COUNT(*) counts all the rows and shows the total in one row.


-- Task 9.2 Count a filtered section

-- Count cities in Mexico (MEX), with at least 500 000 inhabitants.
-- Use alias LargeCityCount
SELECT COUNT(*) AS LargeCityCount
FROM city
WHERE CountryCode = 'MEX'
    AND Population >= 500000;

-- Control the result with a query, showing Name and Population
SELECT Name, Population
FROM city
WHERE CountryCode = 'MEX'
    AND Population >= 500000;


-- Task 9.3 How many values are missing

-- Count countries with no LifeExpectancy.
SELECT COUNT(*)
FROM country
WHERE LifeExpectancy IS NULL;

-- Count countries with LifeExpectancy in another query.
SELECT COUNT(*)
FROM country
WHERE LifeExpectancy IS NOT NULL;

-- IS NULL shows 17 countries
-- IS NOT NULL shows 222 countries
-- Together the two results give the total number of countries.