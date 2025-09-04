# 🚀 Index Optimization Report — Airbnb Clone Database

## 🎯 Objective
Improve query performance by identifying high-usage columns and creating indexes on them.  
Measure performance impact using `EXPLAIN` or `ANALYZE`.

---

## 📁 Directory Structure


---

## 🔍 Step 1: Identify High-Usage Columns

Based on previous queries and schema usage, the following columns are frequently used in `WHERE`, `JOIN`, and `ORDER BY` clauses:

| Table      | Column        | Usage Context                     |
|------------|---------------|-----------------------------------|
| users      | id            | JOIN with bookings                |
| bookings   | user_id       | JOIN, WHERE, GROUP BY             |
| bookings   | property_id   | JOIN, GROUP BY                    |
| bookings   | start_date    | WHERE filtering                   |
| properties | id            | JOIN with reviews                 |
| reviews    | property_id   | JOIN, GROUP BY                    |

---

## 🛠️ Step 2: Create Indexes

SQL commands are saved in `database_index.sql`.  
Each index targets a column used in high-frequency operations to reduce scan time and improve join efficiency.

---

## 📊 Step 3: Measure Performance

### Example Query (Before Indexing)
EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.start_date >= '2025-01-01';

EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.start_date >= '2025-01-01';


