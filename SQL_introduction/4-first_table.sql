-- 4-first_table.sql

USE `hbtn_0c_0`;

-- Check if the table exists
IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'hbtn_0c_0' AND table_name = 'first_table') THEN

    -- Table doesn't exist, so create it
    CREATE TABLE `first_table` (
        `id` INT,
        `name` VARCHAR(256)
    );

    SELECT 'Table created' AS output_message;

ELSE
    -- Table already exists
    SELECT 'Table already exists' AS output_message;

END IF;
