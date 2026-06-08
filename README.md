# SQL Data Warehouse

## Overview

This project demonstrates the design and implementation of a modern SQL Data Warehouse using dimensional modeling principles and ETL processes. The solution transforms raw sales data into a reporting-ready analytical model that supports business intelligence and decision-making.

---

## Business Problem

Organizations collect large volumes of transactional sales data from multiple systems. Directly querying raw operational data can lead to poor performance and inconsistent reporting.

A centralized Data Warehouse provides:

- Historical data analysis
- Faster reporting
- Improved data quality
- Scalable analytics architecture

---

## Solution Architecture

```text
Source Systems
      │
      ▼
Staging Layer
      │
      ▼
Dimension Tables
      │
      ▼
Fact Tables
      │
      ▼
Business Analytics & Reporting
```

---

## Data Model

### Dimension Tables

#### DimCustomer
Stores customer-related attributes.

| Column |
|----------|
| CustomerKey |
| CustomerID |
| CustomerName |
| Segment |

#### DimProduct
Stores product information.

| Column |
|----------|
| ProductKey |
| ProductID |
| ProductName |
| Category |
| SubCategory |

#### DimDate
Stores calendar attributes used for time-based analysis.

| Column |
|----------|
| DateKey |
| FullDate |
| MonthName |
| QuarterNo |
| YearNo |

### Fact Table

#### FactSales

Stores transactional sales metrics.

| Column |
|----------|
| SalesKey |
| CustomerKey |
| ProductKey |
| DateKey |
| SalesAmount |
| Quantity |
| Profit |

---

## ETL Process

The warehouse follows a structured ETL workflow:

1. Extract sales data from source files.
2. Load data into staging tables.
3. Populate dimension tables.
4. Load fact table records.
5. Execute analytical queries for reporting.

---

## Analytics & KPIs

The solution supports analysis of:

- Total Revenue
- Total Profit
- Sales Trends
- Top Customers
- Top Products
- Category Performance
- Monthly Growth Analysis

---

## SQL Concepts Demonstrated

- Star Schema Design
- Fact and Dimension Modeling
- ETL Processing
- Stored Procedures
- Aggregations
- Joins
- Common Table Expressions (CTEs)
- Window Functions
- Performance Optimization

---

## Repository Structure

```text
SQL-Data-Warehouse
│
├── schema
│   └── create_star_schema.sql
│
├── stored_procedures
│   └── load_fact_sales.sql
│
├── queries
│   └── business_kpi_queries.sql
│
├── datasets
│
├── screenshots
│
└── README.md
```

---

## Technologies Used

- SQL Server
- Data Warehousing
- ETL
- Dimensional Modeling
- Analytics Engineering

---

## Key Learning Outcomes

- Designed a scalable analytical data model
- Implemented Star Schema architecture
- Developed reusable ETL processes
- Created reporting-ready datasets
- Performed business KPI analysis using SQL

---

## Future Enhancements

- Incremental Loading
- Slowly Changing Dimensions (SCD)
- Data Quality Validation Framework
- Power BI Dashboard Integration
- Automated Scheduling
