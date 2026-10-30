USE WAREHOUSE SEDemo;

-- Add USE DATABASE / USE SCHEMA here if needed, e.g.:
-- USE SCHEMA my_database.my_schema;

CREATE TABLE IF NOT EXISTS orders (
    order_id     BIGINT,
    customer_id  BIGINT,
    product_id   BIGINT,
    order_date   DATE,
    order_volume BIGINT
);

INSERT INTO orders (order_id, customer_id, product_id, order_date, order_volume) VALUES
    (1,  1, 5,  '2022-05-18', 3),
    (2,  1, 2,  '2022-05-07', 1),
    (3,  1, 1,  '2022-03-24', 1),
    (4,  1, 6,  '2022-05-17', 5),
    (5,  1, 7,  '2022-05-25', 8),
    (6,  2, 5,  '2022-05-31', 3),
    (7,  2, 7,  '2022-01-21', 5),
    (8,  2, 10, '2022-02-10', 7),
    (9,  2, 1,  '2022-05-30', 10),
    (10, 2, 10, '2022-02-14', 2);
