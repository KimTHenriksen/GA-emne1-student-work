-- JOIN

-- Task 7. Languages in Canada
SELECT country.Name,
       countrylanguage.Language
FROM country
INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE country.Code = 'CAN';


-- Task 8. Only official languages
SELECT country.Name,
       countrylanguage.Language
FROM country
INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE country.Code = 'CAN'
     AND countrylanguage.IsOfficial = 'T';


-- Task 9. All countries shall participate
SELECT country.Name,
       countrylanguage.Language,
       countrylanguage.IsOfficial
FROM country
LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode;

-- NULL means no languages are registered for the country.
-- The same country can appear several times if it has multiple languages.


-- Task 10. Countries with no language match
SELECT country.Name,
       countrylanguage.Language,
       countrylanguage.IsOfficial
FROM country
LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.CountryCode is NULL;


-- Task 11. A missing link
-- Fix this version:
SELECT countryName, countrylanguage.Language
FROM country
JOIN countrylanguage:

-- Correct version:
SELECT country.Name, countrylanguage.Language
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode;

-- Adding ON connects each country to it's correct languages.
-- A cartesian product with 3 * 4 rows gives 12 rows
