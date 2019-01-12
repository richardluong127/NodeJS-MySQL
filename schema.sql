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
VALUES ("Ghostware Laptop", "Computers", 3999.99, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tesla v3", "Automotive", 33333.33, 33);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tesla Fast Charger", "Automotive", 66667.67, 33);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Stories Voiced By James Earl Jones", "Audiobooks", 25.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ByteCoin Mining Rig", "Computers", 13337.00, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("SiriusPwr Generator", "Batteries", 900.00, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mercuryfish", "Pets", 666.00, 24);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mercuryfish Flakes", "Pets", 50.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("T-Rex Skeleton", "Collectibles", 2000000.00, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Flying Nimbus", "Hobbies", 50000.00, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Snowman", "Home and Garden", 50.00, 100);

SELECT * FROM bamazon.products;