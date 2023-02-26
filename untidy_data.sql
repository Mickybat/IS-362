DROP TABLE IF EXISTS students; 
DROP TABLE IF EXISTS population; 

CREATE TABLE students ( 
id INT, 
name varchar(100), 
phone int,
sex_and_age varchar(100), 
test_number varchar(100), 
term_1 int, 
term_2 int, 
term_3 int 
); 

INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (1, 'Mike', 134, 'm_12', 'test 1', 76, 84, 87);  
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (2, 'Linda', 270, 'f_13', 'test 1', 88, 90, 73); 
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (3, 'Sam', 210, 'm_11', 'test 1', 78, 74, 80); 
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (4, 'Esther', 617, 'f_12', 'test 1', 68, 75, 74); 
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (5, 'Mary', 114, 'f_14', 'test 1', 65, 67, 64); 
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (1, 'Mike', 134, 'm_12', 'test 2', 85, 80, 90); 
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (2, 'Linda', 270, 'f_13', 'test 2', 87, 82, 94);  
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (3, 'Sam', 210, 'm_11', 'test 2', 80, 87, 90);  
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (4, 'Esther', 617, 'f_12', 'test 2', 70, 75, 78); 
INSERT INTO students (id, name, phone, sex_and_age, test_number, term_1, term_2, term_3)
VALUES (5, 'Mary', 114, 'f_14', 'test 2', 68, 70, 63);  

CREATE TABLE population ( 
country varchar(100),
year_2000 varchar(100),  
year_2010 varchar(100), 
year_2020 varchar(100) 
); 

INSERT INTO population
VALUES('united states', '282,2000,000', '309,300,000', '329,500,000');
INSERT INTO population
VALUES('china', '1,263,000,000', '1,338,000,000', '1,411,000,000');
INSERT INTO population
VALUES('russia', '146,600,000', '142,800,000', '144,100,000');
INSERT INTO population
VALUES('india', '1,060,000,000', '1,241,000,000', '1,329,000,000');


SELECT * FROM students; 
SELECT * FROM population;  
