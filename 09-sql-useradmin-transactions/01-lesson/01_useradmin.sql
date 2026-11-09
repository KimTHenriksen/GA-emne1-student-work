-- Opprett ny bruker
-- Navnet på bruker og tilkoblingsmuligheter
-- Sett passord med IDENTIFIED BY
CREATE USER 'city_reader'@'%'
IDENTIFIED BY 'ReadOnly_09!';

-- Gi rettigheter
GRANT SELECT ON world.city
TO 'city_reader'@'%';

-- Sjekk
SHOW GRANTS
FOR 'city_reader'@'%';



-- SELECT CURRENT_USER()
-- SELECT CURRENT_USER(), CONNECTION_ID();

-- Får lov til å lese i city:
SELECT Name, Population
FROM city;

-- Får ikke se i country eller endre
SELECT *
FROM country;

UPDATE city
SET Population = 100
WHERE CountryCode = 'NOR'
    AND Name = 'Oslo';


-- User A (root)
SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR'
    AND Name IN ('Oslo', 'Bergen');

START TRANSACTION;

UPDATE city
SET Population = Population - 100000
WHERE CountryCode = 'NOR'
    AND Name = 'Oslo';

UPDATE city
SET Population = Population + 100000
WHERE CountryCode = 'NOR'
    AND Name = 'Bergen';

-- Angre:
ROLLBACK;

-- Permanent endring:
COMMIT;

-- User B (city_reader)
SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR'
    AND Name IN ('Oslo', 'Bergen');

UPDATE city
SET Population = Population + 100000
WHERE CountryCode = 'NOR'
    AND Name = 'Bergen';

