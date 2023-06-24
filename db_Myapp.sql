CREATE DATABASE IF NOT EXISTS db_Myapp;

USE db_Myapp;

CREATE TABLE IF NOT EXISTS users_tbl (
    user_id INT AUTO_INCREMENT,
    user_firstname VARCHAR(40) NOT NULL,
    user_lastname VARCHAR(40) NOT NULL,
    user_email VARCHAR(60) NOT NULL,
    user_password VARBINARY(256),
    PRIMARY KEY (user_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS categories_tbl (
    category_id INT AUTO_INCREMENT,
    category_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (category_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS products_tbl (
    product_id INT AUTO_INCREMENT,
    product_name VARCHAR(40) NOT NULL,
    product_value INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories_tbl(category_id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (product_id),
    INDEX (category_id)
) ENGINE = InnoDB;