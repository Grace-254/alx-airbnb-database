-- Step 1: Create a partitioned bookings table by start_date (monthly partitions)

CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20)
) PARTITION BY RANGE (start_date);

-- Step 2: Create monthly partitions (example: Jan–Mar 2025)

CREATE TABLE bookings_jan_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');

CREATE TABLE bookings_feb_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');

CREATE TABLE bookings_mar_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');

-- Step 3: Insert sample data (optional for testing)

-- INSERT INTO bookings_partitioned (...) VALUES (...);

-- Step 4: Test query performance using EXPLAIN ANALYZE

EXPLAIN ANALYZE
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-02-10' AND '2025-02-20';
