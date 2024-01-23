-- #!/bin/bash

-- MySQL credentials
MYSQL_USER="your_mysql_user"
MYSQL_PASSWORD="your_mysql_password"

-- Database name to be deleted
DB_NAME="hbtn_0c_0"

-- MySQL command to drop the database
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "DROP DATABASE IF EXISTS $DB_NAME;"

--Check the exit status of the MySQL command
if [ $? -eq 0 ]; then
    echo "Database $DB_NAME deleted successfully."
else
    echo "Error: Unable to delete database $DB_NAME."
fi
