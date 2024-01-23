-- 4-first_table.sql


USE `hbtn_0c_0`;

CREATE TABLE IF NOT EXISTS `first_table` (
    `id` INT,
    `name` VARCHAR(256)
);


-- Set the database name based on the argument passed to the mysql command
USE `?`;

-- Check if the table already exists
SET @tableExists = (
    SELECT COUNT(*)
    FROM information_schema.tables
    WHERE table_schema = DATABASE() AND table_name = 'first_table'
);

-- If the table doesn't exist, create it
IF @tableExists = 0 THEN
    CREATE TABLE `first_table` (
        `id` INT,
        `name` VARCHAR(256)
    );
    SELECT 'Table created' AS output_message;
ELSE
    SELECT 'Table already exists' AS output_message;
END IF;
