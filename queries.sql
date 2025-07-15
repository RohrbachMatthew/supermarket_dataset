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
order by type_count desc
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

