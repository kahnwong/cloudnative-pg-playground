CREATE TABLE products
(
    id           SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price        NUMERIC(10, 2),
    in_stock     BOOLEAN   DEFAULT TRUE,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (product_name, price, in_stock)
VALUES ('Mechanical Keyboard', 89.99, true),
       ('Ergonomic Mouse', 45.00, true),
       ('USB-C Hub', 25.50, false),
       ('Ring Light', 15.00, true),
       ('Monitor Stand', 32.99, true) RETURNING *;
