CREATE TABLE customers (
    user_id INTEGER PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    password TEXT
);

-- Product/item details
CREATE TABLE items (
    product_id INTEGER PRIMARY KEY,
    name NVARCHAR(255),
    category TEXT,
    price REAL,
    inventory INTEGER
);

-- Order information
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_date TEXT,
    FOREIGN KEY (user_id) REFERENCES customers(user_id)
);

-- Order and item information
CREATE TABLE order_items  (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES items(product_id)
	
--Data 
INSERT INTO items (product_id, name, category, price, inventory) VALUES
('Ruby Ring', 'Ring', 299.99, 50),
('Gold Necklace', 'Necklace', 499.99, 25),
('Silver Bracelet', 'Bracelet', 199.99, 26);

INSERT INTO customers (user_id, email, password) VALUES
('jhon@email.com', 'pass123');


INSERT INTO orders (order_id, user_id, order_date) VALUES
(1, '2026-04-01');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 1);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(392, 1301, 2001, 7),