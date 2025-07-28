import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
from config import config

conn = mysql.connector.connect(**config)

def gender_analysis():
    # query
    query = """
    select c.gender, 
    round(sum(s.total), 2) as total_spent
    from customers c
    join sales s on s.invoice_id = c.invoice_id
    group by c.gender
    """

    df = pd.read_sql(query, conn)

    df.plot(x='gender', y='total_spent', kind='bar', rot=0, color='blue')
    plt.title('Total Spent by Gender')
    plt.ylabel('Total Spent')
    plt.xlabel('Gender')
    plt.tight_layout()
    plt.savefig('Total_spent_gender.png')
    print("total_spent_gender plot saved")

def customer_type_total_spent():
    query = """
    select c.customer_type, sum(s.total) as total
from customers c
join sales s on s.invoice_id = c.invoice_id
group by c.customer_type
order by total
    """

    df = pd.read_sql(query, conn)
    df.plot(x='customer_type', y='total', kind='bar', rot=0, color='blue')
    plt.savefig('total_spent_customer_type.png')


def top_product_lines_quantity():
    query = """
    select p.product_line, sum(s.quantity) as total_sold
from products p
join sales s on s.invoice_id = p.invoice_id
group by p.product_line
order by total_sold desc
    """

    df = pd.read_sql(query, conn)
    df.plot(x='product_line', y='total_sold', kind="bar", rot=20)
    plt.title("Top Product Lines by Quantity Sold")
    plt.ylabel('Quantity Sold')
    plt.xlabel('Product')
    plt.tight_layout()
    plt.savefig("top_products_by_quantity")


def income_by_product_line():
    query = """
    select p.product_line, avg(s.gross_income) as gross_income
from products p
join sales s using(invoice_id)
group by product_line
order by gross_income

    """

    df = pd.read_sql(query, conn)
    print(df)
    df.plot(x='product_line', y='gross_income', kind="bar", rot=20)
    plt.title("AVG Gross Income by Product Line")
    plt.ylabel("Income Amount AVG")
    plt.xlabel("Product Line")
    plt.tight_layout()
    plt.savefig("avg_income_product_line")


def items_sold_by_branch():
    query = """
    select st.branch, sum(s.quantity) as amount_sold
from stores st
join sales s on s.invoice_id = st.invoice_id
group by st.branch
order by amount_sold desc

    """

    df = pd.read_sql(query, conn)
    df.plot(x='branch', y='amount_sold', kind="bar")
    plt.title("Total Items Sold by Branch")
    plt.ylabel("Items Sold")
    plt.xlabel("Branch")
    plt.tight_layout()
    plt.savefig("items_sold_by_branch")

def tot_sales_city():
    query = """
    select st.city, sum(s.quantity) as total_sales
from stores st
join sales s
group by st.city
            """
    df = pd.read_sql(query, conn)
    df.plot(x='city', y='total_sales', kind='bar', rot=0, legend=False)
    plt.title("Total Sales Per City")
    plt.ylabel("Sales (Millions)")
    plt.savefig("tot_sales_city")


def ratings_city():
    query = """
    select st.city, avg(s.rating) as rating
from stores st
join sales s using(invoice_id)
group by city
order by rating desc
    """

    df = pd.read_sql(query, conn)

    df.plot(x='city', y='rating', kind="bar", rot=0, legend=False)
    plt.title("AVG Rating Per City")
    plt.ylabel("Rating")
    plt.xlabel("City")
    plt.tight_layout()
    plt.savefig("ratings_city")

def spending_per_hour():
    query = """
    select hour(time) as hour_block, avg(total) as avg_spending
from sales
group by hour_block
order by hour_block
    """

    df = pd.read_sql(query, conn)

    df.plot(x='hour_block', y='avg_spending', kind="line", rot=0, legend=False)
    plt.title("AVG Spending Per Hour")
    plt.ylabel("AVG Spending")
    plt.xlabel("Hour")
    plt.tight_layout()
    plt.savefig("spending_per_hour_avg")

# Remove hash to show and save plots
# gender_analysis()
# customer_type_total_spent()
# top_product_lines_quantity()
# income_by_product_line()
# items_sold_by_branch()
# tot_sales_city()
# ratings_city()
# spending_per_hour()
