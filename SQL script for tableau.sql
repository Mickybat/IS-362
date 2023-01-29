/*SQL SCRIPT FOR TABLEAU*/ 
SELECT SUM(distance) AS 'total distance flown', manufacturer AS 'Manufacturer' FROM flights 
INNER JOIN planes 
ON flights.tailnum = planes.tailnum 
WHERE (flights.year = 2013) 
GROUP BY manufacturer