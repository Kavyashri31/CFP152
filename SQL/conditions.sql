/*MySQL Conditions*/
/*AND Condition*/
use amazon; 
select * from person;

SELECT *  
FROM person
WHERE address = 'Bangalore'  
AND person_id < 4;  

/*OR Condition*/

SELECT *  
FROM person
WHERE address = 'Pune'  
OR person_id < 4;  

/*AND & OR condition*/

SELECT *  
FROM person
WHERE (Person_name = 'Shreya' AND Address = 'Pune')  
OR (person_id < 2);  

/*Boolean Condition*/
alter table orders
add order_delivery varchar(30) NOT NULL;

select * from orders;

UPDATE `amazon`.`orders` SET `order_delivery`='true' WHERE `Order_ID`='1';
UPDATE `amazon`.`orders` SET `order_delivery`='true' WHERE `Order_ID`='2';
UPDATE `amazon`.`orders` SET `order_delivery`='false' WHERE `Order_ID`='3';
UPDATE `amazon`.`orders` SET `order_delivery`='false' WHERE `Order_ID`='4';
UPDATE `amazon`.`orders` SET `order_delivery`='true' WHERE `Order_ID`='5';

SELECT Order_ID, order_Status, pass FROM orders WHERE Successfull = true;  

SELECT order_id, order_status, pass FROM orders WHERE pending = FALSE;  


SELECT  order_id, order_status, IF(Successfull,'true', 'false')order_delivery FROM orders;  

/*LIKE Condition*/

SELECT person_name 
FROM person
WHERE address LIKE 'pu_e';  

SELECT person_name 
FROM person
WHERE address LIKE 'pune%'; 

SELECT person_name 
FROM person
WHERE address NOT LIKE 'pune%'; 

/*IN Condition*/

SELECT *  
FROM person  
WHERE person_name IN ('Riya', 'Surya', 'Seema'); 

/*ANY Condition*/

SELECT  FROM table1   
WHERE num_value > ANY (SELECT num_val FROM table2);  

/*EXISTS Condition*/

SELECT person_name, email FROM person 
WHERE EXISTS (SELECT * FROM Orders   
WHERE person.person_id = Orders.order_id);  

SELECT person_name, email FROM person 
WHERE NOT EXISTS (SELECT * FROM Orders   
WHERE person.person_id = Orders.order_id);  

DELETE FROM Orders WHERE EXISTS (  
SELECT * FROM person 
WHERE order_id=5);  


/*NOT condition*/

SELECT *  
FROM person 
WHERE person_name NOT IN ('surya','riya');

SELECT *  
FROM person 
WHERE person_name is NOT NULL;

SELECT *  
FROM person 
WHERE person_name NOT LIKE 'S%';  

SELECT *  
FROM person  
WHERE person_id NOT BETWEEN 3 AND 4;  

/*NOT equal*/

SELECT * FROM person WHERE address != "pune"; 

SELECT * FROM orders 
JOIN person ON order_id = person_id   
WHERE person.address <> "Null"  
GROUP BY order_number;  


/*NULL Condition*/

SELECT *  
FROM person 
WHERE person_name IS NULL; 


/*NOT NULL Condition*/

SELECT *  
FROM person 
WHERE person_name IS NOT NULL; 