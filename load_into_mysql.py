import pandas as pd
import mysql.connector

# Load CSV into DataFrame
df = pd.read_csv("insert path")

# Connect to MySQL
conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Password1',
    database='super_market_db',
    port='3307'
)
cursor = conn.cursor()

# Convert 'date' column to proper datetime format and then to MySQL-friendly string
df['Date'] = pd.to_datetime(df['Date'], format='%m/%d/%Y').dt.strftime('%Y-%m-%d')

# Insert rows into staging table
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO staging (
            invoice_id, branch, city, customer_type, gender, product_line,
            unit_price, quantity, tax, total, date, time, payment,
            cogs, gross_margin_percentage, gross_income, rating
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, tuple(row))

conn.commit()
cursor.close()
conn.close()