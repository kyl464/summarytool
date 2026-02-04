-- Database Migration: Initial Schema
-- Run this in pgAdmin or psql

-- Table for Regular Curriculum (Kinder, SD1, SD2, SMP, Thematic)
CREATE TABLE IF NOT EXISTS curriculum_regular (
    id SERIAL PRIMARY KEY,
    level VARCHAR(50) NOT NULL,
    quarter INTEGER NOT NULL CHECK (quarter BETWEEN 1 AND 20),
    lesson_order INTEGER NOT NULL,
    lesson_name VARCHAR(255) NOT NULL,
    description TEXT,
    is_milestone BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for SMA Curriculum (Category/Track based)
CREATE TABLE IF NOT EXISTS curriculum_sma (
    id SERIAL PRIMARY KEY,
    category VARCHAR(100) NOT NULL,
    track VARCHAR(50) NOT NULL,
    lesson_order INTEGER NOT NULL,
    lesson_name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indexes for better query performance
CREATE INDEX idx_regular_level_quarter ON curriculum_regular(level, quarter);
CREATE INDEX idx_sma_category_track ON curriculum_sma(category, track);

-- Sample data for Regular Curriculum (SD1, Quarter 1)
INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
('SD1', 1, 1, 'Code.org - Flappy Code', 'Introduction to events while building a Flappy Bird game.', FALSE),
('SD1', 1, 2, 'MIT App Inventor – Global Food Map', 'Using maps, markers, and data to display information interactively.', FALSE),
('SD1', 1, 3, 'Scratch Jr - Animation Basics', 'Learning basic animation concepts using visual blocks.', FALSE),
('SD1', 1, 4, 'Blocks Jumper - Game Creation', 'Creating a game where the player taps the screen to make a monkey jump.', FALSE),
('SD1', 1, 5, 'Code.org - Dance Party', 'Creating dance animations using event-driven programming.', FALSE),
('SD1', 1, 6, 'MIT App Inventor – Sound Board', 'Building an app that plays different sounds on button press.', FALSE),
('SD1', 1, 7, 'Scratch - Story Animation', 'Creating an interactive story with multiple characters.', FALSE),
('SD1', 1, 8, 'Code.org - Sprite Lab', 'Designing sprites and making them interact with events.', FALSE),
('SD1', 1, 9, 'MIT App Inventor – Paint App', 'Building a simple drawing application.', FALSE),
('SD1', 1, 10, 'Scratch - Simple Game', 'Creating a complete simple game from scratch.', FALSE),
('SD1', 1, 11, 'Milestone: Quarter 1 Project', 'Presenting the quarter project with all learned concepts.', TRUE),
('SD1', 1, 12, 'Milestone: Portfolio Showcase', 'Showcasing all projects created during the quarter.', TRUE);

-- Sample data for SMA Curriculum
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('Gamedev', 'Basic', 1, 'Game Design Fundamentals', 'Introduction to game mechanics and player feedback loops.'),
('Gamedev', 'Basic', 2, 'Unity Environment Setup', 'Setting up Unity and understanding the interface.'),
('Gamedev', 'Basic', 3, 'Unity Scripting 101', 'Learning C# basics within the Unity environment.'),
('Gamedev', 'Intermediate', 1, '2D Game Development', 'Creating 2D games with sprites and animations.'),
('Gamedev', 'Intermediate', 2, 'Player Controls', 'Implementing responsive player movement and controls.'),
('Gamedev', 'Advanced', 1, '3D Game Development', 'Introduction to 3D game development concepts.'),
('Database', 'Basic', 1, 'Introduction to Databases', 'Understanding what databases are and why we use them.'),
('Database', 'Basic', 2, 'SQL Fundamentals', 'Learning SELECT, INSERT, UPDATE, DELETE operations.'),
('Database', 'Intermediate', 1, 'Database Design', 'Normalization and creating efficient database schemas.'),
('WebDev', 'Basic', 1, 'HTML Foundations', 'Learning HTML structure and semantic elements.'),
('WebDev', 'Basic', 2, 'CSS Styling', 'Styling web pages with CSS.'),
('WebDev', 'Intermediate', 1, 'JavaScript Basics', 'Introduction to JavaScript programming for the web.');

-- Verify the data
SELECT 'Regular Curriculum Count:' as info, COUNT(*) as count FROM curriculum_regular
UNION ALL
SELECT 'SMA Curriculum Count:', COUNT(*) FROM curriculum_sma;
