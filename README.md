# Retail Orders ETL Pipeline and Sales Analysis

### 1. Description

This project demonstrates the complete ETL (Extract, Transform, Load) process on a retail orders dataset, followed by insightful SQL-based sales analysis.
The pipeline automates data extraction from Kaggle, cleans and transforms the dataset in Python (Pandas), loads it into a PostgreSQL database, and 
performs analytical queries to uncover business insights such as top-selling products, revenue trends, and category performance over time.

### 2. Purpose

The goal of this project is to showcase:
End-to-End ETL workflow (data ingestion → transformation → loading to database)
Data cleaning and feature engineering for analytics
SQL queries for business intelligence and sales performance tracking
Reproducible and automated pipeline for retail analytics

### 3. Tech Stack

Programming Language: Python (Pandas, SQLAlchemy, psycopg2)  

Database: PostgreSQL  

Data Source: Kaggle Retail Orders Dataset  

Other Tools: Kaggle API, Jupyter Notebook  

### 4. Data Source

Dataset Name: Retail Orders  

Source: Kaggle - [ankitbansal06/retail-orders](https://www.kaggle.com/datasets/ankitbansal06/retail-orders)  

### 5.	Features / Highlights

1] Data Extraction:  

Automated dataset download via Kaggle API  

2] Data Transformation:  

Handling missing values (Not Available, unknown)  

Standardizing column names  

Feature engineering:  

  Discount calculation  
  
  Sale price computation  
  
  Profit computation  
  
Conversion of date fields to datetime format  

Removal of unnecessary columns  

3] Data Loading:  

Connection to PostgreSQL via SQLAlchemy & psycopg2  

Loading transformed data into df_orders table  

4] SQL Analysis Queries:  

Top 10 highest revenue-generating products  

Top 5 highest-selling products per region  

Month-over-month sales growth comparison (2022 vs 2023)  

Category-wise highest sales month  

Sub-category with highest profit growth (2023 vs 2022)  
