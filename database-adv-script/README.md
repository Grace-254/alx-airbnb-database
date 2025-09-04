# Advanced SQL Joins — Airbnb Clone Database

## 📌 Objective
Master SQL joins by writing complex queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

## 📂 Directory
`database-adv-script`

## 📁 Files
- `joins_queries.sql`: Contains SQL queries demonstrating different types of joins.
- `README.md`: Documentation and explanation of each query.

---

## 🔍 Query Breakdown

### 1. INNER JOIN — Bookings with Users
Retrieves all bookings and the users who made them. Excludes bookings without a linked user.

```sql
SELECT ...
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
