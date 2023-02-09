DROP TABLE IF EXISTS two_airlines;

CREATE TABLE two_airlines ( 
City varchar(100),
Alaska_ON_Time varchar(100), 
Alaska_Delayed varchar(100),
AM_WEST_ON_Time varchar(100), 
AM_WEST_Delayed varchar(100)
); 

INSERT INTO two_airlines 
VALUES ('Los Angeles', 497, 62, 694, 117); 
INSERT INTO two_airlines 
VALUES ('Phoenix', 221, 12, 4840, 415); 
INSERT INTO two_airlines 
VALUES ('San Diego', 212, 20, 383, 65); 
INSERT INTO two_airlines 
VALUES('San Francisco', 503, 102, 320, 129); 
INSERT INTO two_airlines 
VALUES ('Seattle', 1841, 305, 201, 61); 

SELECT * FROM two_airlines;
