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