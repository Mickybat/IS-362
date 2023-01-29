/* For question number 1, I first looked at the planes cvs file to see if it included the speed of the planes and to see how
speed was written in the column. I then used the COUNT() to return the number of rows that match an specific criteria, which
in this case is the rows where speed is not null(empty)*/
SELECT COUNT(*) FROM planes 
WHERE speed IS NOT NULL; 

/* For this portion of question number 1, I used the MAX() and MIN() functions to return the largest and smallest values from
the column named speed*/
SELECT MAX(speed) FROM planes; 
SELECT MIN(speed) FROM planes; 

/*For question number 2, I used the COUNT() function to get all the values from flights and used the SUM() function 
to add up the distance flown. To add up the flights that where done in January of 2013, I used the WHERE() function to extract
the records that meet an specific condition. In this case, the records from January (1st Month) of 2013*/
SELECT COUNT(*), SUM(distance) AS 'total distance flown' FROM flights
WHERE (year = 2013 AND month = 1); 

/*For this portion of question number 2, I added the WHERE() function to extract the records that meet the specific condition 
of flights where there is no tailnum.*/
SELECT COUNT(*), SUM(distance) AS 'total distance flown' FROM flights
WHERE (year = 2013 AND month = 1) AND tailnum IS NULL;

/* For some reason, where I try to get the total count of flights that had no tailnum, I get 0. I looked at the table
manually and saw that some flights do not have a tailnum. Could not find a solution to this issue*/ 
SELECT COUNT(*) FROM flights
	WHERE tailnum IS NULL; 

/* Inner Join selects records that having matching values in both tables, while Left Join returns all rows from the left side of the join clause, and the matching rows from the
the right right side of the join clause. If there is no match from the right side, the result will be NULL. In this case, the difference between the 
tables shown by both Joins is that the Left Join shows a value of Null for 140 flights.*/
SELECT COUNT(*), SUM(distance) AS 'total distance flown', manufacturer AS 'Manufacturer' FROM flights 
INNER JOIN planes 
ON flights.tailnum = planes.tailnum 
WHERE (flights.year = 2013 AND flights.month = 7 and flights.day = 5) 
GROUP BY manufacturer; 

SELECT COUNT(*), SUM(distance) AS 'total distance flown', manufacturer AS 'Manufacturer' FROM flights 
LEFT JOIN planes 
ON flights.tailnum = planes.tailnum 
WHERE (flights.year = 2013 AND flights.month = 7 AND flights.day = 5) 
GROUP BY manufacturer;

/*Find out which airports received flights that had planes with over 300 seats on January, 2013*/
SELECT Airports.faa FROM airports 
INNER JOIN flights 
ON flights.dest = airports.faa 
INNER JOIN planes 
ON planes.tailnum=flights.tailnum 
WHERE (flights.year = 2013 AND flights.month = 7 AND planes.seats > '300') 
GROUP BY airports.faa;

/*SQL SCRIPT FOR TABLEAU*/ 
SELECT SUM(distance) AS 'total distance flown', manufacturer AS 'Manufacturer' FROM flights 
INNER JOIN planes 
ON flights.tailnum = planes.tailnum 
WHERE (flights.year = 2013) 
GROUP BY manufacturer

