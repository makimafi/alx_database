USE `hbtn_0c_0`;

-- Attempt to create the table
CREATE TABLE `first_table` (
    `id` INT,
    `name` VARCHAR(256)
);

-- Check for errors
SELECT
    CASE
        WHEN errno = 1146 THEN 'Table doesn’t exist'
        ELSE 'Unknown error'
    END AS message
FROM
    mysql.proc
WHERE
    db = DATABASE() AND name = 'first_table';
