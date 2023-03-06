DROP TABLE IF EXISTS movies; 

CREATE TABLE movies ( 
friend varchar(100), 
Saint_Omer int,   
Hit_the_road int, 
Benediction int, 
Empire_of_light int, 
tar int 

); 

INSERT INTO movies 
Values ('Melissa', 4, null, 3, null, 4); 
INSERT INTO movies 
Values ('Mark', null, 5, 3, 3, 5); 
INSERT INTO movies 
Values ('Julio', 5, null, null, 3, 3);  
INSERT INTO movies 
Values ('Mary', 2, 5, 4, 4, 5); 
INSERT INTO movies 
Values ('Helen', null, 4, 2, 5, 5); 
INSERT INTO movies 
Values ('John', null, 5, null, 5, null);   

SELECT * FROM movies;
