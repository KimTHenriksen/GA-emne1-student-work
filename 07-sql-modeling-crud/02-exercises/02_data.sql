-- 4 ENTER AND VERIFY DATA

-- Task 4.1 Register the areas

-- Insert areas
INSERT INTO areas (name)
VALUES ('Cat Wing');

INSERT INTO areas (name)
VALUES ('DOG Wing'),
       ('Small animals'),
       ('Quiet Zone');

-- Change the names with UPDATE
UPDATE areas
SET name = 'Dog Wing'
WHERE id = 2;

UPDATE areas
SET name = 'Small Animals'
WHERE id = 3;

-- 4.2 Register the animals
INSERT INTO animals (name, species, weight, admitted_on, area_id)
VALUES ('Luna', 'cat', 3.80, '2026-09-12', 1),
        ('Milo', 'cat', 4.20, NULL, 1),
        ('Rex', 'dog', 18.50, '2026-09-15', 2),
        ('Nala', 'dog', NULL, '2026-09-17', 2),
        ('Pip', 'rabbit', 1.60, '2026-09-20', 3),
        ('Luna', 'rabbit', 2.10, NULL, 3);


-- 4.3 Find specific rows

-- Show id, name, species and area_id for all animals
-- sort on species and ID
SELECT id, name, species, area_id
FROM animals
ORDER BY species, id;

-- Get the two animals named Luna
SELECT id, name, species, area_id
FROM animals
WHERE name = 'Luna';

-- Identify by species and ID
SELECT admitted_on
FROM aninmals
WHERE admitted_on IS NULL;

-- Animals without registered admitted on
SELECT name, admitted_on
FROM animals
WHERE admitted_on IS NULL;

-- Animals without weight
SELECT name, weight
FROM animals
WHERE weight IS NULL;


-- Task 4.4 Check the number and placement
SELECT COUNT(*)
FROM areas;

SELECT COUNT(*)
FROM animals;

-- Get the ID for Quiet Zone
SELECT id
FROM areas
WHERE name = 'Quiet Zone';

-- How many animals in the area Quiet Zone
SELECT COUNT(*)
FROM animals
WHERE area_id = 4;

-- How many animals in the area Small Animals
SELECT COUNT(*)
FROM animals
WHERE area_id = 3;

-- 5 TRY THE RULES IN THE DATABASE

-- Task 5.1 A area name that already exists
INSERT INTO areas (name)
VALUES ('Cat Wing');

-- Get an error message: Duplicate entry 'Cat Wing' for key 'areas.name'
-- UNIQUE prevents duplicate area names

-- Double check it's only one area named 'Cat Wing'
SELECT COUNT(*)
FROM areas
WHERE name = 'Cat Wing';


-- Task 5.2  A mandatory value is missing

-- Insert an animal with name NULL
INSERT INTO animals (name, species, area_id)
VALUES (NULL, 'cat', 2);

-- Gets an error message: Column 'name' cannot be null

-- Insert an animal named Kira, a cat, with NULL in area_id
INSERT INTO animals (name, species, area_id)
VALUES ('Kira', 'cat', NULL);

-- Gets an error message: Column 'area_id' cannot be null


-- Task 5.3 An area that doesn't exist

-- Find a positive whole number that doesn't exist in areas.id
SELECT id
FROM areas
WHERE id = 12;

-- Try to registry Kira with area.id 12
INSERT INTO animals (name, species, area_id)
VALUES ('Kira', 'cat', 12);

-- Gets an error message:  Cannot add or update a child row: a foreign key constraint
-- fails (`animal_shelter_practice`.`animals`, CONSTRAINT `animals_ibfk_1`
-- FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`))

-- FOREIGN KEY prevents using an area_id that doesn't exist
-- NOT NULL only checks that area_id has a value


-- Task 5.4 An ID that has already been used

-- Find the ID to an existing animal
SELECT id, name
FROM animals
WHERE id = 2;

-- Try to registry a new animal with the same ID
INSERT INTO animals (id, name, species, area_id)
VALUES (1, 'Max', 'dog', 2);

-- Gets an error message:  Duplicate entry '1' for key 'animals.PRIMARY'

-- PRIMARY KEY prevents animals from having the same ID
-- Animals can have the same name, but each ID must be unique.

-- Check that the tables has 4 areas and six animals
SELECT COUNT(*)
FROM areas;

SELECT COUNT(*)
FROM animals;

-- Made a mistake and added an extra Dog, named Max
-- Delete Max, id 8:
DELETE FROM animals
WHERE id = 8;

-- Check that it is six animals
SELECT id, name, species, area_id
FROM animals
ORDER BY id;