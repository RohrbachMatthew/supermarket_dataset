# 🛒 Supermarket Sales Analysis (SQL + Python)

## Overview
This project explores customer behavior, product sales, and store performance using a supermarket sales dataset. The data was initially ingested and cleaned using Python, then analyzed through a series of SQL queries. Insights focus on demographic trends, high-performing products, and geographical sales distributions.

## 🧠 Technologies Used
- **Python**: for CSV ingestion and data preprocessing
- **MySQL**: for executing relational queries across multiple tables
- **Pandas & CSV Libraries**: for loading and manipulating raw data (Python)
- **Matplotlib / Seaborn (optional)**: for potential visualizations

## 📂 Dataset Structure
The dataset was split across tables:
- `customers`: gender, customer type, invoice ID
- `products`: product line, unit price, quantity, invoice ID
- `sales`: total, gross income, invoice ID
- `stores`: branch, city, invoice ID

## 🔍 Key SQL Queries & Insights

### 👥 Customer Behavior
- **Gender Spending & Profit**:
  - Compared total spending and gross income by gender.
- **Gender vs Membership**:
  - Analyzed how customer type distribution varies by gender.
- **Gender Count**:
  - Counted male vs female customers to understand demographics.

### 📦 Product Sales
- **Top-Selling Product Lines**:
  - Identified product categories with highest quantity sold.
- **Highest Quantity Ordered (Customer)**:
  - Tracked which invoice had the most products purchased.
- **Top 5 High-Price Purchases**:
  - Ranked expensive items purchased by unit price.

### 🏬 Store Performance
- **Branch Performance**:
  - Compared item sales across different store branches.
- **City-Level Sales**:
  - Aggregated quantity sold by city to highlight geographic strengths.

### 📊 Financial Metrics
- **Total Gross Income**:
  - Summed overall gross income across all sales.

## 📊 General Analysis & Interpretation ##
This section explores overarching trends uncovered through SQL queries and supported by visualizations. The goal is to interpret key customer behaviors, regional patterns, and product performance, revealing business-relevant insights.  
🧍 Gender & Customer Type  
<table>
<tr>
</tr><img src="Total_spent_gender.png" alt='spent by gender graph' width='200'> 
<tr><img src="total_spent_customer_type.png" width='200'>
</tr>
</table>
- Females spent more overall despite the near-equal gender split (501 females vs. 499 males).
- Female members represent the largest customer group, suggesting that loyalty programs appeal more to women.
- Insight: Female customers are both more engaged and more profitable, making them prime targets for tailored promotions.
💳 Payment Preferences
- Ewallets were the most popular payment method, just edging out cash and credit cards.
- Indicates a growing comfort with digital payment systems, possibly tied to younger demographics or urban customers.
- Suggests opportunity for app-based incentives or streamlining mobile checkout.
📦 Product Line Performance
- Electronic Accessories and Food & Beverages topped overall sales.
- These may represent utility-driven purchases (tech essentials) versus necessity items (daily consumption).
- Further analysis using quantity vs. average spend can segment buyers into value-driven vs. indulgent consumers.
🧾 Transaction Highlights
- Repeated high-quantity invoices suggest bulk-buying behavior, particularly within top-selling product lines.
- Individual invoices linked to high unit prices reveal luxury transactions in categories like Fashion Accessories and Health & Beauty.
🏬 Store & Regional Strengths
- Yangon was the top-performing city, with the highest total sales.
- Branch A led in item sales, suggesting strong foot traffic or inventory strategy.
- These patterns support regional market segmentation and targeted inventory optimization.
📈 Financial Summary
- Gross income totaled $15,380.05, showing consistent profitability across branches.
- Pairing this figure with top categories and customer profiles builds a clearer picture of what's driving revenue.
