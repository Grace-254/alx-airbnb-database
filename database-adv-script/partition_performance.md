# 🧱 Partitioning Performance Report — Airbnb Clone Database

## 🎯 Objective
Optimize query performance on large datasets by implementing table partitioning on the `bookings` table using the `start_date` column.

---

## 📁 Directory Structure


---

## 🔍 Strategy

Partition the `bookings` table by `start_date` using monthly ranges.  
This allows the database engine to scan only relevant partitions when filtering by date, reducing I/O and memory usage.

---

## 🧪 Performance Test

### Query Tested

```sql
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-02-10' AND '2025-02-20';
