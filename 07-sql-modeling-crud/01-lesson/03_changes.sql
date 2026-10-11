-- 03 CHANGES, ALTER TABLE AND DROP TABLE

-- Add a new column with default value 1
ALTER TABLE rooms
ADD COLUMN capacity INT NOT NULL DEFAULT 1;

-- Change the default value from 1 to 2
ALTER TABLE rooms
MODIFY COLUMN capacity INT NOT NULL DEFAULT 2;

-- Remove the capacity column from rooms
ALTER TABLE rooms
DROP COLUMN capacity;

-- Create table scratch notes
CREATE TABLE scratch_notes (
    note VARCHAR(100)
);

-- Delete the table scratch notes with DROP TABLE
DROP TABLE scratch_notes;