-- 4-first_table.sql

-- Use the specified database
USE hbtn_0c_0;

-- Check if the table already exists
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);

-- Informative message
SELECT 'Table first_table created or already exists.' AS 'Result';
