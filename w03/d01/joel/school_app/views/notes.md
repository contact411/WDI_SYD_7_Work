INSERT INTO students (first_name, last_name, dob) VALUES ('bill', 'jones', '09/16/1950')
INSERT INTO students (first_name, last_name, dob) VALUES ('sam', 'sneed', '10/30/1962')
INSERT INTO students (first_name, last_name, dob) VALUES ('james', 'rupert', '03/02/1970')
INSERT INTO students (first_name, last_name, dob) VALUES ('crazy', 'craig', '11/20/1955')

++++++++++++++++++++++++++++++++++++++++++
++++ HATE SQL.. HATE IT HARD!!  ++++++++++
++++++++++++++++++++++++++++++++++++++++++

CREATE TABLE people
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
dob DATE
);

CREATE TABLE addresses
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
street_1 VARCHAR(100) NOT NULL,
street_2 VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHR(50) NOT NULL,
postcode VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
person_id INT4 REFERENCES people(id)
);


INSERT INTO people (first_name, last_name, dob) VALUES ('Adrian', 'Petersen', '05/23/1975');
INSERT INTO people (first_name, last_name, dob) VALUES ('bill', 'jones', '09/16/1950');
INSERT INTO people (first_name, last_name, dob) VALUES ('sam', 'sneed', '10/30/1962');
INSERT INTO people (first_name, last_name, dob) VALUES ('james', 'rupert', '03/02/1970');
INSERT INTO people (first_name, last_name, dob) VALUES ('crazy', 'craig', '09/16/1950');