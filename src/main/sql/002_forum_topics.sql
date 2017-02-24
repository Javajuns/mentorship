CREATE TABLE forum_topics (
  id INT PRIMARY KEY,
  subject VARCHAR(35),
  text VARCHAR(255),
  isClosed INT,
  date_created DATE
);