-- JOIN

-- Example with JOIN
SELECT country.Name AS country_name, CountryCode, Code, city.Name AS city_name
FROM city;
JOIN country ON CountryCode = Code;

SELECT country.Name AS country_name, city.Name AS city_name
FROM city;
JOIN country ON CountryCode = Code;

-- This is wrong (cartesian product). Very important to write ON after JOIN
SELECT country.Name AS country_name, CountryCode, Code, city.Name AS city_name
FROM city;
JOIN country;


-- JOIN with three tables
-- Capital cities and official languages
SELECT country.Name AS country_name,
       city.Name AS capital_name,
       countrylanguage.Language
FROM country
JOIN city ON country.Capital = city.ID
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE country.Continent = 'Europe'
    AND countrylanguage.IsOfficial = 'T'
ORDER BY country_name ASC


-- Example LEFT JOIN.
-- Gets everything on the left side (country name and city name)

SELECT country.Name AS country_name,
       city.Name AS city_name
FROM country
LEFT JOIN city ON city.CountryCode = countryCode
ORDER BY country.Name;

-- Ex. Antarctica is also in the result, Antarctia doesn't have any cities

-- RIGHT JOIN
-- Gets everything on the right side of JOIN

-- Get the countries without cities, use WHERE ... IS NULL
SELECT country.Name AS country_name,
       city.Name AS city_name
FROM country
LEFT JOIN city ON city.CountryCode = countryCode
WHERE city.Name IS  NULL
ORDER BY country.Name;

-- WHERE city.CountryCode IS  NULL


-- LEFT JOIN with conditions
SELECT country.Name AS country_name,
       city.Name AS city_name
FROM country
LEFT JOIN city ON city.CountryCode = countryCode
               AND  city.Population > 1000000
ORDER BY country.Name;


