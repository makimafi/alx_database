--#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Database name passed as an argument
db_name="$1"

# MySQL credentials
mysql_user="your_mysql_username"
mysql_password="your_mysql_password"

# Create table if not exists
mysql -u "$mysql_user" -p"$mysql_password" "$db_name" <<EOF
CREATE TABLE IF NOT EXISTS second_table (
    id INT,
    name VARCHAR(256),
    score INT
);
EOF

# Insert records
mysql -u "$mysql_user" -p"$mysql_password" "$db_name" <<EOF
INSERT INTO second_table (id, name, score) VALUES (1, 'John', 10);
INSERT INTO second_table (id, name, score) VALUES (2, 'Alex', 3);
INSERT INTO second_table (id, name, score) VALUES (3, 'Bob', 14);
INSERT INTO second_table (id, name, score) VALUES (4, 'George', 8);
EOF

# Display records
echo "Records in second_table:"
mysql -u "$mysql_user" -p"$mysql_password" "$db_name" -e "SELECT * FROM second_table;"
