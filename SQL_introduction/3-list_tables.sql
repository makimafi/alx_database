-- create_database_and_mysql

-- Create a new database
CREATE DATABASE IF NOT EXISTS `holbteron_0`;
USE `holbteron_0`;

-- Create three tables
CREATE TABLE IF NOT EXISTS `holbteron_1` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `holbteron_2` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `description` TEXT
);

CREATE TABLE IF NOT EXISTS `hbtn_test_db_0` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `value` DECIMAL(10, 2) NOT NULL
);
