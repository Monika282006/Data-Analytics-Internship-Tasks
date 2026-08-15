# Data-Analytics-Internship-Tasks 4
Data Analytics internship tasks, SQL queries to extract and analyze data from a database

# Task 4 — SQL for Data Analysis

## Objective

The objective of this task is to perform data analysis using SQL queries and demonstrate important SQL concepts such as filtering, sorting, grouping, joins, subqueries, aggregate functions, views, and query optimization using indexes.

## Database

**Database:** `ecommerce_db`
**Main Table:** `ecommerce_sales`

## Topics Covered

### 1. SELECT, WHERE, ORDER BY and GROUP BY

SQL queries were used to:

* Retrieve records from the sales table.
* Filter records based on conditions.
* Sort records using `ORDER BY`.
* Group records using `GROUP BY`.

### 2. JOINS

The following joins were implemented:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN

These joins were used to combine information from the `ecommerce_sales` and `customers` tables using `customer_id`.

### 3. Subqueries

A subquery was used to compare individual `unit_price` values with the average unit price.

### 4. Aggregate Functions

The following aggregate functions were used:

* `SUM()`
* `AVG()`
* `COUNT()`

These functions were used to calculate totals, averages, and record counts.

### 5. Views for Analysis

A view named `sales_category_analysis` was created to summarize sales information by category.

The view includes:

* Total records
* Total quantity
* Average quantity
* Total unit price
* Average unit price

### 6. Query Optimization with Indexes

An index named `idx_quantity` was created on the `quantity` column.

The `EXPLAIN` statement was used to analyze the query execution plan and verify that the `idx_quantity` index was being used.

## Deliverables

### SQL File

`Task_4_SQL_Queries.sql`

This file contains the SQL queries used for Task 4.

### Screenshots

The `Screenshots` folder contains screenshots showing the execution and output of the SQL queries.

## Task 4 Outcome

This task provided practical experience in using SQL for data analysis, including data retrieval, filtering, aggregation, table joining, subqueries, analytical views, and query optimization using indexes.
