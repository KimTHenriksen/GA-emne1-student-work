-- Task 12. Count language with LEFT JOIN
SELECT country.Code, country.Name,
       COUNT(countrylanguage.Language) AS language_count
FROM country
    LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
GROUP BY country.Code, country.Name;


-- Task 13. An empty sum
SELECT SUM(Population) AS
FROM city
WHERE CountryCode = 'ATA';

-- Add COALESCE
SELECT COALESCE(SUM(Population), 0)
FROM city
WHERE CountryCode = 'ATA';

-- With COALESCE NULL gets a value: 0


-- Task 14. Countries with a larger-than-average land area
SELECT AVG(SurfaceArea)
FROM country;

-- subquery:
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea > (
    SELECT AVG(SurfaceArea)
    FROM country
)
ORDER BY SurfaceArea ASC;

