SELECT category, track, lesson_name, COUNT(*) 
FROM curriculum_sma 
GROUP BY category, track, lesson_name 
HAVING COUNT(*) > 1;

SELECT COUNT(*) as total_sma_lessons FROM curriculum_sma;
