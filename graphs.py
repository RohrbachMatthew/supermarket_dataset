import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
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

# Remove hash to show and save plots
# gender_analysis()
# customer_type_total_spent()