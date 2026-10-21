-- JOIN and GROUP BY together

-- Overview of country codes and country names, and the number of cities in each of the countries
SELECT country.Name AS country_name,
       city.Name AS city_name
        COUNT(city.ID) AS city_count
FROM country
LEFT JOIN city ON city.CountryCode = countryCode
GROUP by country.Code, country.Name
ORDER BY city_count DESC;


-- Example 2.
SELECT country.Name AS country_name,
       city.Name AS city_name
        COUNT(city.ID) AS city_count
FROM country
LEFT JOIN city ON city.CountryCode = countryCode
GROUP by country.Code, country.Name
-- HAVING
ORDER BY city_count DESC;


-- COALESCE
-- A function to find the first value that is not NULL, and use it
-- Can change NULL to text or a number, ex. N/A
SELECT country.Name AS country_name,
       city.Name AS city_name
        COALESCE((SUM(city.Population), 0) AS sum_city_pop
FROM country
LEFT JOIN city ON city.CountryCode = countryCode
GROUP by country.Code, country.Name
ORDER BY sum_city_pop DESC;

