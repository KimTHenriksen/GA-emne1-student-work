-- FILTER ROWS WITH WHERE

-- Task 4.1 Cities in Japan

-- Get Name, District, Population from cities in Japan. Use CountryCode JPN to filter rows for Japan.
SELECT Name, District, Population
FROM city
WHERE CountryCode = 'JPN';


-- Task 4.2 South American countries

-- Get Name and Population from "country", with Continent-value 'South America'. Text values must be in single quotes.
SELECT Name, Population
FROM country
WHERE Continent = 'South America';


-- Task 4.3 Small countries by area

-- Get Name and SurfaceArea for countries with an area smaller than 1000 km².
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea < 10000;

-- Change the query to include exactly 1000 km².
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea <= 10000;

-- < means less than, while <= means less or equal to


-- Task 4.4 Another district

-- Get Name, CountryCode. District from "city", where District is different from California.
SELECT Name, CountryCode, District
FROM city
WHERE District <> 'California';

-- The query does not only get American cities, it gets everything except District California.