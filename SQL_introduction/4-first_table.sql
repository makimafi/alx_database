USE `hbtn_0c_0`;

-- Check if the table exists before attempting to create it
SELECT COUNT(id) FROM first_table;

-- Create the table only if it doesn't exist
CREATE TABLE IF NOT EXISTS `first_table` (
    `id` INT,
    `name` VARCHAR(256)
);
