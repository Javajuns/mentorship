CREATE TABLE users (
  id INT PRIMARY KEY,
  login VARCHAR (55),
  first_name VARCHAR (35),
  second_name VARCHAR (35),
  email VARCHAR (35),
  date_created DATE,
  is_admin INT
  );