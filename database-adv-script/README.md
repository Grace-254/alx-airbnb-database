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


SELECT ...
FROM bookings
INNER JOIN users ON bookings.user_id = users.id





# 🧠 SQL Subqueries — Airbnb Clone Database

## 🎯 Objective
Practice writing both correlated and non-correlated subqueries to extract meaningful insights from the Airbnb Clone database.

---

## 📁 Directory Structure


---

## 📄 File Descriptions

### `subqueries.sql`
Contains two SQL queries:

1. **Non-Correlated Subquery — Properties with High Ratings**  
   Retrieves all properties where the average rating is greater than 4.0.  
   The subquery calculates average ratings per property using `GROUP BY` and `HAVING`.

2. **Correlated Subquery — Active Users**  
   Retrieves users who have made more than 3 bookings.  
   The subquery is correlated because it references the outer query (`u.id`) inside the inner query.

---

## 🧪 How to Use

Run each query in your SQL environment connected to the Airbnb Clone database.  
These queries are modular and can be adapted for analytics, reporting, or debugging.

---

## ✍️ Author

**Grace Kavutu**  
Data Science Strategist | Creative Tech Leader  
Empowering youth through ethical innovation and inclusive design.


# 📊 SQL Aggregation & Window Functions — Airbnb Clone Database

## 🎯 Objective
Use SQL aggregation and window functions to analyze booking data and rank properties.

---

## 📁 Directory Structure


---

## 📄 File Descriptions

### `aggregations_and_window_functions.sql`
Contains two SQL queries:

1. **Aggregation Query — Total Bookings per User**  
   Uses `COUNT(*)` and `GROUP BY` to calculate how many bookings each user has made.  
   Results are sorted in descending order of total bookings.

2. **Window Function Query — Property Ranking**  
   Uses `RANK()` window function to rank properties based on the number of bookings.  
   The query groups by `property_id`, counts bookings, and ranks them from most to least booked.

---

## 🧪 How to Use

Run each query in your SQL environment connected to the Airbnb Clone database.  
These queries are modular and can be adapted for dashboards, analytics, or performance insights.

---

## ✍️ Author

**Grace Kavutu **  
Data Science Strategist | Creative Tech Leader  
Empowering youth through ethical innovation and inclusive design.






