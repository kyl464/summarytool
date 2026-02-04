-- Simpler deduplication for SMA
DELETE FROM curriculum_sma 
WHERE id NOT IN (
    SELECT MIN(id)
    FROM curriculum_sma
    GROUP BY category, track, lesson_name
);
