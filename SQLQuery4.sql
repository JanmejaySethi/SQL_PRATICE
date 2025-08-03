USE COMPANY;

CREATE TABLE EMPLOYEE(
  E_ID INT,
  E_NAME VARCHAR(50),
  EXPERIENCE INT,
  SALARY INT,
  GENDER VARCHAR(6),
  E_DOB DATE,
  E_AGE INT,
  [PHONE NUMBER] BIGINT,
  EMAIL_ID VARCHAR(25),
  JOIN_DATE DATE,
  [CITY NAME] VARCHAR(20)
  );
 

  INSERT INTO Employee
   (E_ID,E_NAME,EXPERIENCE,SALARY,GENDER,E_DOB,E_AGE,[PHONE NUMBER],EMAIL_ID,JOIN_DATE,[CITY NAME])

 VALUES

(101, 'Rohit Sharma', 5, 65000.00, 'Male', '1990-08-15', 34, '9876543210', 'rohit.sharma@gmail.com', '2020-06-01', 'Mumbai'),
(102, 'Priya Mehta', 3, 58000.00, 'Female', '1995-03-22', 29, '9123456789', 'priya.mehta@gmail.com', '2021-09-10', 'Delhi'),
(103, 'Amit Verma', 7, 75000.00, 'Male', '1988-12-05', 36, '9988776655', 'amit.verma@yahoo.com', '2018-01-15', 'Bangalore'),
(104, 'Sneha Rao', 2, 52000.00, 'Female', '1998-07-30', 26, '9876123456', 'sneha.rao@nobroker.com', '2023-02-20', 'Hyderabad'),
(105, 'Arjun Patel', 4, 62000.00, 'Male', '1992-11-10', 32, '9765432109', 'arjun.patel@hcl.com', '2019-11-25', 'Mumbai'),
(106, 'Neha Kapoor', 6, 71000.00, 'Female', '1991-06-18', 33, '9877001122', 'neha.kapoor@yahoo.com', '2017-08-01', 'Pune'),
(107, 'Raj Malhotra', 8, 82000.00, 'Male', '1986-09-12', 38, '9800456732', 'raj.malhotra@gmail.com', '2015-05-12', 'Delhi'),
(108, 'Ankita Singh', 1, 50000.00, 'Female', '2000-01-01', 25, '9823012456', 'ankita.singh@yahoo.com', '2024-01-10', 'Delhi'),
(109, 'Manoj Joshi', 9, 89000.00, 'Male', '1985-03-05', 39, '9871112233', 'manoj.joshi@gmail.com', '2014-11-30', 'Delhi'),
(110, 'Pooja Rani', 5, 66000.00, 'Female', '1993-10-25', 31, '9876567890', 'pooja.rani@yahoo.com', '2020-03-18', 'Bangalore');

  
  SELECT * FROM EMPLOYEE;

  -- FIND MAXIMUM SALARY
  SELECT MAX(SALARY) FROM EMPLOYEE;

   -- FIND MAXIMUM SALARY WITH ALL DETAILS

  SELECT * FROM Employee
 WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE);

 -- FIND TOP 3 SALARY
 SELECT TOP 3 SALARY FROM Employee
 ORDER BY SALARY DESC;

 -- FIND TOP 3 SALARY WITH ALL DETAILS
 SELECT TOP 3 * FROM EMPLOYEE
 ORDER BY SALARY DESC;

  -- FIND TOP 3 SALARY WITHOUT TOP FUNCTION (THIS IS NOT VALID FOR SQL SERVER)
  /*
  SELECT * FROM EMPLOYEE
  ORDER BY SALARY DESC
  LIMIT 3;
  */

  -- FIND EMPLOYEE NAME WHOSE SALARY IS MORE THAN 70000
  SELECT * FROM EMPLOYEE
  WHERE SALARY > 70000;

   -- FIND EMPLOYEE NAME WHOSE SALARY IS MORE THAN 65000 AND AGE ABOVE 36
   SELECT * FROM EMPLOYEE
   WHERE SALARY > 65000 AND E_AGE > 36;

   --Find all employees from Delhi
   SELECT * FROM Employee
   WHERE [CITY NAME] = 'Delhi';


   -- Get names, age and phone numbers of female employees
   SELECT E_NAME,[PHONE NUMBER], E_AGE FROM Employee
   WHERE GENDER= 'FEMALE';

   -- FIND SECOND HIGHEST SALARY
   SELECT MAX(SALARY) AS SECOND_HIGHEST FROM EMPLOYEE
   WHERE SALARY<(SELECT MAX(SALARY) FROM EMPLOYEE);

   -- Find employees who don’t have email IDs
   SELECT * FROM EMPLOYEE
   WHERE EMAIL_ID IS NULL;

   -- FIND MAX SALARY CITY WISE
   SELECT MAX(SALARY), [CITY NAME] FROM EMPLOYEE
   GROUP BY [CITY NAME]

   -- FIND THE PLACE OF '@'
   SELECT CHARINDEX('@',EMAIL_ID) FROM EMPLOYEE

   -- FIND THE DOMAIN FROM GMAIL ID
   SELECT *,
   SUBSTRING(EMAIL_ID, (CHARINDEX('@',EMAIL_ID))+1, LEN(EMAIL_ID)-CHARINDEX('@',EMAIL_ID) )FROM EMPLOYEE
  
   -- Write a query to extract the email provider (like gmail, yahoo, HCL) from each employee's email ID

    SELECT *,
   SUBSTRING(EMAIL_ID, (CHARINDEX('@',EMAIL_ID))+1, CHARINDEX('.',EMAIL_ID,8)-(CHARINDEX('@',EMAIL_ID)+1) )FROM EMPLOYEE

  -- Write a SQL query to mask employee email addresses
    
    SELECT *,LEFT (EMAIL_ID, 3)+
    REPLICATE('*',5)+
    SUBSTRING(EMAIL_ID,CHARINDEX('@',EMAIL_ID)+1, LEN(EMAIL_ID)-CHARINDEX('@',EMAIL_ID)+1) AS MASK_EMAIL FROM EMPLOYEE
   
   
   -------------------------------------------
   -------------------------------------------
   
   -- USE [AdventureWorks2019_DA];


  -- SELECT * FROM [Person].[Person]

       CREATE TABLE Sales (
       SalesID INT PRIMARY KEY,
       Region varchar(50),
       Product varchar(50),
       SalesAmount INT,
       SaleDate Date,
       SalesRep VARCHAR(50)
      );
      
     INSERT INTO Sales 
     (SalesID, Region, Product, SalesAmount, SaleDate, SalesRep)
     
     VALUES
     (1, 'North', 'Laptop', 50000, '2024-12-01', 'Alice'),
     (2, 'South', 'Mobile', 20000, '2024-12-02', 'Bob'),
     (3, 'North', 'Tablet', 30000, '2024-12-05', 'Alice'),
     (4, 'East', 'Laptop', 45000, '2024-12-01', 'Carol'),
     (5, 'South', 'Laptop', 55000, '2024-12-03', 'Bob'),
     (6, 'North', 'Mobile', 25000, '2024-12-03', 'Dave'),
     (7, 'East', 'Tablet', 40000, '2024-12-04', 'Carol');
     
     SELECT * FROM Sales;
     
     SELECT SalesRep,
     case 
     when SalesRep in ('Alice','Bob') then 'Top Performer'
     when SalesRep = 'Carol' then 'consistent'
     ELSE 'New Joiner'
     END AS PerformancesStatus
     FROM Sales;
     
     
     SELECT SalesRep,Region,SalesAmount,
     case
     when Region= 'North' then SalesAmount*0.10
     when Region= 'South' then SalesAmount*0.08
     when Region= 'East'  then SalesAmount*0.05
     ELSE 0
     END AS BonusAmount
     FROM Sales;

     
     SELECT Product, SalesAmount,
     CASE
     when product= 'Laptop' then 'Electronics-A'
     when product IN(' Mobile','Tablet') then 'Electronics-B'
     ELSE 'Other'
     END AS ProductGroup,
     
	CASE
     when SalesAmount>40000 then 'YES' ELSE 'NO'
     END AS HighValueSale
     FROM Sales;


     
 -- Customers Table
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi'),
(4, 'David', 'Chennai');

-- Orders Table
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Product VARCHAR(50),
    Amount INT
);

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 50000),
(102, 2, 'Mobile', 20000),
(103, 1, 'Tablet', 15000),
(104, 5, 'Monitor', 10000);  

-- Products Table
CREATE TABLE Products (
    ProductName VARCHAR(50),
    Price INT
);

INSERT INTO Products VALUES
('Laptop', 50000),
('Mobile', 20000),
('Tablet', 15000),
('Headphones', 3000);

-- Q1: Get the list of customers who placed orders with product and amount details.

SELECT 
    c.CustomerID,
    o.Product,
    o.Amount
FROM 
    Customers As c
INNER JOIN 
    Orders As o
ON 
    c.CustomerID = o.CustomerID;



-- 2. Get all customer names and their order details only for orders above ₹20,000.

SELECT 
    c.CustomerName,
    o.Product,
    o.Amount
FROM 
    Customers AS c
INNER JOIN 
    Orders As o
ON 
    c.CustomerID = o.CustomerID
WHERE 
    o.Amount > 20000;
