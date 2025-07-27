# A program to view order details from invoice_id query

from sqlalchemy import create_engine
import pandas as pd
from config import config

# Create the engine
engine = create_engine(
    f"mysql+pymysql://{config['user']}:{config['password']}@{config['host']}:{config['port']}/{config['database']}"
)

while True:

    user_input = input("Type q to leave.\nEnter invoice ID to query: ")
    if user_input == 'q':
        break
    else:
        query = ("""select c.customer_type, s.total, s.quantity, s.date, s.payment
        from customers c
        join sales s on s.invoice_id = c.invoice_id
        where c.invoice_id = %s""")

        df = pd.read_sql(query, engine, params=(user_input,))

        print(df)
