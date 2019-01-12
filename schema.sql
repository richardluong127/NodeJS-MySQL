DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products
(
    item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
	product_name VARCHAR(60) NOT NULL,
	department_name VARCHAR(60) NOT NULL,
	price DECIMAL(10,2) NULL,
	stock_quantity INTEGER(11),
	PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Ghostware Laptop", "Computers", 3999.99, 800);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tesla v3", "Automotive", 33333.33, 333);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tesla Fast Charger", "Automotive", 66667.67, 333);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Stories Voiced By James Earl Jones", "Audiobooks", 25.00, 10000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ByteCoin Mining Rig", "Computers", 13337.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("SiriusPwr Generator", "Batteries", 900.00, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mercuryfish", "Pets", 666.00, 88);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mercuryfish Flakes", "Pets", 50.00, 3000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("T-Rex Skeleton", "Home and Garden", 2000000.00, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Flying Nimbus", "Hobbies", 50000.00, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Snowman", "Home and Garden", 50.00, 10000);

SELECT * FROM bamazon.products;