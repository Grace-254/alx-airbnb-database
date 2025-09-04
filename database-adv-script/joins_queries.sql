# Advanced SQL Joins – Airbnb Database

## 📁 Repository: alx-airbnb-database
### 📂 Directory: database-adv-script
### 📄 Files:
- joins_queries.sql
- README.md

---

## 🎯 Objective

Master SQL joins by writing complex queries using different types of joins.

---

## 📌 Queries Included

### 1. INNER JOIN
Retrieves all bookings and the respective users who made those bookings.  
*Sorted by:* Most recent booking first (ORDER BY bookings.booking_date DESC)

### 2. LEFT JOIN
Retrieves all properties and their reviews, including properties that have no reviews.  
*Sorted by:* Property name alphabetically (ORDER BY properties.name ASC)

### 3. FULL OUTER JOIN
Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.  
*Sorted by:* User name alphabetically, then booking date descending (ORDER BY users.name ASC, bookings.booking_date DESC)

---

## 🛠 How to Run

1. Open your SQL client (e.g. MySQL Workbench, pgAdmin, or VS Code with SQL extension).
2. Connect to your Airbnb-style database.
3. Open joins_queries.sql.
4. Run each query individually to view results.

---

## 🧠 Notes

- Ensure your tables (users, bookings, properties, reviews) exist and are populated.
- FULL OUTER JOIN may not be supported in all SQL engines (e.g. MySQL). Use a UNION of LEFT and RIGHT JOINs if needed.

---

## 👨‍💻 Author

Grace Kavutu – ALX Backend Engineering Student  
Passionate about building scalable web apps and teaching technical workflows.
