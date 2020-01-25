DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS user_animals;
DROP TABLE IF EXISTS kind_animals;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS kind_of_animals;
DROP SEQUENCE IF EXISTS user_ids;
DROP SEQUENCE IF EXISTS role_ids;
DROP SEQUENCE IF EXISTS animal_ids;
DROP SEQUENCE IF EXISTS kind_ids;

--Table: users
CREATE SEQUENCE user_ids;
CREATE TABLE users (
  id INTEGER PRIMARY KEY DEFAULT NEXTVAL('user_ids'),
  username CHAR(64) NOT NULL,
  password CHAR(64) NOT NULL);
  
--Table: roles
CREATE SEQUENCE role_ids;
 CREATE TABLE roles (
  id INTEGER PRIMARY KEY DEFAULT NEXTVAL('role_ids'),
  name CHAR(64) NOT NULL);
  
--Table for mapping user and roles: user_roles
CREATE TABLE user_roles (
  user_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL,
  
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),
  
  UNIQUE (user_id, role_id)
  );
  
--Table: animals
CREATE SEQUENCE animal_ids;
 CREATE TABLE animals (
  id INTEGER PRIMARY KEY DEFAULT NEXTVAL('animal_ids'),
  name CHAR(64) NOT NULL,
  sex CHAR(5),
  birthday DATE NOT NULL,
  
  UNIQUE (name)
 );
 
 --Table for mapping user and animals: user_animals
CREATE TABLE user_animals (
  user_id INTEGER NOT NULL,
  animal_id INTEGER NOT NULL,
  
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (animal_id) REFERENCES animals(id),
  
  UNIQUE (user_id, animal_id)
  );
  
--Table: kind of animal
CREATE SEQUENCE kind_ids;
 CREATE TABLE kind_of_animals (
  id INTEGER PRIMARY KEY DEFAULT NEXTVAL('kind_ids'),
  name CHAR(64) NOT NULL
 );
 
 --Table for mapping animals and kind: kind_animals
CREATE TABLE kind_animals (
  kind_id INTEGER NOT NULL,
  animal_id INTEGER NOT NULL,
  
  FOREIGN KEY (kind_id) REFERENCES kind_of_animals(id),
  FOREIGN KEY (animal_id) REFERENCES animals(id),
  
  UNIQUE (kind_id, animal_id)
  );
  
--Insert data
INSERT INTO users values(1, 'admin', '$2y$11$neQST1pe2l/z2IGO5tD4peAiQ3Zy.K971DNkD92oDxt2Av3U2aa5C'), (2, 'user', '$2y$11$neQST1pe2l/z2IGO5tD4peAiQ3Zy.K971DNkD92oDxt2Av3U2aa5C');

INSERT INTO roles values(1, 'ROLE_ADMIN'),(2, 'ROLE_USER');

INSERT INTO user_roles values(1, 1), (2, 2);

INSERT INTO animals values(1, 'Sharik', 'M', '2010-10-10'), (2, 'Miki', 'F', '2015-05-30');

INSERT INTO user_animals values(1, 1);

INSERT INTO kind_of_animals values(1, 'Dog'), (2, 'Cat'), (3, 'Mouse');

INSERT INTO kind_animals values(1, 1), (3, 2);
 
 

  
  
  
  
  
  