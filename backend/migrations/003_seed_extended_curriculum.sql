-- =====================================================
-- Teacher Summary Tool - Extended Curriculum Seed
-- Additional quarters for SD2 (Q5-Q13) and SMP (Q5-Q12)
-- =====================================================

-- =====================================================
-- SD2 EXTENDED CURRICULUM (Quarters 5-13)
-- =====================================================

INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
-- Quarter 5: MakeCode Arcade
('SD2', 5, 1, 'MakeCode CS Intro 1 - Intro', 'Quick introduction to the Arcade environment and basics of programming in blocks.', false),
('SD2', 5, 2, 'MakeCode CS Intro 1 - Sprites', 'Learn the basics of the core entity in MakeCode Arcade: the sprite.', false),
('SD2', 5, 3, 'MakeCode CS Intro 1 - Motion', 'Learn about event handlers and motion in MakeCode Arcade, plus variables, strings, and decision structures.', false),
('SD2', 5, 4, 'MakeCode CS Intro 1 - Motion (continued)', 'Continue learning about motion and decision structures.', false),
('SD2', 5, 5, 'Coding Arcade Games: Cherry Pickr & Dance Party', 'Learn basic game requirements like sprites, tilemaps, countdowns, collisions, and random generation.', false),
('SD2', 5, 6, 'MakeCode CS Intro 1 - Loops', 'Learn about loops to reduce redundancy and implement repeating behaviors.', false),
('SD2', 5, 7, 'MakeCode CS Intro 1 - Loops (continued)', 'Continue learning about loops and their applications.', false),
('SD2', 5, 8, 'MakeCode Arcade - Jungle Jump Platformer', 'Create a platformer game learning movement acceleration, gravity, animation, and levels.', false),
('SD2', 5, 9, 'MakeCode Arcade - Jungle Jump Platformer (continued)', 'Continue building the platformer game.', false),
('SD2', 5, 10, 'MakeCode Arcade - Block Out', 'Learn basics of bouncing projectile games including sprite spawning and interactions.', false),
('SD2', 5, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 5, 12, 'Milestone 5', 'Quarter 5 milestone assessment covering MakeCode Arcade concepts.', true),

-- Quarter 6: Web Development
('SD2', 6, 1, 'Code.org - Web Development: Creating Webpages', 'Learn to create websites with HTML structure and CSS styling.', false),
('SD2', 6, 2, 'Code.org - Web Development (continued)', 'Learn HTML headings, lists, and organized page structure.', false),
('SD2', 6, 3, 'Code.org - Web Development (continued)', 'Build simple web pages and learn CSS styling.', false),
('SD2', 6, 4, 'Code.org - Web Development (continued)', 'Learn about images, copyright, and CSS classes.', false),
('SD2', 6, 5, 'Raspberry Pi - MoodBoard', 'Create a mood board webpage for a real or imaginary project.', false),
('SD2', 6, 6, 'HTML & CSS: Project Showcase', 'Create a showcase webpage learning about links and embedding resources.', false),
('SD2', 6, 7, 'Code.org - Web Development: Multipage Website', 'Learn hyperlinks and pseudo-classes for multi-page websites.', false),
('SD2', 6, 8, 'Code.org - Web Development: Multipage Website (continued)', 'Plan and code multi-page websites.', false),
('SD2', 6, 9, 'Code.org - Web Development: Multipage Website (continued)', 'Continue building multi-page websites.', false),
('SD2', 6, 10, 'Raspberry Pi - Bird Watch Website', 'Build HTML website with headings, paragraphs, lists, images, and CSS styling.', false),
('SD2', 6, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 6, 12, 'Milestone 6', 'Quarter 6 milestone assessment covering web development.', true),

-- Quarter 7: AI Introduction
('SD2', 7, 1, 'AI for Oceans & Dance Party AI Edition', 'Introduction to AI concepts, training models for classification, and Google QuickDraw.', false),
('SD2', 7, 2, 'Teachable Machine & Dancing with AI', 'Learn Machine Learning with Teachable Machine and explore PoseBlocks extensions.', false),
('SD2', 7, 3, 'Dancing with AI - Teachable Machine Extension', 'Use machine learning models in PoseBlocks apps.', false),
('SD2', 7, 4, 'PoseBlocks - Free Project', 'Create a free project on PoseBlocks using learned knowledge.', false),
('SD2', 7, 5, 'Raspberry Pi - Fish Food & Alien Language', 'Train ML models for voice commands and language recognition.', false),
('SD2', 7, 6, 'Raspberry Pi - Smart Assistant & Doodle Detector', 'Create smart virtual assistant and drawing recognition.', false),
('SD2', 7, 7, 'Raspberry Pi - Did You Like It & Free Project', 'Sentiment analysis project and custom ML project creation.', false),
('SD2', 7, 8, 'Pictoblox - Flappy Bird with Body Detection', 'Create Flappy Bird using Human Body Detection extension.', false),
('SD2', 7, 9, 'Pictoblox - Automatic Door with Face Recognition', 'Create contactless security system using face recognition.', false),
('SD2', 7, 10, 'Pictoblox - Projects with ChatGPT', 'Develop interactive applications using ChatGPT integration.', false),
('SD2', 7, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 7, 12, 'Milestone 7', 'Quarter 7 milestone assessment covering AI concepts.', true),

-- Quarter 8: Python
('SD2', 8, 1, 'Scratch to Python: Block to Text Programming', 'Transition from Scratch to Python learning common concepts and debugging.', false),
('SD2', 8, 2, 'Scratch to Python (continued)', 'Learn pseudocodes, data types, and real-life Python applications.', false),
('SD2', 8, 3, 'Scratch to Python (continued)', 'Learn external modules/libraries and create GUI projects.', false),
('SD2', 8, 4, 'Codester - Building Your First Program', 'Learn Python structure and syntax with drag-and-drop blocks.', false),
('SD2', 8, 5, 'Codesters - Flappy Dino', 'Learn Python functions and events by creating Flappy Dino game.', false),
('SD2', 8, 6, 'Codesters - Turtle Traffic', 'Learn Python coding by building a turtle-crossing game with lists and loops.', false),
('SD2', 8, 7, 'GrokLearning - Python for Beginner', 'Learn printing, variables, and user input in Python.', false),
('SD2', 8, 8, 'GrokLearning - Python for Beginner (continued)', 'Learn conditionals, comparisons, and for loops.', false),
('SD2', 8, 9, 'GrokLearning - Python for Beginner (continued)', 'Learn data representation, indexing, and functions.', false),
('SD2', 8, 10, 'Raspberry Pi - Python: Turtle Snowflakes', 'Create random snowflakes using Python Turtle library.', false),
('SD2', 8, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 8, 12, 'Milestone 8', 'Quarter 8 milestone assessment covering Python basics.', true),

-- Quarter 9: Python Chatbot
('SD2', 9, 1, 'GrokLearning - DT Python Chatbot', 'Create word games starting with Mad Libs, progressing to Pirate Chatbot.', false),
('SD2', 9, 2, 'GrokLearning - DT Python Chatbot (continued)', 'Continue building interactive word-based experiences.', false),
('SD2', 9, 3, 'GrokLearning - DT Python Chatbot (continued)', 'Further development of chatbot features.', false),
('SD2', 9, 4, 'GrokLearning - DT Python Chatbot (continued)', 'Advanced chatbot functionality.', false),
('SD2', 9, 5, 'GrokLearning - DT Python Chatbot (continued)', 'Complete chatbot project.', false),
('SD2', 9, 6, 'Raspberry Pi - More Python Pathway: Charting Champions', 'Learn data visualization by creating bar charts of sports data.', false),
('SD2', 9, 7, 'Raspberry Pi - More Python Pathway: Solar System', 'Code a model of the solar system using loops and coordinates.', false),
('SD2', 9, 8, 'Raspberry Pi - More Python Pathway: Codebreaker', 'Build frequency tables to crack secret codes.', false),
('SD2', 9, 9, 'Raspberry Pi - More Python Pathway: Encoded Art', 'Create colorful artwork by encoding data and patterns.', false),
('SD2', 9, 10, 'Raspberry Pi - More Python Pathway: Mapping Data', 'Create interactive maps showing patterns and trends.', false),
('SD2', 9, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 9, 12, 'Milestone 9', 'Quarter 9 milestone assessment covering Python chatbots and data visualization.', true),

-- Quarter 10: MIT App Inventor + AI
('SD2', 10, 1, 'MIT App Inventor + AI - Image Classification', 'Learn machine learning basics and create image classifier app.', false),
('SD2', 10, 2, 'MIT App Inventor + AI - Picaboo', 'Create Peekaboo game using custom machine learning model.', false),
('SD2', 10, 3, 'MIT App Inventor + AI - Alexa Hello World & Calculator', 'Create Amazon Alexa skills using Conversational AI Interface.', false),
('SD2', 10, 4, 'MIT App Inventor + AI - Therapist Bot', 'Create simplified ELIZA bot adapting psychotherapy style.', false),
('SD2', 10, 5, 'MIT App Inventor + AI - Facemesh Filter', 'Create filter camera using Facemesh facial landmark detection.', false),
('SD2', 10, 6, 'MIT App Inventor + AI - ChatGPT App', 'Build app to connect to ChatGPT for conversations.', false),
('SD2', 10, 7, 'MIT App Inventor + AI - Alexa Number Guessing Game', 'Create interactive number guessing game with Alexa.', false),
('SD2', 10, 8, 'MIT App Inventor + AI - Alexa Number Guessing Game (continued)', 'Complete the Alexa number guessing game.', false),
('SD2', 10, 9, 'MIT App Inventor + AI - Rock Paper Scissors', 'Create program using Markov Model to learn user patterns.', false),
('SD2', 10, 10, 'MIT App Inventor + AI - Rock Paper Scissors (continued)', 'Complete intelligent Rock Paper Scissors game.', false),
('SD2', 10, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 10, 12, 'Milestone 10', 'Quarter 10 milestone assessment covering AI-powered apps.', true),

-- Quarter 11: Micro:bit
('SD2', 11, 1, 'GrokLearning - Beginners micro:bit Python', 'Learn to program BBC micro:bit using Python basics.', false),
('SD2', 11, 2, 'GrokLearning - Beginners micro:bit Python (continued)', 'Continue learning micro:bit programming.', false),
('SD2', 11, 3, 'GrokLearning - Beginners micro:bit Python (continued)', 'Advanced micro:bit features.', false),
('SD2', 11, 4, 'GrokLearning - Beginners micro:bit Python (continued)', 'More micro:bit projects.', false),
('SD2', 11, 5, 'GrokLearning - Beginners micro:bit Python (continued)', 'Complex micro:bit programming.', false),
('SD2', 11, 6, 'GrokLearning - Beginners micro:bit Python (continued)', 'Final micro:bit basics projects.', false),
('SD2', 11, 7, 'GrokLearning - Beginners micro:bit Python (continued)', 'Complete micro:bit crash course.', false),
('SD2', 11, 8, 'GrokLearning - Smart Garden Microbit', 'Create Smart Garden device to monitor plant health.', false),
('SD2', 11, 9, 'GrokLearning - Smart Garden Microbit (continued)', 'Complete Smart Garden project.', false),
('SD2', 11, 10, 'Microbit - Make it: Code it', 'Practice micro:bit projects from online resources.', false),
('SD2', 11, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 11, 12, 'Milestone 11', 'Quarter 11 milestone assessment covering micro:bit.', true),

-- Quarter 12: Minecraft Modding
('SD2', 12, 1, 'Minecraft Overview & CodeKingdom Sheep City', 'Introduction to Minecraft Java Edition and code-based modding.', false),
('SD2', 12, 2, 'CodeKingdom - Minecraft: The Egg Wars', 'Learn PVP rules, structure generation, and for loops.', false),
('SD2', 12, 3, 'CodeKingdom - Minecraft: The Egg Wars (continued)', 'Continue The Egg Wars project.', false),
('SD2', 12, 4, 'CodeKingdom - Minecraft: Spleef', 'Use loops and methods to create multi-platform PVP world.', false),
('SD2', 12, 5, 'CodeKingdom - Minecraft: Spleef (continued)', 'Continue Spleef project.', false),
('SD2', 12, 6, 'CodeKingdom - Minecraft: The Hungry Games', 'Develop PVP server with conditionals and game phases.', false),
('SD2', 12, 7, 'CodeKingdom - Minecraft: The Hungry Games (continued)', 'Continue The Hungry Games project.', false),
('SD2', 12, 8, 'CodeKingdom - Minecraft: Flappy Blocks', 'Create obstacle courses using methods, variables, and loops.', false),
('SD2', 12, 9, 'CodeKingdom - Minecraft: Flappy Blocks (continued)', 'Continue Flappy Blocks project.', false),
('SD2', 12, 10, 'CodeKingdom - Minecraft: Rise of The Werebunnies', 'Create team-based game with loops and conditionals.', false),
('SD2', 12, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 12, 12, 'Milestone 12', 'Quarter 12 milestone assessment covering Minecraft modding.', true),

-- Quarter 13: Roblox
('SD2', 13, 1, 'CodeKingdom - Roblox: Barrel Roll', 'Build Roblox game avoiding barrels, learning cloning and random spawning.', false),
('SD2', 13, 2, 'CodeKingdom - Roblox: Snowclones', 'Create climbing game with ice blocks and scoring system.', false),
('SD2', 13, 3, 'CodeKingdom - Roblox: Zombie Smash', 'Use loops and random functions to spawn zombie waves.', false),
('SD2', 13, 4, 'CodeKingdom - Roblox: Box Car Racer', 'Learn code structure and inheritance through racing game.', false),
('SD2', 13, 5, 'CodeKingdom - Roblox: Game Dev Tycoon', 'Learn recursion, point systems, and parent/child code structure.', false),
('SD2', 13, 6, 'CodeKingdom - Roblox: Wrestball', 'Create sports game with structured code and inheritance.', false),
('SD2', 13, 7, 'CodeKingdom - Roblox: Riddle Ruins', 'Use code to create and change behaviors in Roblox maps.', false),
('SD2', 13, 8, 'CodeKingdom - Roblox: Ninja Obby', 'Learn complex Lua constructs like vectors and procedural generation.', false),
('SD2', 13, 9, 'CodeKingdom - Roblox: Night Lights', 'Create lighting systems using code in Roblox Studio.', false),
('SD2', 13, 10, 'CodeKingdom - Roblox: Clean Slate', 'Learn debugging and refactoring code techniques.', false),
('SD2', 13, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SD2', 13, 12, 'Milestone 13', 'Quarter 13 milestone assessment covering Roblox development.', true);

-- =====================================================
-- SMP EXTENDED CURRICULUM (Quarters 5-12)
-- =====================================================

INSERT INTO curriculum_regular (level, quarter, lesson_order, lesson_name, description, is_milestone) VALUES
-- Quarter 5: AI & Machine Learning
('SMP', 5, 1, 'AI Intro & ML4K: Make Me Happy', 'Learn AI concepts and create text classification model in Machine Learning for Kids.', false),
('SMP', 5, 2, 'ML4K: Chameleon (Image Recognition)', 'Train computer to recognize colors and make chameleon change color.', false),
('SMP', 5, 3, 'ML4K: Pokemon Statistics (Number Recognition)', 'Create Scratch project predicting Pokemon type from stats.', false),
('SMP', 5, 4, 'ML4K: Sorting Hat (Text Recognition)', 'Create program assigning Hogwarts house using text recognition.', false),
('SMP', 5, 5, 'Free ML4K Project', 'Create own Machine Learning for Kids project.', false),
('SMP', 5, 6, 'STEMpedia - AI: Introduction & Face Detection', 'Learn AI types and create face detection project using Pictoblox.', false),
('SMP', 5, 7, 'STEMpedia - AI: Face Filters & Hand Recognition', 'Learn face filter technology and hand recognition.', false),
('SMP', 5, 8, 'STEMpedia - AI: Object & Celebrity Detection', 'Learn computer vision for object and celebrity detection.', false),
('SMP', 5, 9, 'STEMpedia - AI: Text & Speech Recognition', 'Learn OCR and NLP, create own Alexa-like assistant.', false),
('SMP', 5, 10, 'STEMpedia - AI: NLP & Machine Learning', 'Learn advanced AI concepts in NLP and machine learning.', false),
('SMP', 5, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 5, 12, 'Milestone 5', 'Quarter 5 milestone assessment covering AI and ML concepts.', true),

-- Quarter 6: SQL & Data Science
('SMP', 6, 1, 'GrokLearning - Introduction to Databases (SQL)', 'Learn to select columns, apply filters, and sort results in SQL.', false),
('SMP', 6, 2, 'GrokLearning - SQL (continued)', 'Learn complex filters with comparison, AND, and OR operators.', false),
('SMP', 6, 3, 'GrokLearning - SQL (continued)', 'Complete SQL basics and sorting results.', false),
('SMP', 6, 4, 'Data Science with Python - Life Cycle', 'Learn data science process: questions, data collection, analysis, and interpretation.', false),
('SMP', 6, 5, 'Data Science with Python - Life Cycle (continued)', 'Continue with measures of central tendency and spread.', false),
('SMP', 6, 6, 'Data Science with Python - Data Science for Change', 'Clean datasets and filter by columns, rows, and conditions.', false),
('SMP', 6, 7, 'Data Science with Python - Data Science for Change (continued)', 'Complete data analysis for social change.', false),
('SMP', 6, 8, 'SQL: Querying and Managing Data', 'Learn advanced SQL with AND/OR, IN, LIKE, HAVING, and JOINs.', false),
('SMP', 6, 9, 'SQL: Querying and Managing Data (continued)', 'Learn UPDATE, DELETE, ALTER, and DROP commands.', false),
('SMP', 6, 10, 'SQL: Querying and Managing Data (continued)', 'Complete advanced SQL queries.', false),
('SMP', 6, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 6, 12, 'Milestone 6', 'Quarter 6 milestone assessment covering SQL and data science.', true),

-- Quarter 7: Advanced Python
('SMP', 7, 1, 'Programming 102: Think Like a Computer Scientist', 'Learn to make custom functions in Python.', false),
('SMP', 7, 2, 'Programming 102 (continued)', 'Learn lists and create counting algorithms.', false),
('SMP', 7, 3, 'Raspberry Pi - Python Module 2', 'Create Modern Art, Pie Charts, Escape the Maze projects.', false),
('SMP', 7, 4, 'Programming 102: Bubble Sort', 'Learn bubble sort algorithm and implement in Python.', false),
('SMP', 7, 5, 'Programming 102: Merge Sort', 'Learn merge sort algorithm and implement in Python.', false),
('SMP', 7, 6, 'Raspberry Pi - Python Module 2 (continued)', 'Continue with ISS Tracker, Robo-Trumps, CodeCraft.', false),
('SMP', 7, 7, 'Programming 102: Linear Search', 'Learn linear search algorithm and implementation.', false),
('SMP', 7, 8, 'Programming 102: Binary Search', 'Learn binary search algorithm and implementation.', false),
('SMP', 7, 9, 'Raspberry Pi - Python Module 2 (continued)', 'Complete Python Module 2 projects.', false),
('SMP', 7, 10, 'Raspberry Pi - Python Module 2 (continued)', 'Final Python Module 2 projects.', false),
('SMP', 7, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 7, 12, 'Milestone 7', 'Quarter 7 milestone assessment covering algorithms and advanced Python.', true),

-- Quarter 8: Biology Extension with Python
('SMP', 8, 1, 'GrokLearning - Biology Extension: Lists', 'Learn to store multiple data in lists for biological data.', false),
('SMP', 8, 2, 'GrokLearning - Biology Extension: Working with Lists', 'Manipulate lists - adding, removing, changing items.', false),
('SMP', 8, 3, 'GrokLearning - Biology Extension: Looping', 'Use for and while loops to process biological data.', false),
('SMP', 8, 4, 'GrokLearning - Biology Extension: Reading Files', 'Load data from external files into Python.', false),
('SMP', 8, 5, 'GrokLearning - Biology Extension: Animal Classifier Project', 'Build biology classifier using lists, loops, and file data.', false),
('SMP', 8, 6, 'Raspberry Pi - More Python: Charting Champions', 'Create bar charts visualizing player stats with pygal.', false),
('SMP', 8, 7, 'Raspberry Pi - More Python: Solar System', 'Create animated model of solar system with p5 library.', false),
('SMP', 8, 8, 'Raspberry Pi - More Python: Codebreaker', 'Build frequency tables and encode/decode text.', false),
('SMP', 8, 9, 'Raspberry Pi - More Python: Encoded Art', 'Create art by encoding names into shapes.', false),
('SMP', 8, 10, 'Raspberry Pi - More Python: Mapping Data', 'Create interactive maps with interesting facts.', false),
('SMP', 8, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 8, 12, 'Milestone 8', 'Quarter 8 milestone assessment covering biology and data visualization.', true),

-- Quarter 9: C++ (TLX)
('SMP', 9, 1, 'TLX - C++: Keluaran & Variabel', 'Learn C++ output, expressions, variables, and data types.', false),
('SMP', 9, 2, 'TLX - C++: Perulangan & Percabangan', 'Learn while loops, if statements, and conditionals.', false),
('SMP', 9, 3, 'TLX - C++: Perulangan & Larik', 'Learn for loops, continue, break, and arrays.', false),
('SMP', 9, 4, 'TLX - C++: Fungsi', 'Learn to create and use functions with return types.', false),
('SMP', 9, 5, 'TLX - C++: Tipe Data Lainnya', 'Learn long long, double, char, and vectors.', false),
('SMP', 9, 6, 'TLX - C++: Rekursi & Compiler', 'Learn recursion and how to use compilers.', false),
('SMP', 9, 7, 'TLX - C++: Analisis Kompleksitas', 'Learn algorithmic complexity analysis.', false),
('SMP', 9, 8, 'TLX - C++: Analisis Kompleksitas (continued)', 'Continue complexity analysis for competitive programming.', false),
('SMP', 9, 9, 'TLX - C++: Latihan Pemantapan', 'Practice challenges covering all C++ concepts.', false),
('SMP', 9, 10, 'TLX - C++: Latihan Pemantapan (continued)', 'Complete C++ practice challenges.', false),
('SMP', 9, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 9, 12, 'Milestone 9', 'Quarter 9 milestone assessment covering C++ fundamentals.', true),

-- Quarter 10: Arduino
('SMP', 10, 1, 'Arduino Introduction: LED and RGB', 'Learn Arduino components, LED circuits, and RGB programming.', false),
('SMP', 10, 2, 'Arduino and Buzzer', 'Learn to wire and program buzzer for tones and music.', false),
('SMP', 10, 3, 'Arduino and Button', 'Learn to wire and program buttons for on/off functionality.', false),
('SMP', 10, 4, 'Arduino: Potentiometer and LCD', 'Learn variable input and LCD display programming.', false),
('SMP', 10, 5, 'Arduino and Ultrasonic Sensor', 'Learn distance measurement with ultrasonic sensor.', false),
('SMP', 10, 6, 'Arduino Extension Challenges', 'Challenge projects combining multiple components.', false),
('SMP', 10, 7, 'Arduino and Servo', 'Learn to control servo motors for angle and movement.', false),
('SMP', 10, 8, 'Arduino and DHT11', 'Learn temperature and humidity sensing.', false),
('SMP', 10, 9, 'Arduino and LDR', 'Learn light level detection with Light Dependent Resistor.', false),
('SMP', 10, 10, 'Arduino and Infrared Sensor', 'Learn motion and object detection with IR sensor.', false),
('SMP', 10, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 10, 12, 'Milestone 10', 'Quarter 10 milestone assessment covering Arduino and IoT.', true),

-- Quarter 11: JavaScript with CodeHS
('SMP', 11, 1, 'CodeHS - JavaScript Basics', 'Learn variables, user input, mathematics, and functions.', false),
('SMP', 11, 2, 'CodeHS - Canvas and Graphics', 'Learn about canvas and adding graphic objects.', false),
('SMP', 11, 3, 'CodeHS - Graphics Challenges', 'Apply graphics and JavaScript knowledge to challenges.', false),
('SMP', 11, 4, 'CodeHS - JavaScript Control Structures', 'Learn if/else statements and loops.', false),
('SMP', 11, 5, 'CodeHS - JavaScript Control Structures (continued)', 'Continue with control structures.', false),
('SMP', 11, 6, 'CodeHS - Control Structures Challenges', 'Apply control structures to new challenges.', false),
('SMP', 11, 7, 'CodeHS - Functions', 'Learn parameters, return values, and variable scopes.', false),
('SMP', 11, 8, 'CodeHS - Functions (continued)', 'Advanced function concepts.', false),
('SMP', 11, 9, 'CodeHS - Function Challenges', 'Apply function knowledge to challenges.', false),
('SMP', 11, 10, 'Complete remaining chapters', 'Finish any remaining CodeHS JavaScript chapters.', false),
('SMP', 11, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 11, 12, 'Milestone 11', 'Quarter 11 milestone assessment covering JavaScript.', true),

-- Quarter 12: Java with CodeHS
('SMP', 12, 1, 'CodeHS - Java: Karel the Dog', 'Learn Java basics by programming a dog through mazes.', false),
('SMP', 12, 2, 'CodeHS - Java: Basic Java', 'Learn variables, arithmetic, loops, conditionals, debugging.', false),
('SMP', 12, 3, 'CodeHS - Java: Basic Java (continued)', 'Continue with Java fundamentals.', false),
('SMP', 12, 4, 'CodeHS - Java: Methods', 'Learn methods, parameters, return values, and exceptions.', false),
('SMP', 12, 5, 'CodeHS - Java: Classes and OOP', 'Learn classes, objects, constructors, and inheritance.', false),
('SMP', 12, 6, 'CodeHS - Java: Classes and OOP (continued)', 'Learn interfaces, polymorphism, and abstract classes.', false),
('SMP', 12, 7, 'CodeHS - Java: Data Structures', 'Learn arrays, ArrayLists, and HashMaps.', false),
('SMP', 12, 8, 'CodeHS - Java: Data Structures (continued)', 'Learn 2D arrays, wrapper classes, and the List interface.', false),
('SMP', 12, 9, 'Complete remaining chapters', 'Finish any remaining Java chapters.', false),
('SMP', 12, 10, 'Complete remaining chapters', 'Final Java practice.', false),
('SMP', 12, 11, 'Review Milestone', 'Review and preparation for milestone assessment.', false),
('SMP', 12, 12, 'Milestone 12', 'Quarter 12 milestone assessment covering Java programming.', true);
-- Verify the data
SELECT 'curriculum_regular count by level:' as info;
SELECT level, COUNT(*) as count FROM curriculum_regular GROUP BY level ORDER BY level;

SELECT 'curriculum_sma count by category:' as info;
SELECT category, COUNT(*) as count FROM curriculum_sma GROUP BY category ORDER BY category;

-- Verify the extended data
SELECT 'Extended curriculum added:' as info;
SELECT level, COUNT(*) as count FROM curriculum_regular WHERE quarter >= 5 GROUP BY level ORDER BY level;
