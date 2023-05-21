CREATE TABLE users (
	id INTEGER NOT NULL,
	username VARCHAR ( 20 ) UNIQUE NOT NULL,
	name VARCHAR ( 50 )
);

CREATE UNIQUE INDEX idx_id 
ON users(id);

CREATE UNIQUE INDEX idx_username 
ON users(username);

CREATE INDEX idx_name
ON users(name);

