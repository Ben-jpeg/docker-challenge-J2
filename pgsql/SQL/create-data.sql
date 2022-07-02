-- CRUD Create Read Update Delete

INSERT INTO users(name, email) VALUES ('Ben', 'ben@gmail.com');

UPDATE users SET name = 'bendjade', email = 'b.baroini@gmail.com' WHERE id = 1;

SELECT * FROM users;

SELECT name FROM users WHERE id = 1;

DELETE FROM users WHERE id = 1;
