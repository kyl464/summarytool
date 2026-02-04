-- Force deduplication with lock timeout
SET lock_timeout = '10s';

-- Create temp table for SMA unique rows
CREATE TEMP TABLE unique_sma AS
SELECT DISTINCT ON (category, track, lesson_name) *
FROM curriculum_sma
ORDER BY category, track, lesson_name, id;

-- Truncate and refill
TRUNCATE TABLE curriculum_sma;
INSERT INTO curriculum_sma SELECT * FROM unique_sma;
DROP TABLE unique_sma;

-- Create temp table for regular unique rows
CREATE TEMP TABLE unique_regular AS
SELECT DISTINCT ON (level, quarter, lesson_name) *
FROM curriculum_regular
ORDER BY level, quarter, lesson_name, id;

-- Truncate and refill
TRUNCATE TABLE curriculum_regular CASCADE;
INSERT INTO curriculum_regular SELECT * FROM unique_regular;
DROP TABLE unique_regular;

-- Reset sequences to max id + 1
SELECT setval('curriculum_sma_id_seq', (SELECT MAX(id) FROM curriculum_sma));
SELECT setval('curriculum_regular_id_seq', (SELECT MAX(id) FROM curriculum_regular));
