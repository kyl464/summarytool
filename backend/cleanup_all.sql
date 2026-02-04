SELECT pg_terminate_backend(pid) 
FROM pg_stat_activity 
WHERE datname = 'teachersummary' 
  AND pid <> pg_backend_pid();

DELETE FROM curriculum_sma 
WHERE id NOT IN (
    SELECT MIN(id)
    FROM curriculum_sma
    GROUP BY category, track, lesson_name
);

DELETE FROM curriculum_regular 
WHERE id NOT IN (
    SELECT MIN(id)
    FROM curriculum_regular
    GROUP BY level, quarter, lesson_name
);
