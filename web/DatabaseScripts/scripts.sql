/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Samuel
 * Created: 30 sept 2025
 */

CREATE DATABASE myApp
USE myApp

CREATE TABLE persons (
    personID int,
    lastName varchar(255),
    firstName varchar(255),
    address varchar(255),
    city varchar(255)
);

INSERT INTO persons (personID, lastName, firstName, address, city)
VALUES (1, 'Doe', 'John', '1 AVE STR 123', 'Costa Mesa, Arizona');

INSERT INTO persons (personID, lastName, firstName, address, city)
VALUES (2, 'Taylor', 'Jason', '2 AVE STR 345', 'Phoenix, Arizona');

INSERT INTO persons (personID, lastName, firstName, address, city)
VALUES (3, 'Gomez', 'Edwin', '3 STR NW 876', 'San Diego, California');

SELECT * FROM persons;

CREATE TABLE users (
    userId int,
    username varchar(255),
    password varchar(255),
    status char
);

INSERT INTO users (userId, username, password, status)
VALUES (1, 'brav88@hotmail.com', 'Admin$1234', 1);

SELECT * FROM users WHERE username='brav88@hotmail.com' AND password = 'dmin$1234';

DROP TABLE products;
CREATE TABLE products (
    productId int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    brand varchar(255),
    supplier varchar(255),
    unit_price decimal,
    size varchar(255),
    PRIMARY KEY (productId)
);

INSERT INTO products (name, brand, supplier, unit_price, size)
VALUES
('Laptop Pro X', 'TechNova', 'Global Distributors Inc.', 1299.99, '13-inch');

INSERT INTO products (name, brand, supplier, unit_price, size)
VALUES
('Organic Coffee Beans', 'Morning Brew', 'AgriSupply Co.', 15.50, '1 lb bag');

INSERT INTO products (name, brand, supplier, unit_price, size)
VALUES
('Wireless Mouse M50', 'ErgoGear', 'PC Peripherals Ltd.', 25.00, 'Small/Medium');

INSERT INTO products (name, brand, supplier, unit_price, size)
VALUES
('Running Shoes Max', 'StrideFast', 'Sports Gear LLC', 89.95, 'Size 10 US');

INSERT INTO products (name, brand, supplier, unit_price, size) VALUES (5, '4K Smart TV', 'VisionPlus', 'Electra Trading', 450.75, '50-inch');

SELECT * FROM products

