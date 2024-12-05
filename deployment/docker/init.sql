#!/bin/bash

# Wait for MySQL to be ready before creating the table
until mysqladmin ping -h "mysql" --silent; do
    echo "Waiting for MySQL to be ready..."
    sleep 5
done

# Create a SQL file to set up the table
cat <<EOF > /docker-entrypoint-initdb.d/init.sql
USE dummy;

CREATE TABLE IF NOT EXISTS dummy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score INT NOT NULL
);

EOF
