
DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS kind_animals;
DROP TABLE IF EXISTS user_animals;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS kind_of_animals;


----Table: users
--CREATE TABLE users (
--  id INTEGER SERIAL PRIMARY KEY,
--  username CHAR(64) NOT NULL,
--  password CHAR(64) NOT NULL);
--  
----Table: roles
-- CREATE TABLE roles (
--  id INTEGER SERIAL PRIMARY KEY,
--  name CHAR(64) NOT NULL);
--  
----Table for mapping user and roles: user_roles
--CREATE TABLE user_roles (
--  user_id INTEGER NOT NULL,
--  role_id INTEGER NOT NULL,
--  
--  FOREIGN KEY (user_id) REFERENCES users(id),
--  FOREIGN KEY (role_id) REFERENCES roles(id),
--  
--  UNIQUE (user_id, role_id)
--  );
--  
----Table: animals
-- CREATE TABLE animals (
--  id INTEGER SERIAL PRIMARY KEY,
--  name CHAR(64) NOT NULL,
--  sex CHAR(5),
--  birthday DATE NOT NULL,
--  
--  UNIQUE (name)
-- );
-- 
-- --Table for mapping user and animals: user_animals
--CREATE TABLE user_animals (
--  user_id INTEGER NOT NULL,
--  animal_id INTEGER NOT NULL,
--  
--  FOREIGN KEY (user_id) REFERENCES users(id),
--  FOREIGN KEY (animal_id) REFERENCES animals(id),
--  
--  UNIQUE (user_id, animal_id)
--  );
--  
----Table: kind of animal
-- CREATE TABLE kind_of_animals (
--  id INTEGER SERIAL PRIMARY KEY,
--  name CHAR(64) NOT NULL
-- );
-- 
-- --Table for mapping animals and kind: kind_animals
--CREATE TABLE kind_animals (
--  kind_id INTEGER NOT NULL,
--  animal_id INTEGER NOT NULL,
--  
--  FOREIGN KEY (kind_id) REFERENCES kind_of_animals(id),
--  FOREIGN KEY (animal_id) REFERENCES animals(id),
--  
--  UNIQUE (kind_id, animal_id)
--  );
  
--Insert data
--INSERT INTO users values(1, 'admin', '$2y$11$neQST1pe2l/z2IGO5tD4peAiQ3Zy.K971DNkD92oDxt2Av3U2aa5C'), (2, 'user', '$2y$11$neQST1pe2l/z2IGO5tD4peAiQ3Zy.K971DNkD92oDxt2Av3U2aa5C');

--INSERT INTO roles values(1, 'ROLE_ADMIN'),(2, 'ROLE_USER');

--INSERT INTO user_roles values(1, 1), (2, 2);

--INSERT INTO animals values(1, 'Sharik', 'Male', '2010-10-10'), (2, 'Miki', 'Female', '2015-05-30');

--INSERT INTO user_animals values(1, 1);

--INSERT INTO kind_of_animals values(1, 'Dog'), (2, 'Cat'), (3, 'Mouse');

--INSERT INTO kind_animals values(1, 1), (3, 2);
 
 

  
  
  
  
  
  