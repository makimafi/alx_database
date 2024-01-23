-- create_first_table.sql

-- Check if the table already exists in the current database
SET @table_exists = (SELECT COUNT(*) FROM information_schema.tables WHERE table_name = 'first_table');

-- Create the table only if it doesn't exist
DO IF @table_exists = 0 THEN
    CREATE TABLE first_table (
        id INT,
        name VARCHAR(256)
    );
END IF;
