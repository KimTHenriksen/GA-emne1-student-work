-- Challenge 1 Countries in three regions

-- Get countries in Region Caribbean, Polynesia or Micronesia
-- At least 100 000 inhabitants
-- Less than 10 000 km²
SELECT Name, Region, Population,SurfaceArea
FROm country
WHERE (Region = 'Caribbean'
    OR Region = 'Polynesia'
    OR Region = ' Micronesia')
 AND Population >= 100000
 AND SurfaceArea < 10000;

-- Sort Region in alphabetical order, and then population descending order.
-- Use Code ascending if several countries have the same region and population.
SELECT Name, Region, Population,SurfaceArea
FROm country
WHERE (Region = 'Caribbean'
    OR Region = 'Polynesia'
    OR Region = ' Micronesia')
 AND Population >= 100000
 AND SurfaceArea < 10000
ORDER BY Region ASC, Population DESC, Code ASC;

-- Query counting the countries
SELECT COUNT(*)
FROM country
WHERE (Region = 'Caribbean'
    OR Region = 'Polynesia'
    OR Region = ' Micronesia')
 AND Population >= 100000
 AND SurfaceArea < 10000;

-- I checked that both queries use the same WHERE conditions.
-- The first query shows 11 countries and COUNT(*) also returns 11.
