-- Enkel spørring for å hente alle kolonner og rader i oppgitt tabell (city):
SELECT *
FROM city

-- Enkel spørring for å hente alle kolonner for byer i Norge:
SELECT *
FROM city
WHERE CountryCode = 'NOR';


-- Byer med innbyggere over 1000000:
SELECT Name, Population, ID
FROM city
WHERE Population > 1000000;

-- Byer i Norge med innbyggere over 200 000:
SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR'
    AND Population > 200000;

-- Byer i Norge eller Sverige med innbyggere over 200 000:
SELECT Name, Population
FROM city
WHERE (CountryCode = 'NOR'
       OR CountryCode = 'SWE')
    AND Population > 200000;

-- Sortert alfabetisk på navn, ASC stigende:
SELECT Name, Population
FROM city
WHERE (CountryCode = 'NOR'
        OR CountryCode = 'SWE')
    AND Population > 200000
ORDER BY Name ASC;

-- Sortert på største byen med høyest population først:
SELECT Name, Population
FROM city
WHERE Population > 1000000
ORDER BY Population DESC;

-- Søk uten WHERE, kan bruke LIMIT. Sortert på population:
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 5;

-- Bruk city. Hent navn og folketall for svenske byer med mer enn
-- 100 000 innbyggere. Vis byen med størst folketall først.
SELECT Name, Population
FROM city
WHERE CountryCode = 'SWE'
    AND Population > 100000
ORDER BY Population DESC;

-- Søk etter byer med navn som starter og slutter på O. Bruk % og LIKE:
SELECT Name
FROM city
WHERE Name LIKE 'O%o';

-- Søk etter byer med navn på 4 tegn, som starter og slutter med O. Bruk _ og LIKE:
SELECT Name
FROM city
WHERE Name LIKE 'O__o';

-- Eksempel med IN:
SELECT Name, CountryCode
FROM city
WHERE CountryCode IN
      ('NOR', 'SWE')
ORDER BY CountryCode, Name;

-- Eksempel med NULL. Land som ikke har vært okkupert:
SELECT *
FROM country
WHERE IndepYear IS NULL;

-- Bruk COUNT() for å få frem antall rader:
SELECT COUNT(*)
FROM country
WHERE IndepYear IS NULL;


SELECT COUNT(*) AS NumberofNorwegianCities
FROM city
WHERE CountryCode = 'NOR';