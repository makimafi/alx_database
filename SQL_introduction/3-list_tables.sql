-- create_database_and_tables.sql

-- Create the database
CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;

-- Create table1
CREATE TABLE IF NOT EXISTS table1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create table2
CREATE TABLE IF NOT EXISTS table2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    quantity INT NOT NULL
);

-- Create table3
CREATE TABLE IF NOT EXISTS table3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('active', 'inactive') DEFAULT 'active'
);
