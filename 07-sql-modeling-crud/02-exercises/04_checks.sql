-- 8 DELETE DATA IN THE CORRECT ORDER

-- Task 8.1 Delete one test record
-- Find Oreo and delete the row
SELECT id, name, species
FROM animals
WHERE name = 'Oreo';

DELETE FROM animals
WHERE id = 11;

-- Check that Oreo is gone, and that Nova still exist
SELECT id, name, species
FROM animals
WHERE name IN ('Oreo', 'Nova');

-- Count animals
SELECT COUNT(*)
FROM animals;


-- Task 8.2 A area is still in use
-- Find the ID to Small Animals
-- Try delete the area, while Pip still is connected to it
SELECT id
FROM areas
WHERE name = 'Small Animals';

DELETE FROM areas
WHERE id = 3;

-- Error message: Cannot delete or update a parent row:
-- a foreign key constraint fails (`animal_shelter_practice`.`animals`,
-- CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`))

-- Move Pip to Quiet Zone with ID
SELECT id
FROM areas
WHERE name = 'Quiet Zone';

SELECT id
FROM animals
WHERE name = 'Pip';

UPDATE animals
SET area_id = 4
WHERE id = 5;

-- Check that it's no animals in Small Animals
SELECT *
FROM animals
WHERE area_id = 3;

-- Delete Small Animals
DELETE FROM areas
WHERE id = 3;


-- Task 8.3 Check the result

-- Check 3 areas:
SELECT COUNT(*)
FROM areas;

-- Check 7 animals:
SELECT COUNT(*)
FROM animals;

-- Get the animals in Quiet Zone by area_id, check that it is two rabbits
SELECT name, species, area_id
FROM animals
WHERE area_id = 4;

-- DELETE removes a row or rows in a table
-- DROP TABLE delete the whole table
-- When I removed Oreo, I used one row by DELETE