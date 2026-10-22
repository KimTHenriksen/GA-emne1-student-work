-- 8. GROUPING, JOIN AND SUBQUERIES

-- Task 1. Total area
SELECT SUM(SurfaceArea) AS Areal
FROM country
WHERE Continent = 'Asia';


-- Task 2. Average population
SELECT AVG(Population) AS Average_population
FROM city
WHERE CountryCode = 'DNK';


-- Task 3. Lowest and highest life expectancy
SELECT MIN(LifeExpectancy) AS lowest_life_expectancy,
       MAX(LifeExpectancy) AS highest_life_expectancy
FROM country;


-- Task 4. Number of countries per region
SELECT Region, COUNT(*) AS country_count
FROM country
GROUP BY Region;


-- Task 5. Regions with many countries
SELECT Region, COUNT(*) AS country_count
FROM country
GROUP BY Region
HAVING country_count >= 10;


-- Task 6. Only African countries
SELECT Region, COUNT(*) AS country_count
FROM country
WHERE Continent = 'Africa'
GROUP BY Region;

-- WHERE filters rows before grouping
-- HAVING filters groups after grouping