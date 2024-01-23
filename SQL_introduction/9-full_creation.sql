#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Store the database name from the command line argument
DB_NAME="$1"

# MySQL connection parameters
MYSQL_CMD="mysql -hlocalhost -uroot -p"

# Create the second_table if it doesn't exist
echo "CREATE TABLE IF NOT EXISTS ${DB_NAME}.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);" | $MYSQL_CMD $DB_NAME

# Insert data into the second_table
echo "INSERT INTO ${DB_NAME}.second_table (id, name, score) VALUES
    (1, 'John', 10),
    (2, 'Alex', 3),
    (3, 'Bob', 14),
    (4, 'George', 8);" | $MYSQL_CMD $DB_NAME

# Check for errors
if [ $? -eq 0 ]; then
    echo "Script executed successfully."
else
    echo "Error executing script."
fi
