CREATE DATABASE IF NOT EXISTS interapothek;
USE interapothek;

CREATE TABLE user(
  id    INT (255) auto_increment not NULL,
  name  VARCHAR(255),
  surnames VARCHAR(255),
  role  VARCHAR (255),
  email VARCHAR(255),
  password VARCHAR(255),
  created_at DATETIME,
  CONSTRAINT pk_user PRIMARY KEY (id)
)ENGINE=InnoDb;

CREATE TABLE checkIn(
  id INT(255) AUTO_INCREMENT NOT NULL,
  user_id INT(255) NOT NULL,
  date DATETIME,
  departure TIME,
  arrival TIME,
  hour_departure TIME,
  hour_arrival TIME,
  CONSTRAINT pk_checkIn PRIMARY KEY (id),
  CONSTRAINT fk_checkIn_user FOREIGN KEY(user_id) REFERENCES user(id)
)ENGINE=InnoDb;