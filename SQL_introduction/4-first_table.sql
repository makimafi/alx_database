-- 4-first_table.sql

USE `hbtn_0c_0`;

CREATE TABLE IF NOT EXISTS `first_table` (
    `id` INT,
    `name` VARCHAR(256)
);

 SELECT 'Table created' AS output_message;

ELSE
    -- Table already exists
    SELECT 'Table already exists' AS output_message;

END IF;