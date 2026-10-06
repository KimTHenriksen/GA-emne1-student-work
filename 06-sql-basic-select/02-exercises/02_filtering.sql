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


-- 5 COMBINE CONDITIONS

-- Task 5.1 Large Brazilian cities

-- Get Name and Population for cities in Brazil (BRA), with at least 500 000 inhabitants.
SELECT Name, Population
FROM city
WHERE CountryCode = 'BRA'
    AND Population >= 500000;


-- Task 5.2 An interval for population size

--Get Name and Population for countries with at least 2 million to 8 million inhabitants.
SELECT Name, Population
FROM country
WHERE Population >= 2000000
    AND Population <= 8000000;


-- Task 5.3 Two countries and one shared requirement

-- Get Name, CountryCode and Population for cities in Australia (AUS) or New Zealand (NZL).
-- Only cities with over 200 000 inhabitants.
SELECT Name, CountryCode, Population
FROM city
WHERE (CountryCode = 'AUS'
    OR CountryCode = 'NZL')
    AND Population > 200000;

-- Without parantheses, the population requirement would only apply to one of the countries.
-- With parantheses it applies to both countries.


-- 6 SORTING AND LIMITING

-- Task 6.1 Countries in alphabetical order

-- Get Name and Region for countries in Asia (Asia). Sort in alphabetical order.
SELECT Name, Region
FROM country
WHERE Continent = 'Asia'
ORDER BY Name ASC;

-- I get the same result with and without ASC, because ASC is the default sorting order.


-- Task 6.2 The largest countries by area

-- Get Name and SurfaceArea for the eight countries with largest area.
-- Display the biggest first.
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea DESC, Code ASC
LIMIT 8;


-- Task 6.3 Sorting on several columns

-- Get Name, District and Population for cities in Canada (CAN).
-- First sort on district in alphabetical order, then by population in descendeing order, and last by ID in ascending order.
SELECT Name, District, Population
FROM city
WHERE CountryCode = 'CAN'
ORDER BY District, Population DESC, ID ASC;

-- Calgary and Edmonton is in the same district. Calgary comes first because it has a larger population.


-- Task 6.4 Five arbitrary or five specific ones

-- Get five rows with Code and Name from "country" with LIMIT 5, without sorting.
SELECT Code, Name
FROM country
LIMIT 5;

-- The five countries in alphabetical order.
SELECT Code, Name
FROM country
ORDER BY Name
LIMIT 5;

-- Without ORDER BY,LIMIT 5 only gives five rows, but we don't know which five we get.

