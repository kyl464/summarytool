-- Migration: Add is_milestone column to curriculum_sma
ALTER TABLE curriculum_sma ADD COLUMN is_milestone BOOLEAN DEFAULT FALSE;

-- Update existing "Milestone" entries to be true
UPDATE curriculum_sma SET is_milestone = TRUE WHERE lesson_name ILIKE '%Milestone%';
