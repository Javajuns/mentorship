CREATE TABLE forum_topics (
  id INT PRIMARY KEY AUTO_INCREMENT,
  subject VARCHAR(35),
  text VARCHAR(255),
  isClosed INT,
  date_created DATE
);