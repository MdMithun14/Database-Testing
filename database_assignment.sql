
CREATE DATABASE database_assignment;

USE database_assignment


CREATE TABLE customers(
id INT AUTO_INCREMENT PRIMARY KEY,
Customers_id INT (15) NOT NULL,
Firstname VARCHAR(50) NOT NULL,
Lastname VARCHAR(50) NOT NULL,
Date_Of_Birth DATE NOT NULL,
Phone VARCHAR(15) NOT NULL,
Address VARCHAR(200) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
Points INT (50) NOT NULL


);

INSERT INTO customers(Customers_id, Firstname, Lastname, Date_Of_Birth, Phone,Address,City,State,Points) VALUES
('101','Babara',' MacCaffrey','1986-03-28',' 781-932-9754','Sage Terrace', 'Waltham', 'MA','1273'),
('102','Ines',' Brushfield','1986-04-13',' 804-427-9456','14187 Commercial Trail', 'Hampton', 'VA','947'),
('103','Freddi','  Boagey','1985-02-07','  719-724-7869','251 Springs Junction', 'Colorado Springs', 'MA','2967'),
('104','Ambur',' Roseburgh','1974-04-14',' 407-231-8017','30 Arapahoe Terrace', 'Orlando', 'FL','457'),
('105','Clemmie',' Betchley','1973-11-07','','5 Spohn Circle', 'Arlington', 'FL','3675')

;

-- Show only 2 members whose points are more than 1000.

SELECT * FROM customers WHERE points >1000 LIMIT 2;

--  Find the customers whose age is from 1980 to 1990 or points less than 1000.

SELECT * FROM customers WHERE Date_of_Birth BETWEEN '1980 ' AND  '1990 ' OR Points<1000;

-- Find a customer who does not have a phone number.

SELECT * FROM customers WHERE Phone =' ';

-- Write a query that show how many customers lives in state wise
SELECT COUNT(state) AS Total_Statewise_Customer FROM customers;

-- Execute a query for the following scenario.
SELECT  Firstname, Lastname,points, 
CASE
	WHEN points<=1000 THEN 'They are bronze members.'
	WHEN points<=2000 THEN 'They are silver members.'
	WHEN points<=3000 THEN 'They are gold  members'
	ELSE 'They are platinum  members'
END AS Customers_Ranks FROM customers;

-- Find the max point holder customer name.
SELECT Firstname,Lastname,  points AS customers_max_points FROM customers ORDER BY points DESC  LIMIT 0,1

 -- Find the customer whose name contains 'burgh' using a Regular Expression.

SELECT * FROM customers WHERE Firstname OR Lastname REGEXP 'burgh$';



