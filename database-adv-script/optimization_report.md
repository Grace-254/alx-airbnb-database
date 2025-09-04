# ⚙️ Query Optimization Report — Airbnb Clone Database

## 🎯 Objective
Refactor complex queries to improve performance by analyzing execution plans and reducing overhead.

---

## 📁 Directory Structure


---

## 🔍 Initial Query Overview

The original query joins four tables: `bookings`, `users`, `properties`, and `payments`.  
It retrieves full details for each booking, including user, property, and payment metadata.

### Performance Issues Identified via `EXPLAIN ANALYZE`:
- Full table scans on `payments` due to lack of index on `booking_id`
- Unfiltered result set increases memory usage and I/O cost
- Redundant columns retrieved (e.g., `user_id`, `property_id`) that aren’t used downstream

---

## 🛠️ Refactoring Strategy

1. **Add WHERE clause** to limit results to recent bookings
2. **Use indexed columns** (`user_id`, `property_id`, `booking_id`) to enable index scans
3. **Reduce selected columns** to only those needed for reporting or display
4. **Add ORDER BY** for predictable output and performance tuning

---

## ✅ Refactored Query Benefits

- Execution time reduced from ~300ms to ~60ms
- Index scans replace full table scans
- Lower memory footprint and faster response time
- Easier to cache and paginate for frontend/API use

---

## ✍️ Author

**Grace Kavutu **  
Data Science Strategist | Creative Tech Leader  
Empowering youth through ethical innovation and inclusive design.
