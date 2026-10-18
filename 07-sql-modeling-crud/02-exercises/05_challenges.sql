-- 9 READ A MODEL THAT ALREADY EXISTS


-- Task 9.1 Primary key with different names

-- country: code is the primary key
-- countrylanguage: CountryCode and Language are the primary key (two columns together)
-- One language can exist in several countries, so both columns are needed.


-- Task 9.2 Examine language information

-- Get CountryCode, Language, Percentage from countrylanguage - just for Norway (NOR)
SELECT CountryCode, Languare, Percentage
FROM countrylanguage
WHERE CountryCode = 'NOR';

-- Check the country code with a new query, using country
SELECT Code, Name
FROM country
WHERE Code = 'NOR';

-- A country can have several languages, so multiple rows can have the same CountryCode
-- In animal_shelter_practice: animals can have the same area_id, because they belong to the same area


-- 10 READ AND CORRECT SQL

-- Task 10.1 Commas and parantheses

-- Correct the comma errors:
CREATE TABLE scratch_tags (
id INT AUTO_INCREMENT,
label VARCHAR(30) NOT NULL
PRIMARY KEY (id),
);

-- Correction:
CREATE TABLE scratch_tags (
id INT AUTO_INCREMENT,
label VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

-- Commas separate definitions so SQL can read them correctly.
-- No comma after the last definition.


-- Task 10.2 Columns and values

-- Get an area_id
SELECT id, name
FROM areas;

-- What's missing in the INSERT:
INSERT INTO animals (name, species, area_id)
VALUES ('Tyra', 'cat');

-- Correction:
INSERT INTO animals (name, species, area_id)
VALUES ('Tyra', 'cat', 1);


-- Task 10.3 Valid SQL with incorrect selection

-- Only update the rabbit Luna and check if the code can affect the wrong animal
UPDATE animals
SET weight = 2.50
WHERE name = 'Luna';

SELECT id, name, species
FROM animals
WHERE name = 'Luna';

-- Correction to update only the rabbit Luna
UPDATE animals
SET weight = 2.50
WHERE id = 6;


-- Task 10.4 Delete is not a SELECT

-- Find the syntax error.
DELETE * FROM animals
WHERE name = 'Nova';

-- we don't use * and we should use id instead of name

SELECT id, name
FROM animals;

-- Correction:
DELETE FROM animals
WHERE id = 9;
