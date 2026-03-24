# Novamart-Retail-Stores-Sales-and-Profitability-Analysis
## Project Overview
Novamart retail group is experiencing a decline in Profit Margins and fluctuating revenue despite sales growth.The objective of this project is to analyze sales, profitability, and discount patterns using Excel, SQL Server, and Power BI to uncover performance drivers and provide strategic recommendations.
## Tools Used
Excel- Data Cleaning,
SQL- Data exploration and analysis,
PowerBi- Data Visualization
## Problem Statement
Revenue is growing but profit margin appears unstable.
Management lacks visibility into Regional performance, Product-level profitability and Impact of discounts.
## Dataset Description
Source: Global Superstore dataset,
Number of rows: 51,248,
Number of columns: 27,
Key fields:
Sales,
Profit,
Discount,
Category,
Region,
Order Date
## [Data Cleaning and preparation with Excel](Cleaned_Global_Superstore2.csv)
The dataset initially contained 51,291 rows and 24 columns, covering sales, profit, product, customer, region, and date information.

Key cleaning steps included:
- Verified data quality: No missing values were found in key fields such as Sales, Profit, Discount, Category, Region, and Order Date  
- Removed duplicates: 42 duplicate records identified using Order ID and Product Name were eliminated  
- Standardized date formats: Unified inconsistent date formats into a single Excel date format  
- Created calculated columns:
  - Profit Margin (%) = Profit / Sales  
  - Month-Year for time-based analysis  
  - Year for trend analysis

     After cleaning, the dataset was reduced to 51,248 rows



