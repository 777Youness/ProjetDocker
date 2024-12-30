SET FOREIGN_KEY_CHECKS = 0;  -- Désactive les contraintes de clés étrangères pour les migrations.
CREATE TABLE alembic_version (
    version_num VARCHAR(32) NOT NULL, 
    PRIMARY KEY (version_num)
);

INSERT INTO alembic_version (version_num) VALUES('cac5cf55cffa');

CREATE TABLE tasks (
    id INT NOT NULL AUTO_INCREMENT, 
    title VARCHAR(40) NOT NULL, 
    content VARCHAR(600) NOT NULL, 
    status VARCHAR(11) NOT NULL, 
    created_at DATETIME NOT NULL, 
    user_id INT NOT NULL, 
    tag_id INT NOT NULL, 
    PRIMARY KEY (id), 
    FOREIGN KEY (user_id) REFERENCES users (id), 
    FOREIGN KEY (tag_id) REFERENCES tags (id)
);

INSERT INTO tasks (id, title, content, status, created_at, user_id, tag_id) 
VALUES 
    (5, 'Complete project report', 'The annual project report is due next week. Gather all relevant data from the team, double-check for any inconsistencies, and prepare the final draft. Schedule a review meeting with the manager to get feedback before submission. Ensure the report adheres to the company formatting guidelines and includes visual aids like charts and graphs for clarity.', 'PENDING', '2024-11-29 00:13:15', 1, 1),
    (6, 'Prepare for math exam', 'The upcoming math exam covers algebra, geometry, and trigonometry. Dedicate time to revise chapters 1 through 5, focusing on the practice problems at the end of each section. Watch online tutorials for the more challenging topics, like quadratic equations. Create a study timetable and stick to it, allowing breaks to prevent burnout.', 'IN_PROGRESS', '2024-11-29 00:14:46', 1, 2),
    (7, 'Watch a movie', 'After a long week, unwind with a relaxing movie night. Pick a highly recommended sci-fi thriller on Netflix and prepare some snacks, like popcorn and soda. Invite a friend or enjoy some quiet alone time. Reflect on the storyline afterward and perhaps write a short review for fun.', 'COMPLETED', '2024-11-29 00:15:17', 1, 3),
    (8, 'Morning jog', 'Start the day with an energizing 3-mile jog in the nearby park. Warm up with stretching exercises to avoid injury. Track your run using a fitness app to measure distance, time, and calories burned. Afterward, cool down with light yoga and hydrate with water or an energy drink.', 'COMPLETED', '2024-11-29 00:16:31', 1, 4),
    (9, 'Schedule dentist appointment', "It's time for your biannual dental cleaning. Look up your dentist's availability and call to book an appointment. Check if your insurance covers the procedure and carry the required documents. Use this opportunity to ask about any dental issues you’ve been experiencing, like sensitivity or discomfort.", 'PENDING', '2024-11-29 00:16:57', 1, 5),
    (10, 'Plan weekend trip', 'Organize a two-day getaway to the beach. Research accommodation options within your budget, and consider a beachfront hotel or a cozy Airbnb. Plan activities like paddleboarding, snorkeling, or simply relaxing by the shore. Create a checklist for essentials like sunscreen, swimwear, and a first-aid kit.', 'IN_PROGRESS', '2024-11-29 00:17:23', 1, 6);

CREATE INDEX ix_tasks_title ON tasks (title);
CREATE INDEX ix_tasks_created_at ON tasks (created_at);
SET FOREIGN_KEY_CHECKS = 1;  -- Réactive les contraintes de clés étrangères.
