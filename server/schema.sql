CREATE DATABASE chat;

USE chat;

DROP TABLE IF EXISTS messages
CREATE TABLE messages (
  /* Describe your table here.*/
  id INT PRIMARY KEY,
  created_at TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  object_id VARCHAR(50),
  message TEXT(500),
  user_id INT,
  room_id INT,
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(room_id) REFERENCES rooms(id)
);

/* Create other tables and define schemas for them here! */

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  created_at TIMESTAMP
);

DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
  id INT PRIMARY KEY,
  room_name VARCHAR(50),
  created_at TIMESTAMP
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

