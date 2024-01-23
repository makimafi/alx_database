-- 9-full_creation_without_comments.sql

-- Use the specified database
USE hbtn_0c_0;

-- Check if the table already exists
SET @table_exists = (SELECT COUNT(*) FROM information_schema.tables WHERE table_name = 'second_table');

-- Create the table only if it doesn't exist
DO IF @table_exists = 0 THEN
    CREATE TABLE second_table (
        id INT,
        name VARCHAR(256),
        score INT
    );
END IF;

-- Insert records into the table
INSERT INTO second_table (id, name, score) VALUES
    (1, 'John', 10),
    (2, 'Alex', 3),
    (3, 'Bob', 14),
    (4, 'George', 8);

-- Informative message
SELECT 'Table second_table created or already exists, and records inserted.' AS 'Result';
