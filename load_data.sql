-- create a staging table to load data from csv then to each table
/*  
CREATE TABLE staging (
    invoice_id VARCHAR(10),
    branch VARCHAR(10),
    city VARCHAR(20),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    product_line VARCHAR(30),
    unit_price DECIMAL(6,2),
    quantity INT,
    tax DECIMAL(6,2),
    total DECIMAL(8,2),
    date DATE,
    time TIME,
    payment VARCHAR(20),
    cogs DECIMAL(8,2),
    gross_margin_percentage FLOAT,
    gross_income DECIMAL(8,2),
    rating DECIMAL(3,1)
);
*/
-- ----------------------------------- 
 -- Python was used ot load the data
 
 -- ----------------------------------
 -- insert into sales from staging table
 /*
 INSERT INTO sales (invoice_id, date, time, quantity, tax, total, cogs, payment, 
 gross_margin_percentage, gross_income, rating
)
SELECT
invoice_id, date, time, quantity, tax, total, cogs, payment, gross_margin_percentage, 
gross_income, rating
FROM staging;
*/

-- ----------------------------------
-- insert into stores
/*
insert into stores (invoice_id, branch, city)
select invoice_id, branch, city from staging
*/

-- ----------------------------------
-- insert into products
/*
insert into products (invoice_id, product_line, unit_price)
select invoice_id, product_line, unit_price from staging
*/

-- ----------------------------------
-- insert into customers
/*
insert into customers (invoice_id, gender, customer_type)
select invoice_id, gender, customer_type from staging
*/
