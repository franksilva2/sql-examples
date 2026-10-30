CREATE TABLE customers (
    id         INTEGER PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    email      VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    id          INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    total       DECIMAL(10, 2) NOT NULL,
    ordered_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (id, name, email) VALUES
    (1, 'Ada Lovelace', 'ada@example.com'),
    (2, 'Grace Hopper', 'grace@example.com');

INSERT INTO orders (id, customer_id, total) VALUES
    (1, 1, 59.99),
    (2, 1, 20.00),
    (3, 2, 135.50);
