# 💳 Credit Card Portfolio Analysis Dashboard

## 📌 Project Overview

This project is an end-to-end **Business Intelligence (BI)** analysis of a credit card portfolio using **SQL + Power BI**.

The goal of this project is to analyze:

- overall credit card portfolio performance
- customer transaction behavior
- revenue contribution by customer segments
- credit utilization patterns
- delinquency risk across customer groups

The dashboard is designed to help business users understand **where revenue is coming from**, **which customer segments are most valuable**, and **which segments require closer risk monitoring**.

---

## 🚀 Project Workflow

This project follows a **real-world BI workflow**:

**CSV Files → MySQL Database → SQL Validation → Power BI Dashboard**

### Steps followed:
1. Imported raw CSV files into **MySQL**
2. Created structured database tables
3. Performed:
   - duplicate checks
   - data validation
   - data quality checks
4. Connected **Power BI** directly to MySQL
5. Built an interactive dashboard with DAX measures and slicers

This approach makes the project more professional and closer to a practical reporting workflow used in industry.

---

## 🗂️ Dataset Information

This project uses two main datasets:

- **credit_card.csv** → Credit card transaction details
- **customer.csv** → Customer demographic and profile details

### Key fields used:
- Client Number
- Card Category
- Transaction Amount
- Transaction Count
- Interest Earned
- Annual Fees
- Credit Limit
- Total Revolving Balance
- Utilization Ratio
- Delinquent Account Flag
- Gender
- Age Group
- Income Group
- Education Level
- Marital Status
- Customer Job
- State Code
- Week Start Date

---

## 🛠️ Tools & Technologies Used

- **MySQL** → Data loading, validation, and SQL queries
- **Power BI** → Dashboard development and visualization
- **DAX** → KPI calculations and business measures
- **CSV Files** → Raw data source

---

## 📊 Dashboard Pages

The dashboard is divided into **3 business-focused pages**:

### 1️⃣ Executive Summary / Credit Card Portfolio Overview
This page provides a high-level view of the overall portfolio performance.

**Key KPIs included:**
- Total Revenue
- Total Transaction Amount
- Customer Count
- Average Utilization Ratio
- Delinquent Rate
- Average Satisfaction Score

**Key visuals:**
- Weekly Transaction Amount Trend
- Transaction Amount by Expense Type
- Top 5 States by Revenue
- Revenue by Card Category
- Revenue by Age Group

---

### 2️⃣ Customer Segmentation Analysis
This page focuses on understanding which customer segments contribute the most revenue and how customer behavior differs across groups.

**Key visuals:**
- Revenue by Education Level
- Revenue by Marital Status
- Revenue by Income Group
- Average Satisfaction Score by Income Group
- Revenue by Customer Job
- Delinquent Rate by Age Group

---

### 3️⃣ Risk & Delinquency Analysis
This page focuses on credit risk, delinquency behavior, and portfolio quality.

**Key visuals:**
- Revenue and Delinquent Rate by Card Category
- Delinquent Rate by Utilization Band
- Average Utilization Ratio by Expense Type
- Delinquent Rate by Income Group
- Customer Job Profitability Matrix

---

## 📈 Key Business Insights

Some important insights from the dashboard:

- **Blue Card** category contributes the highest share of total revenue
- **Bills** is the highest transaction spending category
- Customers aged **40–59** contribute the highest revenue
- **Middle Income** and **High Income** groups contribute the most revenue
- **Graduates** and **Married customers** are strong customer segments
- Some high-value segments also show relatively higher delinquency, making risk monitoring important
- Daily-use expense categories such as **Food, Fuel, and Bills** show higher utilization patterns

---

## 🧮 Important DAX Measures

### Total Revenue
```DAX
Total Revenue = SUM('ccdb vw_credit_card_dashboard'[Revenue])
```

### Total Transaction Amount
```DAX
Total Transaction Amount = SUM('ccdb vw_credit_card_dashboard'[Total_Trans_Amt])
```

### Customer Count
```DAX
Customer Count = DISTINCTCOUNT('ccdb vw_credit_card_dashboard'[Client_Num])
```

### Avg Utilization Ratio
```DAX
Avg Utilization Ratio = AVERAGE('ccdb vw_credit_card_dashboard'[Avg_Utilization_Ratio])
```

### Delinquent Rate
```DAX
Delinquent Rate = 
DIVIDE(
    CALCULATE(
        DISTINCTCOUNT('ccdb vw_credit_card_dashboard'[Client_Num]),
        'ccdb vw_credit_card_dashboard'[Delinquent_Acc] = 1
    ),
    DISTINCTCOUNT('ccdb vw_credit_card_dashboard'[Client_Num]),
    0
)
```

### Avg Satisfaction Score
```DAX
Avg Satisfaction Score = AVERAGE('ccdb vw_credit_card_dashboard'[Cust_Satisfaction_Score])
```

---

## 🧹 Data Cleaning & Validation Performed

Before building the dashboard, the following data quality checks were performed in **MySQL**:

- Duplicate customer record checks
- Validation of `Client_Num`
- Checking null / unknown categories
- Verification of data consistency between customer and transaction tables
- Basic validation of delinquent flag values
- Structured data preparation before Power BI connection

This improved data reliability and made the reporting layer cleaner.

---

## 🎛️ Interactive Features

The dashboard includes interactive slicers for:

- Gender
- Quarter
- Card Category
- State Code

These filters allow users to dynamically explore performance, customer segments, and risk patterns.

---

## 📁 Project Files

```bash
📦 Credit-Card-Portfolio-Analysis
 ┣ 📂 data
 ┃ ┣ 📄 credit_card.csv
 ┃ ┗ 📄 customer.csv
 ┣ 📂 sql
 ┃ ┗ 📄 credit_card_financial_database_query.sql
 ┣ 📂 powerbi
 ┃ ┗ 📄 Credit Card Analysis PBI.pbix
 ┣ 📂 Pdf File
 ┃ ┣ 📄 Credit Card Analysis PBI.pdf
 ┗ 📄 README.md
```

---

## 💡 Why This Project Matters

This project demonstrates:

- end-to-end BI workflow
- SQL-based data preparation
- Power BI dashboard development
- DAX measure creation
- business-driven storytelling
- customer segmentation analysis
- risk and delinquency monitoring

It reflects a practical workflow commonly used in real-world analytics and reporting projects.

---

## 👨‍💻 Author

**Aman K**

- Aspiring Data Analyst
- Skilled in Excel, SQL, Python, Power BI, and Data Visualization

---

## ⭐ If you found this project useful

If you liked this project, consider giving it a **star** on GitHub ⭐
