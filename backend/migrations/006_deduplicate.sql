-- Remove duplicates from curriculum_regular
-- Keeps the entry with the smallest ID (the first one added)
DELETE FROM curriculum_regular a USING curriculum_regular b
WHERE a.id > b.id
  AND a.level = b.level
  AND a.quarter = b.quarter
  AND a.lesson_name = b.lesson_name;

-- Remove duplicates from curriculum_sma
DELETE FROM curriculum_sma a USING curriculum_sma b
WHERE a.id > b.id
  AND a.category = b.category
  AND a.track = b.track
  AND a.lesson_name = b.lesson_name;
