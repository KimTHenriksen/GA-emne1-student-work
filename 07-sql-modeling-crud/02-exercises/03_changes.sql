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

