-- 6 MODIFY THE TABLE STRUCTURE

-- Task 6.1 Add a status column

-- Use ALTER TABLE to add status
ALTER TABLE animals
ADD COLUMN status VARCHAR(20) NOT NULL DEFAULT 'new';

-- Check the status. 'new' is default status
SELECT id, name, status
FROM animals;

-- Add a cat named Nova in area Cat Wing
INSERT INTO animals (name, species, area_id)
VALUES ('Nova', 'cat', 1);

-- weight and admitted_on are NULL, status gets the default 'new' value
SELECT name, weight, admitted_on, status
FROM animals
WHERE name = 'Nova';


-- Task 6.2 Change the default value
ALTER TABLE animals
MODIFY COLUMN status VARCHAR(20) NOT NULL DEFAULT 'available';

-- Add the cat Oreo, gets default value 'available' on status
INSERT INTO animals (name, species, area_id)
VALUES ('Oreo', 'cat', 1);


-- Task 6.3 Give the name field more space
ALTER TABLE animals
MODIFY COLUMN name VARCHAR(60) NOT NULL;

-- ALTER TABLE changes the structure of the table
-- UPDATE changes data in an existing row


-- Task 6.4 Remove a column and a table

-- Create a table scratch_labels
CREATE TABLE scratch_labels (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(60)
);

-- Add a row with the text "Temporary label"
INSERT INTO scratch_labels (label)
VALUES ('Temporary label');

-- Remove label with DROP COLUMN
ALTER TABLE scratch_labels
DROP COLUMN label;

-- Remove scratch_labels with DROP TABLE
DROP TABLE scratch_labels;

SELECT *
FROM scratch_labels;

-- "Table 'animal_shelter_practice.scratch_labels' doesn't exist"

-- DROP COLUMN removes the label column
-- DROP TABLE removes the whole table

-- Check point:
-- 8 rows in animals:
SELECT COUNT(*)
FROM animals;

-- 4 rows in areas:
SELECT COUNT(*)
FROM areas;


-- 7 UPDATE SPECIFIC ROWS

-- Task 7.1 Two animals with the same name
-- Find tha cat Luna and write the ID. Update just this cats weight to 3.9.
SELECT id, name, species, weight
FROM animals
WHERE name = 'Luna';

-- Update the weight
UPDATE animals
SET weight = 3.9
WHERE id = 1;

SELECT id, name, species, weight
FROM animals
WHERE name = 'Luna';

-- Using WHERE name = 'Luna' would update both cats
-- Using the ID only updates the correct cat


-- Task 7.2 Two changes in one sentence
-- Find the dog Rex, and change name to Rex Jr and weight to 19.20
SELECT id, name, species, weight
FROM animals
WHERE name = 'Rex';

UPDATE animals
SET name = 'Rex Jr', weight = 19.20
WHERE id = 3;


-- Task 7.3 Move an animal
-- Find tha rabbit Luna
SELECT name, species, area_id
FROM animals
WHERE name = 'Luna' AND species = 'rabbit';

-- Find the area Quiet Zone
SELECT id, name
FROM areas
WHERE name = 'Quiet Zone';

-- Move Luna to Quiet Zone by change area_id
UPDATE animals
SET area_id = 4
WHERE id = 6;

-- Double chek the move:
SELECT id, name, species, area_id
FROM animals
WHERE id = 6;

-- Check if Pip still is in area Small Animals
SELECT id, name, species, area_id
FROM animals
WHERE id = 5;

-- Changed area_id to move the rabbit to another area
-- Changing the area name would rename the area instead


-- Task 7.4 A known value becomes unknown again
-- Find Nala
SELECT id, name, weight
FROM animals
WHERE name = 'Nala';

-- Registry the weight to 14.60
UPDATE animals
SET weight = 14.60
WHERE id = 4;

-- Registry the weight back to NULL
UPDATE animals
SET weight = NULL
WHERE id = 4;

-- Check Nala
SELECT id, name, weight
FROM animals
WHERE name = 'Nala' AND weight IS NULL;

-- NULL means the weight is unknown
-- 0 means the weight is known and set to 0
-- We use IS NULL beacuse NULL doesn't work

-- UPDATE without WHERE can change all rows in the table
-- Using WHERE id makes sure only correct animal is updated


