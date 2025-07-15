-- CREATE TABLES

/*
create table sales (
invoice_id VARCHAR (30) primary key,
date DATE,
time TIME,
quantity INT,
tax DECIMAL(6,2),
total DECIMAL (8,2),
cogs Decimal (8,2),
payment VARCHAR(20),
gross_margin_percentage FLOAT,
gross_income DECIMAL(8,2),
rating DECIMAL (3,1)
)
*/

/*
create table customers (
invoice_id varchar(30) primary key,
gender varchar(10),
customer_type varchar(20),
foreign key (invoice_id) references sales(invoice_id)
)
*/

/*
create table stores (
invoice_id varchar(30) primary key,
branch varchar(20),
city varchar(30),
foreign key (invoice_id) references sales(invoice_id)
)
*/

/*
create table products (
invoice_id varchar(30) primary key,
product_line varchar(30),
unit_price DECIMAL(6,2),
foreign key (invoice_id) references sales(invoice_id)
)
*/

-- select * from sales
