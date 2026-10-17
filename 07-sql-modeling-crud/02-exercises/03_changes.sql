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