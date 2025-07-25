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
