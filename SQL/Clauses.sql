/*MYSQL Clauses*/

Use Amazon;



show tables;

desc orders;

select * from orders;

/*WHERE CLAUSE*/

SELECT *  
FROM person 
WHERE person_ID = '5';  

SELECT *  
FROM person  
WHERE address = 'bangalore'  
AND person_id < 3;  

SELECT *  
FROM person 
WHERE address = 'pune'  
OR person_id < 4;  

SELECT *  
FROM person 
WHERE (Person_name = 'Surya' AND Address = 'Bangalore')  
OR (person_id < 5);  

/*Distinct Clause*/

SELECT DISTINCT Order_Number
FROM orders;  

SELECT DISTINCT Order_Number, order_stauts  
FROM orders;  

/*FROM Clause*/

desc person;

select * from person;

SELECT *  
FROM person  
WHERE person_id <= 3; 

SELECT orders.order_id, person.person_name
FROM orders  
INNER JOIN person 
ON orders.order_id = person.person_id;  

SELECT orders.order_id, person.person_name
FROM orders  
Left outer JOIN person 
ON orders.order_id = person.person_id;  

/*ORDER BY Clause*/

SELECT *  
FROM person  
WHERE address = 'pune'  
ORDER BY person_name; 

SELECT *  
FROM person  
WHERE address = 'pune'  
ORDER BY person_name desc; 

SELECT person_name, address  
FROM person  
WHERE person_id < 3 
ORDER BY person_name DESC, address ASC;  




