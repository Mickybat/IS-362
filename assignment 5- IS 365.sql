DROP TABLE IF EXISTS weather2; 

CREATE TABLE weather2 ( 
origin varchar(100), 
year int, 
month int,  
day int, 
hour int, 
wind_speed float 
);

INSERT INTO weather2 (origin, year, month, day, hour, wind_speed) 
SELECT origin, year, month, day, hour, wind_speed 
FROM weather WHERE (year = 2013 AND month = 2 AND day = 12);

SELECT * FROM weather; 

SELECT * FROM weather2;