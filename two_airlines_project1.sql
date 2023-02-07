DROP TABLE IF EXISTS two_airlines;

CREATE TABLE two_airlines ( 
airline varchar(100),
status varchar(100), 
los_angeles int,
phoenix int, 
san_diego int, 
san_francisco int, 
seattle int
); 

INSERT INTO two_airlines 
VALUES ('ALASKA', 'ON TIME', 497, 221, 212, 503, 1841); 
INSERT INTO two_airlines 
VALUES ('ALASKA', 'DELAYED', 62, 12, 20, 102, 305); 
INSERT INTO two_airlines 
VALUES ('AM WEST', 'ON TIME', 694, 4840, 383, 320, 201); 
INSERT INTO two_airlines 
VALUES ('AM WEST', 'DELAYED', 117, 415, 65, 129, 61);

SELECT * FROM two_airlines;

















SELECT * FROM two_airlines