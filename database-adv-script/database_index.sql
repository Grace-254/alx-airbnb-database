-- ✅ CREATE INDEX statements to optimize high-usage columns

-- Index on users.id for JOIN operations
CREATE INDEX idx_users_id ON users(id);

-- Index on bookings.user_id for JOIN and filtering
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for JOIN and aggregation
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.id for JOIN with reviews
CREATE INDEX idx_properties_id ON properties(id);

-- Index on reviews.property_id for JOIN and filtering
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Optional: Index on bookings.start_date for date-based filtering
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- --------------------------------------------------------
-- 🧪 EXPLAIN ANALYZE queries to measure performance impact
-- --------------------------------------------------------

-- Before indexing (run this before creating indexes)
EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.start_date >= '2025-01-01';

-- After indexing (run this after creating indexes)
EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.start_date >= '2025-01-01';
