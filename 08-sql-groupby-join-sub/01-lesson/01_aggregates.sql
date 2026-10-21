
-- AGGREGATES

-- COUNT()
SELECT COUNT(*)
FROM country;

-- SUM
SELECT SUM(Population)
FROM country;

-- AVG (Average)
SELECT AVG(Population)
FROM country;

-- MIN
SELECT MIN(Population)
FROM country;

-- MAX
SELECT MAX(Population)
FROM country;

-- Example.
SELECT SUM(Population AS total_population),
       AVG(Population AS avg_population),
       MIN(Population AS min_population),
       MAX(Population AS max_population)
FROM city
WHERE CountryCode = 'NOR';

-- Example with /
SELECT Name, Population / 1000000 AS pop_millions
FROM country;
WHERE Population > 1000000
ORDER BY pop_millions DESC;


-- GROUP BY

-- Total population by continent
SELECT CONTINENT, SUM(Population)
FROM country
-- WHERE
GROUP BY Continent
-- ORDER BY
-- LIMIT
;

-- Total population by continent
-- 2 aggregation functions
SELECT CONTINENT, SUM(Population), COUNT(*)
FROM country
-- WHERE
GROUP BY Continent
-- ORDER BY
-- LIMIT
;

-- Region is not an aggregation function, must be inn GROUP BY
SELECT CONTINENT, REGION, SUM(Population), COUNT(*)
FROM country
-- WHERE
GROUP BY Continent, Region
-- ORDER BY
-- LIMIT
;

-- Alphabetical order on Continent and Region
-- Example 1
SELECT CONTINENT, REGION, SUM(Population), COUNT(*)
FROM country
-- WHERE
GROUP BY Continent, Region
ORDER BY Continent ASC, Region ASC
-- LIMIT
;

-- Example 2.
SELECT CONTINENT, REGION, SUM(Population), COUNT(*)
FROM country
-- WHERE
GROUP BY Continent, Region
ORDER BY Continent ASC, SUM(Population) DESC
-- LIMIT
;


-- HAVING

SELECT CONTINENT, COUNT(*) AS country_count
FROM country
WHERE Population > 10000000
GROUP BY Continent
HAVING COUNT(*) >= 5
ORDER BY country_count;
