DROP TABLE students;


CREATE TABLE posts
(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  author VARCHAR(50) NOT NULL,
  author_website VARCHAR(255) NOT NULL
);

ALTER TABLE posts ADD COLUMN category VARCHAR(255) NOT NULL;

CREATE TABLE authors
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  website VARCHAR(255) NOT NULL
);



ALTER TABLE posts ADD COLUMN author_id INT4 REFERENCE authors(id);

SELECT author, author_website FROM posts;

@posts.each do |post|
  INSERT INTO authors (name, website) VALUES ('xxxxx', 'xxxxx')
  UPDATE posts SET author_id=x WHERE id=#{post["id"]}

ALTER TABLE posts DROP COLUMN author;
ALTER TABLE posts DROP COLUMN author_website;


+++++++++++++++++

CREATE TABLE crazy
(
  id SERIAL4 PRIMARY KEY,
  type VARCHAR(255) NOT NULL,
  level TEXT NOT NULL,
  parent1 VARCHAR(50) NOT NULL,
  partent2 VARCHAR(255) NOT NULL
);