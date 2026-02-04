-- =====================================================
-- Teacher Summary Tool - Database Seed
-- Generated from curriculum CSV files
-- =====================================================

-- Drop existing data if tables exist
TRUNCATE TABLE curriculum_regular CASCADE;
TRUNCATE TABLE curriculum_sma CASCADE;

-- Reset sequences
ALTER SEQUENCE curriculum_regular_id_seq RESTART WITH 1;
ALTER SEQUENCE curriculum_sma_id_seq RESTART WITH 1;

-- =====================================================
-- KINDER CURRICULUM
-- =====================================================

INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
-- Quarter 1
('Kinder', 1, 1, 'Tynker - All About Computers 1', 'Students learn about what computers are, different parts of a computer, inputs/outputs, software/hardware, and how to communicate with computers.', false),
('Kinder', 1, 2, 'CodeHS - Input Devices & Edclub Digital Citizenship', 'Students learned about input/output devices and how they relate to our five senses, plus foundational computer skills through Mouse Magic and Icons sections.', false),
('Kinder', 1, 3, 'Code Monkey Jr. - Sequence (level 1-15)', 'Introduction to first programming concept, Sequencing, as students program a monkey to reach the treasure.', false),
('Kinder', 1, 4, 'GCompris - Complete the Puzzle, Click and Draw, Click on Me', 'Students developed early computer and motor skills through interactive puzzle, drawing, and clicking activities.', false),
('Kinder', 1, 5, 'Sesamestreet & PBS Kids Games', 'Students engaged in interactive learning games to strengthen early math and problem-solving skills.', false),
('Kinder', 1, 6, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 1, 7, 'Code Avengers - Keyboard Quest', 'Students explored computing systems, portable devices, hardware/software, navigation, and sharpened literacy skills.', false),
('Kinder', 1, 8, 'GCompris & Typing.com - Keyboard Skills', 'Students played games to improve hand-eye coordination and keyboard/typing skills.', false),
('Kinder', 1, 9, 'MindMakers - Roboland Jr', 'Students improved mouse manipulation and sequencing skills, introduced to loops and events, practicing computational thinking.', false),
('Kinder', 1, 10, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 1, 11, 'Code Monkey Jr - Loops (level 1-15)', 'Students practiced and improved understanding of loops concept to make code shorter.', false),
('Kinder', 1, 12, 'Milestone: Quarter 1 Review', 'Review and assessment of Quarter 1 learning including sequencing, loops, and basic computer concepts.', true),

-- Quarter 2
('Kinder', 2, 1, 'BBC Learning - What is an Algorithm? & Codespark Intro', 'Students learned about algorithms and began exploring Codespark with Donut Detective course.', false),
('Kinder', 2, 2, 'BBC Learning - What are Computer Bugs? & Codespark Donut Detective', 'Students learned about bugs/debugging and continued with sequencing practice in Codespark.', false),
('Kinder', 2, 3, 'Sesamestreet.org - Spatial Concepts', 'Students practiced understanding spatial concepts like inside/outside, counting, sorting, and matching skills.', false),
('Kinder', 2, 4, 'Coding for Kids - What is Coding? & Codespark Tool Trouble', 'Students learned what computer coding is and practiced loops concept in Tool Trouble course.', false),
('Kinder', 2, 5, 'PBS Kids - Symmetry Painter, Make the Cake, Rock Art', 'Students explored creativity and early math concepts including symmetry, sequencing, and pattern design.', false),
('Kinder', 2, 6, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 2, 7, 'Coding for Kids - Think Like a Computer & Codespark Challenge', 'Students learned about decomposition and were challenged to complete levels with best scores.', false),
('Kinder', 2, 8, 'Codespark - Puppy Problem (Events)', 'Students learned about Event concept in programming by helping Val get her lost puppies in space.', false),
('Kinder', 2, 9, 'GCompris - Frieze, Simple Puzzle, Redraw Image', 'Students developed visual reasoning and creativity through pattern, puzzle, and observation activities.', false),
('Kinder', 2, 10, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 2, 11, 'Codespark - Story Mode', 'Students explored creativity as they created their own story featuring a Foo character they designed.', false),
('Kinder', 2, 12, 'Milestone: Quarter 2 Review', 'Review and assessment of Quarter 2 learning including algorithms, debugging, loops, and events.', true),

-- Quarter 3
('Kinder', 3, 1, 'Scratch Jr. Introduction - Drive Across the City, Run a Race', 'Students explored Scratch Jr. interface and learned about motion blocks and changing sprite speed.', false),
('Kinder', 3, 2, 'PBS Kids Scratch Jr. - Tree Problem', 'Students learned how to create projects, add characters, place/move them, and animate with programming.', false),
('Kinder', 3, 3, 'GCompris - Mixing Colors & Count Items', 'Students explored color theory (paint/light mixing) and practiced counting and number recognition.', false),
('Kinder', 3, 4, 'PBS Kids Scratch Jr. - Creature Power', 'Students learned about Looks blocks (show-hide, grow-shrink) and speed blocks for animal power animations.', false),
('Kinder', 3, 5, 'Sesamestreet & PBS Kids - Creative Games', 'Students explored creativity through Snow Monster, Hair Salon, and Paint Long activities.', false),
('Kinder', 3, 6, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 3, 7, 'PBS Kids Scratch Jr. - Something Odd (Debugging)', 'Students practiced debugging skills by fixing three broken projects and finding patterns.', false),
('Kinder', 3, 8, 'PBS Kids Scratch Jr. - Space Exploration', 'Students learned to create multi-page projects using motion, looks, speed, and triggering blocks.', false),
('Kinder', 3, 9, 'Tynker - Puppy Adventure', 'Students practiced sequencing, conditionals, and decomposition while guiding a lost puppy home.', false),
('Kinder', 3, 10, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 3, 11, 'PBS Kids Scratch Jr. - How Plants Grow', 'Students practiced using looks blocks and wait blocks to show sprites growing.', false),
('Kinder', 3, 12, 'Milestone: Quarter 3 Review', 'Review and assessment of Quarter 3 Scratch Jr. projects and programming concepts.', true),

-- Quarter 4
('Kinder', 4, 1, 'Kodable Introduction - Smeeborg', 'Students explored Kodable platform and began implementing sequencing in Alien Algorithms, Fuzzy Fiesta, Off and Rolling.', false),
('Kinder', 4, 2, 'Kodable - Smeeborg: Bugs Away, Mission Condition, Crossy Fuzz', 'Students practiced debugging, sequencing, and loops through puzzle challenges.', false),
('Kinder', 4, 3, 'GCompris - Ordering Letters, Draw Letters, Compare Numbers', 'Students built early literacy and numeracy skills through alphabet ordering, letter drawing, and number comparison.', false),
('Kinder', 4, 4, 'Kodable - Aquatopia: Loopy Lessons, Loop Roll Repeat', 'Students practiced understanding and implementation of loops in Aquatopia course.', false),
('Kinder', 4, 5, 'Sesamestreet & PBS Kids - Creative Decision Games', 'Students explored creativity and decision-making through Dress Up Time, Super Salad Diner, Costume Box.', false),
('Kinder', 4, 6, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 4, 7, 'Kodable - Aquatopia: Iffy Loops, Lunar Loops', 'Students continued practicing loops and debugging skills in Aquatopia puzzles.', false),
('Kinder', 4, 8, 'Kodable - Aquatopia: Loops R Us, Lots O Loops', 'Students deepened understanding of loops through more Aquatopia challenges.', false),
('Kinder', 4, 9, 'GCompris Matching Items & Edclub Digital Citizenship K', 'Students practiced matching skills and learned about internet, online safety, and responsible digital behavior.', false),
('Kinder', 4, 10, 'Unplugged/Seasonal Activity', 'Hands-on unplugged coding activities or seasonal themed lessons.', false),
('Kinder', 4, 11, 'Kodable - Beach Cleanup (Easy)', 'Students practiced sequencing by creating their own maze while helping sea creatures by cleaning the beach.', false),
('Kinder', 4, 12, 'Milestone: Quarter 4 Review', 'Final review and assessment of Kinder year covering all programming concepts learned.', true);

-- =====================================================
-- SD1 CURRICULUM  
-- =====================================================

INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
-- Quarter 1
('SD1', 1, 1, 'Abcya - Fuzz Bugs Factory & Patterns', 'Students practiced pattern recognition and sequencing by matching colors and patterns of fuzz bugs.', false),
('SD1', 1, 2, 'Kodable - Smeeborg', 'Coding puzzle where students code the Fuzz through mazes, implementing sequencing, conditionals, looping, and functions.', false),
('SD1', 1, 3, 'CodeMonkey - Beaver Achiever: Sequencing and Simple Loops', 'Students guide a beaver through obstacles using visual programming blocks and learn to use loops.', false),
('SD1', 1, 4, 'CodeMonkey - Beaver Achiever (continued)', 'Continued practice with sequencing and simple loops in Beaver Achiever course.', false),
('SD1', 1, 5, 'Kodable - Cloudhaven', 'Students learn fundamental programming concepts through cloud-themed levels by writing simple programs.', false),
('SD1', 1, 6, 'ScratchJr - Coding Cards: Interface, Blocks, Getting Started', 'Students learn ScratchJr interface, different block types (motion, looks, sound, control), and build simple scripts.', false),
('SD1', 1, 7, 'Kodable - Beach Cleanup', 'Students tested their understanding of sequencing, loops, conditionals, and functions by creating and solving levels.', false),
('SD1', 1, 8, 'ScratchJr - Coding Cards: Aquarium, Increase Sprite, Switch Slides', 'Students build underwater scenes, change sprite sizes, and transition between scenes.', false),
('SD1', 1, 9, 'ScratchJr - Coding Cards: Dancing Together, Hiding Sprite, Delete Board', 'Students learn nested loops, sound blocks, wait blocks, hide blocks, and Start on Bump triggers.', false),
('SD1', 1, 10, 'ScratchJr - Coding Cards: The Jumper, Stop the Bike, Messages', 'Students learn speed settings, Start on Tap, Stop blocks, and Send/Start on Message for sprite interactions.', false),
('SD1', 1, 11, 'Review Milestone', 'Review and preparation for Quarter 1 milestone assessment.', false),
('SD1', 1, 12, 'Milestone 1', 'Quarter 1 milestone assessment covering ScratchJr and Kodable concepts.', true),

-- Quarter 2
('SD1', 2, 1, 'Code.org - Course C: Sequencing and Debugging', 'Students develop sequential algorithms to move a bird to the pig and are introduced to debugging.', false),
('SD1', 2, 2, 'Code.org - Course C (continued)', 'Continued work on algorithms and debugging while helping Laurel pick up treasure.', false),
('SD1', 2, 3, 'Code.org - Play Lab & Sports', 'Students make their own story/game project and create sports games in Play Lab.', false),
('SD1', 2, 4, 'Code.org - Course C: Algorithms, Debugging, Loops', 'Students deepen understanding of algorithms, debugging, and learn looping with the harvester.', false),
('SD1', 2, 5, 'Code.org - Course C: End of Course Project', 'Students develop a chasing game and code their final project showcasing learned concepts.', false),
('SD1', 2, 6, 'Code Baymax', 'Coding puzzle game where students code Baymax to collect power-ups using sequencing, looping, and functions.', false),
('SD1', 2, 7, 'Code Baymax (continued)', 'Continued work with Code Baymax coding puzzle.', false),
('SD1', 2, 8, 'CodeMonkey - Beaver Achiever: Conditional Loops', 'Students learn about conditional loops that repeat until a specific condition is met.', false),
('SD1', 2, 9, 'CodeMonkey - Beaver Achiever: Conditional Loops (continued)', 'Continued practice with conditional loops and efficient programming.', false),
('SD1', 2, 10, 'CodeMonkey - Coding Adventure Part 1: Fundamentals', 'Coding puzzle game learning sequencing, objects, and looping to collect bananas.', false),
('SD1', 2, 11, 'Review Milestone', 'Review and preparation for Quarter 2 milestone assessment.', false),
('SD1', 2, 12, 'Milestone 2', 'Quarter 2 milestone assessment covering Code.org and CodeMonkey concepts.', true),

-- Quarter 3
('SD1', 3, 1, 'Scratch Overview & Animate Your Name', 'Introduction to Scratch platform while creating an animation of a name with various effects.', false),
('SD1', 3, 2, 'Scratch: Code a Cartoon', 'Students make an animation project coding Cartoon Network characters to jump, fly, talk.', false),
('SD1', 3, 3, 'Google CS First - Storytelling: Dialogue', 'Students make a dialogue-driven storytelling project learning to synchronize dialogue between characters.', false),
('SD1', 3, 4, 'Google CS First - Storytelling: Check It Out', 'Students create a story of a character reacting to objects, learning messaging concept in Scratch.', false),
('SD1', 3, 5, 'Little Dot & Run Marco', 'Coding puzzle games practicing sequencing, looping, and conditionals navigation.', false),
('SD1', 3, 6, 'Google CS First - Storytelling: Setting', 'Students code a stormy day story learning about randomness and looping.', false),
('SD1', 3, 7, 'Free Storytelling Scratch Project', 'Students create their own story using all the code concepts learned in CS First Storytelling.', false),
('SD1', 3, 8, 'CodeMonkey - Space Adventure', 'Students code a monkey astronaut learning conditional loops to repeat until conditions are met.', false),
('SD1', 3, 9, 'Google CS First - Storytelling: Characterization', 'Students make a story with main character and narrator, deepening understanding of messaging.', false),
('SD1', 3, 10, 'Google CS First - Storytelling: Interactive Storytelling', 'Students create a mystery door story learning about conditionals and computer decision-making.', false),
('SD1', 3, 11, 'Review Milestone', 'Review and preparation for Quarter 3 milestone assessment.', false),
('SD1', 3, 12, 'Milestone 3', 'Quarter 3 milestone assessment covering Scratch storytelling concepts.', true),

-- Quarter 4
('SD1', 4, 1, 'Code.org - Minecraft: Adventurer', 'Problem-solving lesson coding Steve/Alex through Minecraft world using sequencing, looping, and conditionals.', false),
('SD1', 4, 2, 'Code.org - Flappy Code', 'Introduction to events concept while making a flappy bird game and customizing visuals/rules.', false),
('SD1', 4, 3, 'Kodu Overviews & Tutorials', 'Introduction to Kodu game creation platform learning character control and scoring systems.', false),
('SD1', 4, 4, 'Kodu - Coin Collector Project', 'Students implement learned concepts making a coin collecting game avoiding mines.', false),
('SD1', 4, 5, 'Kodu - Golden Apple (Parts I-V)', 'Adventure to find the golden apple through 5 puzzles learning multiple pages and distinct behaviors.', false),
('SD1', 4, 6, 'Code.org - Elementary Game Design (Lesson 1-2)', 'Students learn sprites, behaviors, events, and begin using variables for interactive projects.', false),
('SD1', 4, 7, 'Code.org - Elementary Game Design (Lesson 3)', 'Students explore game mechanics including player movement, obstacles, scoring, win/lose conditions.', false),
('SD1', 4, 8, 'Kodu - Racing Game', 'Students make a racing game learning to draw circuits and code enemies to follow paths.', false),
('SD1', 4, 9, 'Kodu - Explore Other Projects', 'Students explore various Kodu game samples and use creativity to modify and expand them.', false),
('SD1', 4, 10, 'Kodu - Underwater World', 'Students make a virtual underwater world coding characters to wander.', false),
('SD1', 4, 11, 'Review Milestone', 'Review and preparation for Quarter 4 milestone assessment.', false),
('SD1', 4, 12, 'Milestone 4', 'Quarter 4 milestone assessment covering Kodu game design and Code.org concepts.', true);

-- =====================================================
-- SD2 CURRICULUM (Sample - First 4 Quarters)
-- =====================================================

INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
-- Quarter 1
('SD2', 1, 1, 'Code.org - Minecraft: Adventurer', 'Students solve Minecraft themed puzzles using block-based code learning sequence, loops, and if statements.', false),
('SD2', 1, 2, 'CodeMonkey - Space Adventure', 'Writing code using CoffeeScript/Python helping a monkey astronaut catch bananas, learning sequences, objects, loops, lists.', false),
('SD2', 1, 3, 'Code.org - Star Wars: Building a Galaxy with Code', 'Students solve Star Wars themed puzzles learning sequence and events.', false),
('SD2', 1, 4, 'Little Dot', 'Coding puzzle game navigating a dot to destination using provided code cards in correct sequence.', false),
('SD2', 1, 5, 'Minecraft: Hero''s Journey', 'Students program the agent in Minecraft to reach goals learning loops and functions.', false),
('SD2', 1, 6, 'Scratch: Imagine a World, Animations That Talk, Talking Tales', 'Students create their own world and program talking characters with Text-to-Speech blocks.', false),
('SD2', 1, 7, 'Raspberry Pi - Catch The Bus & Find The Bug', 'Students create animations with sprites moving and a game finding hidden bugs on each level.', false),
('SD2', 1, 8, 'CodeMonkey - Beaver Achiever', 'Students program block sequences to make the Beaver do tasks learning Logic, Algorithms, Sequencing.', false),
('SD2', 1, 9, 'Code.org - Coding with Poetry & Book Covers', 'Students animate poems with code and design digital book covers.', false),
('SD2', 1, 10, 'Raspberry Pi - Scratch: Stress Ball & Butterfly Garden', 'Students create stress ball game and nature scene using motion blocks and costume customization.', false),
('SD2', 1, 11, 'Review Milestone', 'Review and preparation for Quarter 1 milestone assessment.', false),
('SD2', 1, 12, 'Milestone 1', 'Quarter 1 milestone assessment.', true),

-- Quarter 2
('SD2', 2, 1, 'Code.org - Flappy Code', 'Introduction to events concept while making a flappy bird game.', false),
('SD2', 2, 2, 'Blocks Jumper - Game Creation', 'Create a game where player taps screen to make a monkey jump over gaps to reach a star.', false),
('SD2', 2, 3, 'CodeMonkey - Game Design: Frogger', 'Create own Frogger game learning touch interface, collision, events, sound effects, and variables.', false),
('SD2', 2, 4, 'Raspberry Pi - Scratch: Boat Race', 'Make a boat racing game using mouse to navigate to an island avoiding obstacles.', false),
('SD2', 2, 5, 'CodeMonkey - Game Design: Platformer', 'Build a Super Mario styled game mastering keyboard events, timers, and collision events.', false),
('SD2', 2, 6, 'CodeMonkey - Game Design: Platformer (continued)', 'Continue building the Super Mario styled platformer game.', false),
('SD2', 2, 7, 'Raspberry Pi - Scratch: Clone Wars', 'Create a game saving Earth from space monsters using clones.', false),
('SD2', 2, 8, 'Raspberry Pi - Scratch: Dodgeball', 'Make a Donkey Kong-like game dodging moving balls to reach end of level.', false),
('SD2', 2, 9, 'CodeMonkey - Game Design: Draw Your Own Sprite', 'Express artistic side through drawing images, programming animations, creating original sprites.', false),
('SD2', 2, 10, 'CodeMonkey - Game Design: Draw Your Own Sprite (continued)', 'Continue creating animation sheets and original game sprites.', false),
('SD2', 2, 11, 'Review Milestone', 'Review and preparation for Quarter 2 milestone assessment.', false),
('SD2', 2, 12, 'Milestone 2', 'Quarter 2 milestone assessment.', true),

-- Quarter 3
('SD2', 3, 1, 'Code.org - Dance Party', 'Create interactive animation with famous celebrities using measures and properties blocks.', false),
('SD2', 3, 2, 'Raspberry Pi - Scratch: Beat Box', 'Start with traditional Scratch blocks then incorporate AI using Text-to-Speech extension.', false),
('SD2', 3, 3, 'Raspberry Pi - Scratch: Fruit Salad', 'Design own Fruit Salad with programming, combining food and art themes.', false),
('SD2', 3, 4, 'Scratch - Animate an Adventure Game', 'Make a collecting game with Cartoon Network characters learning glide to mouse pointer and scoring.', false),
('SD2', 3, 5, 'Raspberry Pi - Scratch: Serene Scene', 'Create peaceful woodland scene with sliders learning variables and forever loops.', false),
('SD2', 3, 6, 'GrokLearning - Frozen Fractal', 'Code a turtle to draw snowflakes using turtle module, loops, conditionals, and variables.', false),
('SD2', 3, 7, 'Codester: The Coordinate Plane', 'Explore all four quadrants using Python and Codesters toolkit learning about coordinates.', false),
('SD2', 3, 8, 'Codesters - Social Distancing Sprites', 'Code project using Python where characters wear masks and avoid each other.', false),
('SD2', 3, 9, 'GrokLearning - Hydrangea Danger', 'Introduction to branching concept using Blockly Python to draw and color hydrangea flowers.', false),
('SD2', 3, 10, 'Codester: Unity Mural', 'Learn to efficiently place multiple sprites using lists, loops, and variables.', false),
('SD2', 3, 11, 'Review Milestone', 'Review and preparation for Quarter 3 milestone assessment.', false),
('SD2', 3, 12, 'Milestone 3', 'Quarter 3 milestone assessment.', true),

-- Quarter 4
('SD2', 4, 1, 'MIT App Inventor - Introduction & Beginner Tutorials', 'Introduction to making Android apps learning buttons, text boxes, canvas, and sprite components.', false),
('SD2', 4, 2, 'MIT App Inventor - Paint Pot, Android Mash, I Have a Dream', 'Create dots on canvas, learn clock component for random movement, create educational soundboard app.', false),
('SD2', 4, 3, 'MIT App Inventor - Paint Pot, Android Mash (continued)', 'Continue working on canvas-based apps and interactive games.', false),
('SD2', 4, 4, 'MIT App Inventor - I Have a Dream (continued)', 'Continue working on educational soundboard app.', false),
('SD2', 4, 5, 'MIT App Inventor - Mood Ring', 'Create project tracking emotional health using emojis for younger age groups.', false),
('SD2', 4, 6, 'MIT App Inventor - Magic 8 Ball', 'Introduction to lists while creating virtual magic 8 ball with classic predictions.', false),
('SD2', 4, 7, 'MIT App Inventor - Pong', 'Create classic pong game with scoring system and losing condition.', false),
('SD2', 4, 8, 'MIT App Inventor - Pong (continued)', 'Add sound effects, music, and mute button to pong game.', false),
('SD2', 4, 9, 'MIT App Inventor - Global Food Map', 'Build a quiz keeping score about food around the world.', false),
('SD2', 4, 10, 'MIT App Inventor - Get Gold', 'Create pirate treasure-collecting game learning visibility, clock/timer, and collision detection.', false),
('SD2', 4, 11, 'Review Milestone', 'Review and preparation for Quarter 4 milestone assessment.', false),
('SD2', 4, 12, 'Milestone 4', 'Quarter 4 milestone assessment.', true);

-- =====================================================
-- SMP CURRICULUM (Sample - First 4 Quarters)
-- =====================================================

INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
-- Quarter 1
('SMP', 1, 1, 'CodeMonkey - Coding Adventure Part 1: Fundamentals', 'Coding puzzle game learning sequencing, objects, and looping to collect bananas.', false),
('SMP', 1, 2, 'MakeCode Arcade Introduction - Game Maker Beginner Skillmap', 'Create first set of digital games including Storytelling, Clicker Games, and Collector Games.', false),
('SMP', 1, 3, 'CodeMonkey - Coding Adventure Part 2: Functions and Conditions', 'Learn functions, conditional loops, logical operators, and conditionals with monkey and rat.', false),
('SMP', 1, 4, 'CodeMonkey - Coding Adventure Part 2 (continued)', 'Continue learning functions and conditional programming.', false),
('SMP', 1, 5, 'MakeCode Arcade: Whack-the-Mole, Burstin Balloon, Turkey Day', 'Create mole-chasing game, balloon bursting game, and Turkey Day themed game.', false),
('SMP', 1, 6, 'CodeMonkey - Game Design: Platformer Course', 'Build Super Mario styled game mastering keyboard events, timers, and collision events.', false),
('SMP', 1, 7, 'MakeCode Arcade: Monster Truck Racer, Talent Show, Shark Splash', 'Create side-scrolling racing game, clicker game, and shark adventure game.', false),
('SMP', 1, 8, 'CodeMonkey - Game Design: Frogger Course', 'Create Frogger game learning touch interface, collision, events, sound effects, and variables.', false),
('SMP', 1, 9, 'MakeCode Arcade: Save The Forest, 80s Rockstar Maze', 'Learn environmental awareness game and maze collection game.', false),
('SMP', 1, 10, 'CodeMonkey - Game Design: Draw Your Own Sprite', 'Express artistic side through drawing images, animations, and original sprites.', false),
('SMP', 1, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 1, 12, 'Milestone 1 - CodeMonkey Game Builder', 'Milestone assessment covering CodeMonkey and MakeCode Arcade concepts.', true),

-- Quarter 2
('SMP', 2, 1, 'MIT App Inventor - Introduction & Beginner Tutorials', 'Introduction to making Android apps with Hello Codi, Talk to Me, Ball Bounce, Digital Doodle.', false),
('SMP', 2, 2, 'MIT App Inventor - Paint Pot, Android Mash, I Have a Dream', 'Create canvas-based apps and educational soundboard.', false),
('SMP', 2, 3, 'MIT App Inventor - Simple Apps (continued)', 'Continue working on Paint Pot, Android Mash, I Have a Dream projects.', false),
('SMP', 2, 4, 'MIT App Inventor - Simple Apps (continued)', 'Further development of app projects.', false),
('SMP', 2, 5, 'MIT App Inventor - Mood Ring', 'Create emotional health tracking app using emojis.', false),
('SMP', 2, 6, 'MIT App Inventor - Magic 8 Ball', 'Learn lists while creating virtual magic 8 ball.', false),
('SMP', 2, 7, 'MIT App Inventor - Pong', 'Create classic pong game with scoring system.', false),
('SMP', 2, 8, 'MIT App Inventor - Pong (continued)', 'Add sound effects and complete pong game.', false),
('SMP', 2, 9, 'MIT App Inventor - Global Food Map', 'Build quiz about food around the world keeping score.', false),
('SMP', 2, 10, 'MIT App Inventor - Get Gold', 'Create pirate treasure-collecting game learning collision detection.', false),
('SMP', 2, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 2, 12, 'Milestone 2 - MIT App', 'Milestone assessment covering MIT App Inventor projects.', true),

-- Quarter 3
('SMP', 3, 1, 'GrokLearning - HTML/CSS Starter', 'Learn basics of building webpages with HTML headings, paragraphs, and CSS text styling.', false),
('SMP', 3, 2, 'GrokLearning - HTML/CSS for Beginner 1', 'Learn colors with CSS, margins, layouts, page structure, head/title elements, and fonts.', false),
('SMP', 3, 3, 'GrokLearning - HTML/CSS for Beginner 1 (continued)', 'Learn borders, padding, background images, grouping elements, and multi-column layouts.', false),
('SMP', 3, 4, 'GrokLearning - HTML/CSS for Beginner 2', 'Learn to style specific elements with selectors, classes, and hover pseudo-class.', false),
('SMP', 3, 5, 'GrokLearning - HTML/CSS for Beginner 2 (continued)', 'Complete Plant Warehouse styling project applying learned concepts.', false),
('SMP', 3, 6, 'GrokLearning - Webpages with Javascript', 'Learn to change text with Javascript and use functions and events for interactivity.', false),
('SMP', 3, 7, 'GrokLearning - Javascript: Character Builder Project', 'Complete first Javascript project and learn conditional statements.', false),
('SMP', 3, 8, 'GrokLearning - Javascript: Styling with Classes', 'Learn to style classes with Javascript.', false),
('SMP', 3, 9, 'GrokLearning - Javascript: Puzzle Project', 'Complete final Javascript puzzle project.', false),
('SMP', 3, 10, 'GrokLearning - Javascript: Puzzle Project (continued)', 'Finish puzzle project development.', false),
('SMP', 3, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 3, 12, 'Milestone 3 - Web Development', 'Milestone assessment covering HTML, CSS, and Javascript concepts.', true),

-- Quarter 4
('SMP', 4, 1, 'GrokLearning - Python for Beginner: Printing and Variables', 'Learn to print messages and calculate using variables in Python.', false),
('SMP', 4, 2, 'Raspberry Pi - Python Pathway 1: Introduction', 'Introduction to Python through Hello World, Target Practice, Rocket Launch, Make a Face projects.', false),
('SMP', 4, 3, 'GrokLearning - Python: Input, Conditionals, Comparisons', 'Learn user input, decision making with conditionals, and string manipulation.', false),
('SMP', 4, 4, 'Raspberry Pi - Python Pathway 1 (continued)', 'Continue with Don''t Collide and Powerful Patterns projects.', false),
('SMP', 4, 5, 'GrokLearning - Python: For Loops, Data Representation, Indexing', 'Learn to repeat code with for loops and understand data structures.', false),
('SMP', 4, 6, 'GrokLearning - Python: Functions', 'Introduction to functions to break problems into smaller parts.', false),
('SMP', 4, 7, 'GrokLearning - Python: Functions (continued)', 'Learn to define own functions.', false),
('SMP', 4, 8, 'GrokLearning - Python: Colors and Coordinates', 'Learn about colors and coordinates in Python graphics.', false),
('SMP', 4, 9, 'Raspberry Pi - Python Pathway 1 (continued)', 'Continue with creative Python projects.', false),
('SMP', 4, 10, 'Raspberry Pi - Python Pathway 1 (continued)', 'Complete Python pathway projects.', false),
('SMP', 4, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 4, 12, 'Milestone 4 - Python', 'Milestone assessment covering Python fundamentals.', true);

-- =====================================================
-- SMA CURRICULUM
-- =====================================================

-- GameDev Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('GameDev', 'Basic', 1, 'Sololearn - Introduction to C#', 'Students learn C# syntax covering basic programming concepts, operators, strings, decision making.'),
('GameDev', 'Basic', 2, 'Sololearn - C#: Loops and Methods', 'Students learn while loops, for loops, break/continue statements, and methods inside classes.'),
('GameDev', 'Basic', 3, 'Sololearn - C# Intermediate: Classes and Objects', 'Introduction to OOP concepts including what classes and objects are and how to create them.'),
('GameDev', 'Basic', 4, 'Sololearn - C# Intermediate: Arrays and Strings', 'Learn about arrays, multi-dimensional arrays, and how strings are similar to arrays.'),
('GameDev', 'Basic', 5, 'Sololearn - C# Intermediate: More on Classes', 'Learn static members, static classes, destructors, this and readonly keywords, overloading.'),
('GameDev', 'Basic', 6, 'Sololearn - C# Intermediate: Inheritance and Polymorphism', 'Learn about parent-child classes, protected members, and abstract classes.'),
('GameDev', 'Basic', 7, 'CodeHS - Game Design with Unity: Units 1-3', 'Learn game design definition, purpose of game engines, and Unity introduction.'),
('GameDev', 'Basic', 8, 'CodeHS - Game Design with Unity: Unit 4', 'Learn Unity interface, GameObjects, materials, transforms, scene design, rigidbodies, colliders.'),
('GameDev', 'Basic', 9, 'CodeHS - Game Design with Unity: Units 4-5', 'Learn about copyright laws and how to avoid infringement in video game design.'),
('GameDev', 'Basic', 10, 'CodeHS - Game Design with Unity: Unit 6', 'Learn about game mechanics and elements that make games fun, brainstorm and plan games.'),
('GameDev', 'Basic', 11, 'CodeHS - Game Design with Unity: Unit 7', 'Learn about visual and auditory effects, camera settings, and lighting effects in games.'),
('GameDev', 'Basic', 12, 'CodeHS - Game Design with Unity: Unit 8', 'Begin final project, learn about the organization being developed for.'),
('GameDev', 'Basic', 13, 'CodeHS - Game Design with Unity: Unit 9', 'Build drivable monster vehicle, learn character animations, movement, UI, and AI in Unity.'),
('GameDev', 'Basic', 14, 'CodeHS - Game Design with Unity: Units 10-11', 'Learn prototyping and play testing, develop minimal viable product and receive peer feedback.'),
('GameDev', 'Basic', 15, 'Review Milestone', 'Review and preparation for GameDev Basic milestone.'),
('GameDev', 'Basic', 16, 'Milestone', 'GameDev Basic milestone assessment covering Unity and C# fundamentals.');

-- WebDev Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('WebDev', 'Basic', 1, 'GrokLearning - HTML/CSS Starter', 'Learn basics of building webpages with HTML headings, paragraphs, and CSS text styling.'),
('WebDev', 'Basic', 2, 'CodeHS - Web Development: HTML Structuring Website', 'Learn about HTML tags and basic structure of web pages.'),
('WebDev', 'Basic', 3, 'CodeHS - Web Development: CSS Styling Website', 'Learn CSS language to style web pages.'),
('WebDev', 'Basic', 4, 'GrokLearning - HTML/CSS for Beginner 1', 'Learn fonts, document structure, layouts, and more advanced CSS concepts.'),
('WebDev', 'Basic', 5, 'GrokLearning - HTML/CSS for Beginner 1 (continued)', 'Continue with borders, padding, background images, layouts.'),
('WebDev', 'Basic', 6, 'GrokLearning - HTML/CSS for Beginner 1 (continued)', 'Complete Beginner 1 course.'),
('WebDev', 'Basic', 7, 'GrokLearning - HTML/CSS for Beginner 2', 'Learn complex layouts and classes in CSS.'),
('WebDev', 'Basic', 8, 'CodeHS - Web Development: Advanced HTML and CSS', 'Learn visibility, image filtering, interaction, and animation.'),
('WebDev', 'Basic', 9, 'CodeHS - Advanced HTML and CSS (continued)', 'Continue with advanced web development topics.'),
('WebDev', 'Basic', 10, 'CodeHS - Advanced HTML and CSS (continued)', 'Complete advanced HTML and CSS module.'),
('WebDev', 'Basic', 11, 'Raspberry Pi - HTML & CSS: Guide to My Country 1', 'Create website with headings, paragraphs, lists, images, and basic CSS styling.'),
('WebDev', 'Basic', 12, 'Raspberry Pi - HTML & CSS: Guide to My Country 2', 'Learn CSS animations and using developer tools to inspect websites.'),
('WebDev', 'Basic', 13, 'Raspberry Pi - HTML & CSS: Guide to My Country 3', 'Learn responsive layouts, overlapping picture collages, hover and click effects.'),
('WebDev', 'Basic', 14, 'Raspberry Pi - HTML & CSS: Sweet Scroll', 'Learn parallax scrolling technique to create a cake recipe web page.'),
('WebDev', 'Basic', 15, 'Review Milestone - Create Your Homepage', 'Review and final project to create personal homepage.'),
('WebDev', 'Basic', 16, 'Milestone', 'WebDev Basic milestone assessment covering HTML and CSS.');

-- WebDev Intermediate
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('WebDev', 'Intermediate', 1, 'CodeHS - Web Development: Introduction to Javascript in HTML', 'Learn script tag and JavaScript methods to alter CSS and HTML using DOM.'),
('WebDev', 'Intermediate', 2, 'CodeHS - Javascript in HTML (continued)', 'Continue learning JavaScript integration with HTML.'),
('WebDev', 'Intermediate', 3, 'CodeHS - Web Development: Using jQuery Library', 'Learn jQuery library for easier webpage interaction and animations.'),
('WebDev', 'Intermediate', 4, 'CodeHS - jQuery Library (continued)', 'Continue with jQuery methods and responsiveness.'),
('WebDev', 'Intermediate', 5, 'CodeHS - jQuery Library (continued)', 'Complete jQuery module.'),
('WebDev', 'Intermediate', 6, 'GrokLearning - Space Invaders Challenge with JavaScript', 'Code alien fleet using JavaScript to locate safe water supply.'),
('WebDev', 'Intermediate', 7, 'GrokLearning - Space Invaders (continued)', 'Complete Space Invaders challenge.'),
('WebDev', 'Intermediate', 8, 'CodeHS - Web Development: Storing and Collecting Data', 'Learn about data collection from web pages and security.'),
('WebDev', 'Intermediate', 9, 'CodeHS - Storing and Collecting Data (continued)', 'Continue with data collection implementation.'),
('WebDev', 'Intermediate', 10, 'CodeHS - Storing and Collecting Data (continued)', 'Complete data collection module.'),
('WebDev', 'Intermediate', 11, 'CodeHS - Storing and Collecting Data (continued)', 'Additional practice with data collection.'),
('WebDev', 'Intermediate', 12, 'GrokLearning - Geography Mini: Geospatial Data', 'Use JavaScript, HTML, and CSS to visualize geospatial data on maps.'),
('WebDev', 'Intermediate', 13, 'GrokLearning - Geography Mini (continued)', 'Continue with geospatial visualization.'),
('WebDev', 'Intermediate', 14, 'GrokLearning - Geography Mini (continued)', 'Complete geography mini project.'),
('WebDev', 'Intermediate', 15, 'Review Milestone - CodeHS Final Project', 'Review and final web development project.'),
('WebDev', 'Intermediate', 16, 'Milestone', 'WebDev Intermediate milestone assessment covering JavaScript and jQuery.');

-- Database Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('Database', 'Basic', 1, 'CodeHS - Introduction to SQL: Hour of SQL', 'Learn basics of querying by exploring Harry Potter data.'),
('Database', 'Basic', 2, 'CodeHS - Hour of SQL (continued)', 'Continue exploring SQL queries with Harry Potter data.'),
('Database', 'Basic', 3, 'CodeHS - SQL Part II: Filtering, Ordering, Renaming', 'Learn filtering, ordering, renaming fields, and joining tables.'),
('Database', 'Basic', 4, 'CodeHS - SQL Part II (continued)', 'Continue with advanced SQL queries.'),
('Database', 'Basic', 5, 'CodeHS - SQL Part II (continued)', 'Complete SQL Part II module.'),
('Database', 'Basic', 6, 'CodeHS - SQL Functions', 'Learn to use functions in SQL to get more information from data.'),
('Database', 'Basic', 7, 'CodeHS - SQL Functions (continued)', 'Continue with SQL functions.'),
('Database', 'Basic', 8, 'CodeHS - Data Aggregation', 'Learn about HousePoint table and aggregation queries.'),
('Database', 'Basic', 9, 'CodeHS - Data Aggregation (continued)', 'Continue with data aggregation techniques.'),
('Database', 'Basic', 10, 'Sololearn - SQL Intermediate: String, Math & Aggregate Functions', 'Learn string functions, math functions, aggregate functions, and CASE.'),
('Database', 'Basic', 11, 'Sololearn - SQL Intermediate: Identity, Primary & Foreign Keys', 'Learn about database constraints and key relationships.'),
('Database', 'Basic', 12, 'Sololearn - SQL Intermediate: Joins, Unions, Multiple Tables', 'Learn to work with multiple related tables.'),
('Database', 'Basic', 13, 'Hackerrank Challenge: Basic Select', 'Solve SQL challenges on Hackerrank using MySQL.'),
('Database', 'Basic', 14, 'Hackerrank Challenge: Basic Join', 'Continue solving SQL join challenges on Hackerrank.'),
('Database', 'Basic', 15, 'Review Milestone', 'Review and preparation for Database Basic milestone.'),
('Database', 'Basic', 16, 'Milestone', 'Database Basic milestone assessment covering SQL fundamentals.');

-- Database Intermediate
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('Database', 'Intermediate', 1, 'Udemy - SQL Bootcamp: Database Models & Setup', 'Learn database models (hierarchical, network, relational) and PostgreSQL setup.'),
('Database', 'Intermediate', 2, 'Udemy - SQL Bootcamp: SQL Queries Section 5', 'Learn aggregate functions, filtering, and operator precedence.'),
('Database', 'Intermediate', 3, 'Udemy - SQL Bootcamp: Section 5 (continued)', 'Continue with SQL query techniques.'),
('Database', 'Intermediate', 4, 'Udemy - SQL Bootcamp: Section 5 (continued)', 'Further practice with SQL queries.'),
('Database', 'Intermediate', 5, 'Udemy - SQL Bootcamp: Section 5 (continued)', 'Complete Section 5.'),
('Database', 'Intermediate', 6, 'Udemy - SQL Bootcamp: Section 6 Indexes & Views', 'Learn to optimize with indexes, create views, and use subqueries.'),
('Database', 'Intermediate', 7, 'Udemy - SQL Bootcamp: Section 6 (continued)', 'Continue with window functions and grouping sets.'),
('Database', 'Intermediate', 8, 'Udemy - SQL Bootcamp: Section 6 (continued)', 'Further practice with advanced SQL.'),
('Database', 'Intermediate', 9, 'Udemy - SQL Bootcamp: Section 6 (continued)', 'Complete Section 6.'),
('Database', 'Intermediate', 10, 'Udemy - SQL Bootcamp: Section 7 Constraints & Backups', 'Learn table constraints, data type customization, and database backups.'),
('Database', 'Intermediate', 11, 'Udemy - SQL Bootcamp: Section 7 (continued)', 'Continue with database management.'),
('Database', 'Intermediate', 12, 'Udemy - SQL Bootcamp: Section 7 (continued)', 'Complete Section 7.'),
('Database', 'Intermediate', 13, 'Review Milestone', 'Review and preparation for Database Intermediate milestone.'),
('Database', 'Intermediate', 14, 'Milestone', 'Database Intermediate milestone assessment covering advanced SQL and PostgreSQL.');

-- AI & ML Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('AI_ML', 'Basic', 1, 'AI Intro Videos & ML4K: Make Me Happy', 'Learn AI concepts and create text classification model in Machine Learning for Kids.'),
('AI_ML', 'Basic', 2, 'ML4K: Chameleon (Image Recognition)', 'Train computer to recognize colors and make chameleon change color to match background.'),
('AI_ML', 'Basic', 3, 'ML4K: Pokemon Statistics (Number Recognition)', 'Create Scratch project predicting Pokemon type from size and fighting stats.'),
('AI_ML', 'Basic', 4, 'ML4K: Sorting Hat (Text Recognition)', 'Create program assigning Hogwarts house based on text input using text recognition.'),
('AI_ML', 'Basic', 5, 'Free ML4K Project', 'Create own Machine Learning for Kids project.'),
('AI_ML', 'Basic', 6, 'STEMpedia - AI with Python: Introduction & Face Detection', 'Learn about AI types and create face detection project using Pictoblox.'),
('AI_ML', 'Basic', 7, 'STEMpedia - AI with Python: Face Filters & Hand Recognition', 'Learn face filter technology and hand recognition using human body detection.'),
('AI_ML', 'Basic', 8, 'STEMpedia - AI with Python: Object & Celebrity Detection', 'Learn computer vision for object and celebrity detection.'),
('AI_ML', 'Basic', 9, 'STEMpedia - AI with Python: Text & Speech Recognition', 'Learn OCR and NLP for text and speech recognition, create own Alexa.'),
('AI_ML', 'Basic', 10, 'STEMpedia - AI with Python: NLP & Machine Learning', 'Learn advanced AI concepts in natural language processing and machine learning.'),
('AI_ML', 'Basic', 11, 'Review Milestone', 'Review and preparation for AI & ML Basic milestone.'),
('AI_ML', 'Basic', 12, 'Milestone', 'AI & ML Basic milestone assessment covering machine learning and AI concepts.');

-- Arduino/IoT Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('Arduino', 'Basic', 1, 'Introduction to Arduino: LED and RGB', 'Learn about Arduino components, LED circuits, and RGB LED programming.'),
('Arduino', 'Basic', 2, 'Arduino and Buzzer', 'Learn to wire and program buzzer to play tones and music.'),
('Arduino', 'Basic', 3, 'Arduino and Button', 'Learn to wire and program buttons, create on/off functionality.'),
('Arduino', 'Basic', 4, 'Arduino: Potentiometer and LCD', 'Learn potentiometer for variable input and LCD display programming.'),
('Arduino', 'Basic', 5, 'Arduino and Ultrasonic Sensor', 'Learn distance measurement with ultrasonic sensor.'),
('Arduino', 'Basic', 6, 'Extension Challenges: Quiz Game, Mood Light', 'Challenge projects combining multiple components.'),
('Arduino', 'Basic', 7, 'Arduino and Servo', 'Learn to control servo motors for angle and movement.'),
('Arduino', 'Basic', 8, 'Arduino and DHT11', 'Learn temperature and humidity sensing with DHT11.'),
('Arduino', 'Basic', 9, 'Arduino and LDR', 'Learn light level detection with Light Dependent Resistor.'),
('Arduino', 'Basic', 10, 'Arduino and Infrared Sensor', 'Learn motion and object detection with IR sensor.'),
('Arduino', 'Basic', 11, 'Review Milestone', 'Review and preparation for Arduino Basic milestone.'),
('Arduino', 'Basic', 12, 'Milestone', 'Arduino Basic milestone assessment covering IoT components and circuits.');

-- Mobile Development Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('MobileDev', 'Basic', 1, 'MIT App Inventor - Introduction & Beginner Tutorials', 'Introduction to making Android apps with Hello Codi, Talk to Me, Ball Bounce, Digital Doodle.'),
('MobileDev', 'Basic', 2, 'MIT App Inventor - Paint Pot, Android Mash, I Have a Dream', 'Create canvas-based apps and educational soundboard.'),
('MobileDev', 'Basic', 3, 'MIT App Inventor - Simple Apps (continued)', 'Continue app development projects.'),
('MobileDev', 'Basic', 4, 'MIT App Inventor - Mood Ring', 'Create emotional health tracking app using emojis.'),
('MobileDev', 'Basic', 5, 'MIT App Inventor - Magic 8 Ball', 'Learn lists while creating virtual magic 8 ball.'),
('MobileDev', 'Basic', 6, 'MIT App Inventor - Pong', 'Create classic pong game with scoring system.'),
('MobileDev', 'Basic', 7, 'MIT App Inventor - Pong (continued)', 'Add sound effects and complete game.'),
('MobileDev', 'Basic', 8, 'MIT App Inventor - Global Food Map', 'Build quiz about food around the world.'),
('MobileDev', 'Basic', 9, 'MIT App Inventor - Get Gold', 'Create pirate treasure-collecting game.'),
('MobileDev', 'Basic', 10, 'MIT App Inventor - Location Sharing', 'Learn to use GPS and location components.'),
('MobileDev', 'Basic', 11, 'Review Milestone', 'Review and preparation for MobileDev Basic milestone.'),
('MobileDev', 'Basic', 12, 'Milestone', 'MobileDev Basic milestone assessment covering app development.');

-- Introduction to Programming Basic
INSERT INTO curriculum_sma (category, track, lesson_order, lesson_name, description) VALUES
('IntroToProgramming', 'Basic', 1, 'GrokLearning - Python for Beginner: Printing and Variables', 'Learn to print messages and calculate using variables.'),
('IntroToProgramming', 'Basic', 2, 'Raspberry Pi - Python: Hello World, Target Practice, Rocket Launch', 'Introduction to Python through creative coding projects.'),
('IntroToProgramming', 'Basic', 3, 'GrokLearning - Python: Input and Conditionals', 'Learn user input and decision making with conditionals.'),
('IntroToProgramming', 'Basic', 4, 'Raspberry Pi - Python: Make a Face, Don''t Collide', 'Continue with visual and game-based Python projects.'),
('IntroToProgramming', 'Basic', 5, 'GrokLearning - Python: For Loops and Data', 'Learn to repeat code with for loops and understand data structures.'),
('IntroToProgramming', 'Basic', 6, 'GrokLearning - Python: Functions', 'Introduction to functions to break problems into smaller parts.'),
('IntroToProgramming', 'Basic', 7, 'GrokLearning - Python: Functions (continued)', 'Learn to define own functions.'),
('IntroToProgramming', 'Basic', 8, 'GrokLearning - Python: Colors and Coordinates', 'Learn about colors and coordinates in Python graphics.'),
('IntroToProgramming', 'Basic', 9, 'Raspberry Pi - Python: Powerful Patterns', 'Create inspirational art with repeated patterns.'),
('IntroToProgramming', 'Basic', 10, 'Raspberry Pi - Python Pathway (continued)', 'Complete Python pathway projects.'),
('IntroToProgramming', 'Basic', 11, 'Review Milestone', 'Review and preparation for IntroToProgramming Basic milestone.'),
('IntroToProgramming', 'Basic', 12, 'Milestone', 'IntroToProgramming Basic milestone assessment covering Python fundamentals.');

-- Verify the data
SELECT 'curriculum_regular count by level:' as info;
SELECT level, COUNT(*) as count FROM curriculum_regular GROUP BY level ORDER BY level;

SELECT 'curriculum_sma count by category:' as info;
SELECT category, COUNT(*) as count FROM curriculum_sma GROUP BY category ORDER BY category;
