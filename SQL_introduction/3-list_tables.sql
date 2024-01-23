-- create_database_and_tables.sql

-- Create a new database
CREATE DATABASE IF NOT EXISTS `mysql`;
USE `mysql`;

-- Create three tables
CREATE TABLE IF NOT EXISTS `table1` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `table2` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `description` TEXT
);

CREATE TABLE IF NOT EXISTS `table3` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `value` DECIMAL(10, 2) NOT NULL
);
