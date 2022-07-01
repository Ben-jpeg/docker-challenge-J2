-- CRUD Create Read Update Delete

INSERT INTO users(name, email) VALUES ('Laurent', 'laurent@oclock.io');

UPDATE users SET name = 'Mickey', email = 'laurent.neveud@oclock.io' WHERE id = 1;

SELECT * FROM users;

SELECT name FROM users WHERE id = 1;

DELETE FROM users WHERE id = 1;