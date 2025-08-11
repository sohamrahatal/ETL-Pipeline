# 🛍 Retail Orders ETL Pipeline & Sales Analysis  

![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13+-blue?logo=postgresql)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-orange?logo=pandas)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📚 **Table of Contents**
1. [📌 Description](#-description)
2. [🎯 Purpose](#-purpose)
3. [🛠 Tech Stack](#-tech-stack)
4. [📂 Data Source](#-data-source)
5. [🚀 Features / Highlights](#-features--highlights)
6. [📎 SQL Analysis Queries](#-sql-analysis-queries)

---

## 📌 **Description**
This project demonstrates the complete **ETL (Extract, Transform, Load)** process on a retail orders dataset, followed by **SQL-based sales analysis**.

The pipeline:
- 📥 Extracts data from **Kaggle API**
- 🔄 Transforms it with **Python (Pandas)**
- 🗄 Loads it into a **PostgreSQL** database
- 📊 Runs analytical queries to uncover insights such as:
  - **Top-selling products**
  - **Revenue trends**
  - **Category performance over time**

---

## 🎯 **Purpose**
The goal of this project is to showcase:
- ✅ **End-to-End ETL workflow** (data ingestion → transformation → loading to database)
- ✅ **Data cleaning & feature engineering** for analytics
- ✅ **SQL queries** for business intelligence & performance tracking
- ✅ **Automated & reproducible** retail analytics pipeline

---

## 🛠 **Tech Stack**
- **Programming Language**: Python (`Pandas`, `SQLAlchemy`, `psycopg2`)  
- **Database**: PostgreSQL  
- **Tools**: Kaggle API, Jupyter Notebook  

---

## 📂 **Data Source**
**Dataset**: Retail Orders  
**Source**: [Kaggle – ankitbansal06/retail-orders](https://www.kaggle.com/datasets/ankitbansal06/retail-orders)  

---

## 🚀 **Features / Highlights**
### **1️⃣ Data Extraction**
- 📥 Automated dataset download via **Kaggle API**

### **2️⃣ Data Transformation**
- 🧹 Handle missing values (`Not Available`, `unknown`)  
- 🏷 Standardize column names  
- ✨ Feature Engineering:
  - 💲 **Discount Calculation**  
  - 💵 **Sale Price Computation**  
  - 📈 **Profit Computation**
- 📅 Convert date fields to datetime format  
- 🗑 Remove unnecessary columns  

### **3️⃣ Data Loading**
- 🔗 Connect to PostgreSQL via **SQLAlchemy** & **psycopg2**  
- 📤 Load transformed data into `df_orders` table  

---

## 📎 **SQL Analysis Queries**
1. 🏆 **Top 10 highest revenue-generating products**  
2. 🌍 **Top 5 highest-selling products per region**  
3. 📈 **Month-over-month sales growth comparison (2022 vs 2023)**  
4. 📅 **Category-wise highest sales month**  
5. 💹 **Sub-category with highest profit growth (2023 vs 2022)**  

---

💡 *This project is a complete ETL + Analytics workflow, making it a strong portfolio piece for data engineering and analytics roles.*
