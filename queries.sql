-- Queries gender and total sales
/*
select c.gender, 
round(sum(s.total), 2) as total_spent,
round(sum(s.gross_income), 2) as profit
from customers c
join sales s on s.invoice_id = c.invoice_id
group by c.gender
*/


-- Genders compared to member types
/*
select c.gender, c.customer_type,
count(c.customer_type) as type_count
from customers c
join sales s on s.invoice_id = c.invoice_id
group by c.gender, c.customer_type
order by customer_type
*/


-- compare customer type and total spent
/*
select c.customer_type, sum(s.total) as total
from customers c
join sales s on s.invoice_id = c.invoice_id
group by c.customer_type
order by total
*/


-- count of males vs females
/*
select gender, count(gender) as gender_count
from customers
group by gender
order by gender_count
*/


-- show the most sold from product lines
/*
select p.product_line, sum(s.quantity) as total_sold
from products p
join sales s on s.invoice_id = p.invoice_id
group by p.product_line
order by total_sold desc
*/


-- branch that sells the most
/*
select st.branch, sum(s.quantity) as amount_sold
from stores st
join sales s on s.invoice_id = st.invoice_id
group by st.branch
order by amount_sold desc
*/


-- city that sells the most
/*
select st.city, sum(s.quantity) as total_sales
from stores st
join sales s
group by st.city
*/


-- total sales
/*
select sum(gross_income)
from sales
*/


-- What customer has ordered the most items
/*
select c.invoice_id, sum(s.quantity) as quantity
from customers c 
join sales s on s.invoice_id = c.invoice_id
group by c.invoice_id
order by quantity desc
*/


-- who is ordering the most (top 5) expensive items
/*
select s.invoice_id, s.quantity, p.unit_price, p.product_line
from products p
join sales s on s.invoice_id = p.invoice_id
order by p.unit_price desc
limit 5
*/


-- Show all sales information with gender and type from customers table
/*
select s.*, c.gender, c.customer_type from sales s 
join customers c on s.invoice_id = c.invoice_id
*/


-- Total for each payment type
/*
select s.payment, count(s.payment) as payment_type_sum from sales s
group by payment
order by payment_type_sum desc
*/


-- Top 5 items that costs the most to make
/*
select p.product_line, s.invoice_id, s.cogs as cost_of_goods
from sales s
join products p on s.invoice_id = p.invoice_id
order by cost_of_goods desc
limit 5
*/


-- Example of how system(Python) will query for invoice ID
/*
select c.customer_type, s.total, s.quantity, s.date, s.payment
from customers c
join sales s on s.invoice_id = c.invoice_id
where c.invoice_id = '137-63-5492'
*/

-- NEW QUERIES ------------------

-- Average spending by customer_type
/*
select c.customer_type, avg(s.total) as total
from customers c
join sales s using (invoice_id)
group by customer_type
*/


-- Top rated invoices by city
/*
select st.city, s.rating as rating
from stores st
join sales s using(invoice_id)
order by rating desc
*/


-- Spending across time of day
/*
select hour(time) as hour_block, avg(total) as avg_spending
from sales
group by hour_block
order by hour_block 
*/


-- Monthly sales growth
/*
select month(date) as month, sum(total) as monthly_sales
from sales
group by month
order by month
*/


-- Average gross income per product line
/*
select p.product_line, avg(s.gross_income) as gross_income
from products p
join sales s using(invoice_id)
group by product_line
order by gross_income
*/


-- Product with highest average rating
/*
select p.product_line, avg(s.rating) as rating
from products p
join sales s using(invoice_id)
group by product_line
order by rating desc
*/