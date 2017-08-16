CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

INSERT INTO todolist (title, details, priority, created_at) VALUES ('clean', 'take car to carwash', 3, NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('work', 'leave early to not be late', 1, NOW());
INSERT INTO todolist (title, details, priority, created_at, completed_at) VALUES ('brush', 'brush the cats fur', 2, NOW(), NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('add to do', 5, NOW());

SELECT title FROM todolist WHERE completed_at IS NULL;
SELECT * FROM todolist WHERE priority > 1;
UPDATE todolist SET completed_at = NOW() WHERE id = 1;
DELETE FROM todolist WHERE completed_at IS NOT NULL;
