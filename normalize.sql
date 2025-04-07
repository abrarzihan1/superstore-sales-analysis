-- start transaction
BEGIN;

CREATE TABLE customers AS
SELECT DISTINCT "Customer ID", "Customer Name", "Segment"
FROM superstore;

CREATE TABLE locations AS
SELECT DISTINCT "Postal Code", "City", "State", "Region", "Country"
from superstore;

CREATE TABLE products AS
SELECT DISTINCT "Product ID", "Category", "Sub-Category", "Product Name"
FROM superstore;

CREATE TABLE orders AS
SELECT DISTINCT "Row ID",
                "Order ID",
                "Order Date",
                "Ship Date",
                "Ship Mode",
                "Customer ID",
                "Postal Code",
                "Product ID",
                "Product Name",
                "Sales",
                "Quantity",
                "Discount",
                "Profit"
FROM superstore;

commit;

SELECT DISTINCT "Customer ID"
FROM orders
WHERE "Customer ID" IS NOT NULL
AND "Customer ID" NOT IN (SELECT "Customer ID" FROM customers);

ROLLBACK ;

SELECT *
    FROM products
        WHERE "Product ID" = 'TEC-AC-10002049';

SELECT "Product Name", COUNT(*)
FROM products
GROUP BY "Product Name"
ORDER BY COUNT(*) DESC ;

SELECT *
    FROM locations WHERE "Postal Code" = '92024';


BEGIN ;

COMMIT;

ALTER TABLE customers
    ADD PRIMARY KEY ("Customer ID");

ALTER TABLE orders
    ADD PRIMARY KEY ("Row ID");

ALTER TABLE products
    ADD PRIMARY KEY ("Product ID", "Product Name");

ALTER TABLE locations
    ADD PRIMARY KEY ("Postal Code");

ALTER TABLE orders
add CONSTRAINT fk_customer
FOREIGN KEY ("Customer ID")
REFERENCES customers ("Customer ID");

ALTER TABLE orders
    ADD CONSTRAINT fk_location
        FOREIGN KEY ("Postal Code")
            REFERENCES locations ("Postal Code");


ALTER TABLE orders
    ADD CONSTRAINT fk_product
        FOREIGN KEY ("Product ID", "Product Name")
            REFERENCES products ("Product ID", "Product Name");