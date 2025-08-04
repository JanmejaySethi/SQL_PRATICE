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


     ------------------------------------------



        LTRIM  -- blank space from left side before charcter staring 
LTRIM(String_Expression)

select LTRIM('     Babu')

select LTRIM('     Babu     ')
select RTRIM('     Babu     ')
--     Babu
Select TRIM('     Babu     ')
--Babu

Select TRIM('     Babu     V     K       ')
-- Babu     V     K

Select (Trim(FirstName)+' '+trim(MiddleName)+' '+Trim(LastName)) AS FULLNAME from EmployeeSF
select UPPER('babu VK')
-- when to use upper case
-- Student        Dept                univercity
-- UPPER(trim(babu ))    =        UPPER(trim(BABU))       =          UPPER(trim(Babu))
select LOWER('babu VK')
--Len(string expersion)
Select len(9897)
Select Len('Babu')
-- Select 'ABC' +  9897

Select Len('Babu VK')
Select Len('   Babu VK')
Select Len('       Babu VK         ')

Select REVERSE('Babu V K')

Select REVERSE('   Babu V K  ')
--  K V ubaB 
select left('babu V K',4)
select Right('babu V K',4)
'1PI13SCS008'
select left('1PI13SCS008',1)
Select left(ICIC6876,5)
Select left(SBIN6876,4)
Select Right('1PI13SCS008',3)
Select Reverse(left(reverse('1PI13SCS008'),3))

-- 800SCS31IP1
--800
008

CHARINDEX(‘Expression_to_Find’, ‘Search_Expression’, [‘Strat_Location’])
Select CHARINDEX('@', 'babu@gmail.com')   -- 5
Select [Email], CHARINDEX('@', [Email])  from EmployeeSF

Select CHARINDEX('@', 'babu@9035192617@Bagalore')   -- 5 
                            6
Select CHARINDEX('@', 'babu@9035192617@Bagalore',6) -- 16

Select CHARINDEX('@', 'Anup Kumar@9035192617@Bagalore',6)  -- 11
                                                      First Occurance of @+1
Select CHARINDEX('@', 'Anup Kumar@9035192617@Bagalore',12) 

Select CHARINDEX('@', 'babu@9035192617@Bagalore',CHARINDEX('@', 'babu@9035192617@Bagalore')+1)

Select CHARINDEX('@', 'Anup Kumar@9035192617@Bagalore',CHARINDEX('@', 'Anup Kumar@9035192617@Bagalore')+1)  -- 22



Select SUBSTRING('babu@gmail.com', 6, 5)
Select SUBSTRING('babu@hcl.com', 6, 3)
    -- 6
-- Charindex(@)+1     Charindex(.)=11
-- 'babu@gmail.com'
--       6    .
-- total 11-6 = 5 
                                   @    .   @
Select SUBSTRING('babu@gmail.com', 5+1, 11-(5+1))

Select 
SUBSTRING('babu@gmail.com', 
CHARINDEX('@','babu@gmail.com')+1, 
CHARINDEX('.','babu@gmail.com')-(CHARINDEX('@','babu@gmail.com')+1))

Select SUBSTRING('babu@hcl.com',6,3)

Select
SUBSTRING('babu@hcl.com', 
CHARINDEX('@','babu@hcl.com')+1, 
CHARINDEX('.','babu@hcl.com')-(CHARINDEX('@','babu@hcl.com')+1))
           


Select
SUBSTRING('babuKumar@hdfc.com', 
            CHARINDEX('@','babuKumar@hdfc.com')+1, 
                        CHARINDEX('.','babuKumar@hdfc.com')-(CHARINDEX('@','babuKumar@hdfc.com')+1))

     

     ---------------------------------------
     --------------------------------------

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

     Select Cast(4 as varchar(10))+'_'+ '3'

Select 4.4+'3'

Select 4 + cast('3.9' as Decimal(10,2))

Explcitly 
CAST  -- 99%
CONVERT -- 1%

Immplict possible  -- Costly 
immplcit not possible 

Select 5 + 4.5

Select 5 + '4.5'

Select 5+ CAST(4.5 as Int)

Select Cast(4.5 as Int)
Select Convert(Int, 4.5)


create table Stu1(
id int,
Name varchar (20)
)

insert into Stu1 values (1, 'Sam')
insert into Stu1 values (3, 'Ram')
insert into Stu1 values (3, 'Sara')

Select * from Stu1
1-Sam
3-Ram

Select Cast(Id as varchar(10))+'-'+Name
from Stu1

Select Convert(varchar(10), ID)+'-'+Name
from Stu1

Select getdate()

Select Cast(getdate() as Varchar(100))
Select Convert(Varchar(100), getdate())

Select * from ABCDVarchar
Select cast('01/07/09' as Date)  -- 2009-01-07

Select cast('14 Aug 22' as Date) 
Select cast('08/14/22' as Date)

Select cast('01/1990/Sep' as Date)

select Dateformat, isdate(dateformat)
--cast(dateformat as Date) as Dateformatconv
from ABCDVarchar

select Dateformat, isdate(dateformat),
TRY_cast(dateformat as Date) as Dateformatconv
from ABCDVarchar

Select 
CAST(
(left('01/1990/Sep',2) +'/'+
right('01/1990/Sep',3) +'/'+
SUbstring('01/1990/Sep',4,4))
AS DATE)


Select Cast('01/1990/Sep' as date)
             dd/yyyy/mon
Select Cast('01/Sep/1990' as date)
             dd/mon/yyyy


create table varchartable
(
Tid varchar(10),
Qty varchar(50),
Price varchar(50),
trasdate varchar(50) 
)


insert into varchartable values ('2','2','9.8','2020-02-01')
insert into varchartable values ('3','1','233.4','2020-03-04')
insert into varchartable values ('4','2','32.2','2020-04-03')
insert into varchartable values ('5','1','19.9','2020-05-05')

Select Sum(cast(Qty as int)) from varchartable
Select Sum(convert(int, Qty)) from varchartable

Select Sum(cast(Price as Decimal(10,2))) from varchartable
Select Sum(convert(Decimal(10,2), Price)) from varchartable

Select min(cast(trasdate as date)) from varchartable
Select min(Convert(date, trasdate)) from varchartable


     ---------------------
     ---------------------


     
Select Customer_ID from MED_TAB
where GENDER='Female' and Age>=70

-- Max, min, Avg, Sum

Select 
Max (Spent_amount) as MX_SM,
Min (Spent_amount) as MIN_SM,
Avg (Spent_amount) as AV_SM,
Sum (Spent_amount) as SU_SM
from MED_TAB


Select * from [dbo].MED_TAB

Select CUSTOMER_ID,
datediff(day, CARD_REG_DATE, FIRST_USE_DTE) as Gapbetweenuseandreg
from MED_TAB

select * from MED_TAB
where Datediff(Year, DOB, getdate())>=70

select Count(*), count(CUSTOMER_ID), count(CARD_REG_DATE), count(distinct CARD_REG_DATE)  FROM MED_TAB

-- APPOLO, CIPLA and GENO 

ACT, NSW, QLD
Town start with L and end with K 

-- i need all female customers whos company not in 'APPOLO', 'CIPLA','GENO' and first char of the twon between k to l 
-- State code hsould be in ('ACT', 'NSW', 'QLD')
select * from MED_TAB
Where GENDER='Female'
AND STATE_CODE in ('ACT', 'NSW', 'QLD')
AND TOWN LIKE '[K-L]%'
AND Company not in ('APPOLO', 'CIPLA','GENO') 

     
   
   -- USE [AdventureWorks2019_DA];


  -- SELECT * FROM [Person].[Person]

        -- Dashboard -- India 
/*
YYYY-MM-DD format to respective format 
Varchar      --   DATE 
'02-20-1989' -- YYYY-MM-DD

DATE        -- Varchar 
YYYY-MM-DD  -- ? 
*/

select cast(getdate() AS Varchar)   -- Jul 13 2025  4:40PM

select Convert(Varchar(100), getdate(), 1)   -- 07/13/25
select Convert(Varchar(100), getdate(), 101) -- 07/13/2025
select Convert(Varchar(100), getdate(), 103) -- 13/07/2025

/*Varchar   to    Date 
--diffent       yyyy-mm-dd
Date      to    Varchar
yyyy-mm-dd to   Convert
*/

Select ModifiedDate,
Cast(ModifiedDate as varchar) as defualtstyleformat,
Convert(varchar, ModifiedDate, 1) as Style1,
Convert(varchar, ModifiedDate, 0) as Style0,
Convert(varchar, ModifiedDate, 2) as Style2,
Convert(varchar, ModifiedDate, 101) as Style101,
Convert(varchar, ModifiedDate, 103) as Style103
from [Person].[Person]

     ---------------

--Sales numberic(10,2)
1234567.89

-- 1,234,567.89
-- 12,34,567.89
-- LP 
Select FORMAT(1234567.89, 'C')   -- $1,234,567.89
Select FORMAT(1234567.89, 'N')   -- 1,234,567.89
Select FORMAT(1234567.89, 'G')   -- 1234567.89

Select FORMAT(1234567.89, 'C','hi-IN')   -- ₹12,34,567.89
Select FORMAT(1234567.89, 'N','hi-IN')   --  12,34,567.89
Select FORMAT(1234567.89, 'G','hi-IN')   --  1234567.89

Select FORMAT(getdate(), 'D','hi-IN')   -- 13 जुलाई 2025
Select FORMAT(getdate(), 'D','zh-cn')  -- 2025年7月13日
     

     ------------------------------
     ------------------------------


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


---------------------------
---------------------------


Create table Student (
ID int,
F_Name varchar(255),
L_Name Varchar(255),
Age int,
Email Varchar (255),
);

insert into Student values( 1,'Babu','VK',28,'B@B.com');
insert into Student values( 2,'Jhon','P',29,'J@J.com');
insert into Student values( 3,'Kumar','P',26,'K@P.com');
insert into Student values( 4,'Suresh','Jain',16,'S@J.com');
insert into Student values( 5,'Suresh','Jain',12, 'Emailid');

Select *,
iif(Age>=18, 'Major', 'Minior') as Status
from Student

--99.9 Case
Select *,
Case 
when Age>=18 THEN  'Major'
else 'Minior' 
END  AS Status from Student
/*
0-20
20- 40
40-60
60+
*/
Select CUSTOMER_ID, Company, Age, 
Case 
when Age between 0 AND 20 then '0-20 bucket'
when Age between 21 AND 40 then '21-40 bucket'
when Age between 41 AND 60 then '41-60 bucket'
when Age>60 then 'More then 60'
ELSE 'Didnot meet the cond'
END AS Age_Bucket
from MED_TAB

Select * from MED_TAB


Select CUSTOMER_ID, Company, Age, 
Case 
	when Age>0 then '0-20 bucket'
	when Age>21 then '21-40 bucket'
	when Age>41 then '41-60 bucket'
	when Age>60 then 'More then 60'
	ELSE 'Didnot meet the cond'
END AS Age_Bucket
from MED_TAB



Select *,
 CASE  
      WHEN Spent_amount>1000 then '1000+'
	  WHEN Spent_amount>500 then '500 to 1000'
      WHEN Spent_amount>0 then '0 to 500'
	  Else 'Didft meet the condition'
 END AS Spend_Bucket
 from MED_Tab

/*
 60+ year and 1000+ ruppes ... then 10%
 40+ Year and 1000+ rupped     then 5% 
 <40           1000+ ruppes      2%
 */
 Select Age, Spent_amount, 
 Case 
	when Age>60 AND Spent_amount>1000 then '10% discount'
	when Age>40 AND Spent_amount>1000 then '5% discount'
	when Age<=40 AND Spent_amount>1000 then '2% discount'
   ELSE 'NA' 
 END AS Discount
 from MED_TAB


 Select Age, Spent_amount from MED_TAB



  Select Age, Spent_amount, 
 Case 
	when Age>60 AND Spent_amount>1000 then Spent_amount*0.1
	when Age>40 AND Spent_amount>1000 then Spent_amount*0.05
	when Age<=40 AND Spent_amount>1000 then Spent_amount*0.02
   ELSE 0.0
 END AS Discount_Amount,

  Case 
	when Age>60 AND Spent_amount>1000 then '10% discount'
	when Age>40 AND Spent_amount>1000 then '5% discount'
	when Age<=40 AND Spent_amount>1000 then '2% discount'
   ELSE 'NA' 
 END AS Discount_Per

 from MED_TAB	


----------
	
 create table TabA(
Name varchar(2)
)

Insert into TabA values('A')
Insert into TabA values('B')
Insert into TabA values('A')
Insert into TabA values('B')
Insert into TabA values('A')
Insert into TabA values('B')
Insert into TabA values('A')
Insert into TabA values('B')

Select * from TabA

Select 
Case when Name='A' then 'A' END AS A,
Case when Name='B' then 'B' END AS B
From TabA



SELECT * FROM [dbo].Company_City;

-- APPLE 20%
-- DELL 15%
-- 0%


Select *,
CASE 
    WHEN PRODUCT='APPLE' Then PRICE*0.2
	WHEN PRODUCT='DELL' Then PRICE*0.15
	ELSE 0
END AS Dicsount_amt
from [dbo].[Company_City]

-- APPLE  Bangalore 20 DELHI 15% BHUBANESWAR 10%  else 0
-- DELL 15%
-- 0%
-- Select * from [dbo].[COmpany_City]

Select *,
CASE     
    WHEN PRODUCT='APPLE' THEN
	   CASE 
	       WHEN CITY='BANGALORE' Then PRICE*0.2
		   WHEN CITY='DELHI' Then PRICE*0.15
		   WHEN CITY='BHUBANESWAR' Then PRICE*0.1
		   Else 0
	   END
	WHEN PRODUCT='DELL' Then PRICE*0.15
	ELSE 0
END AS Dicsount_amt
from [dbo].[COmpany_City]


/*
APPLE	BANGALORE   20
APPLE	DELHI       15
APPLE	BHUBANESWAR 10
DELL	BHUBANESWAR  20
DELL	MUMBAI       15
DELL	CHENNAI      10
HP	DELHI            30
HP	BHUBANESWAR      25 
*/

Select PRODUCT, CITY, PRICE,
	CASE When PRODUCT='APPLE' Then                  
		Case 
		     When CITY='BANGALORE' Then PRICE-(PRICE*0.2 )  
		     When CITY='DELHI' Then PRICE-(PRICE*0.15 )    
	         When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
	     when PRODUCT='DELL' Then 
		 Case 
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.2   )
		     When CITY='MUMBAI' Then PRICE-(PRICE*0.15)      
	         When CITY='CHENNAI' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
		when PRODUCT='HP' Then 
		 Case 
		     When CITY='DELHI' Then PRICE-(PRICE*0.3)   
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.25)
			 ELSE PRICE
		END
		Else 0
	END  AS Updated_Price

from [dbo].[Company_City]


	------


Update [dbo].[Company_City]
SET PRICE=
	CASE When PRODUCT='APPLE' Then                  
		Case 
		     When CITY='BANGALORE' Then PRICE-(PRICE*0.2 )  
		     When CITY='DELHI' Then PRICE-(PRICE*0.15 )    
	         When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
	     when PRODUCT='DELL' Then 
		 Case 
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.2   )
		     When CITY='MUMBAI' Then PRICE-(PRICE*0.15)      
	         When CITY='CHENNAI' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
		when PRODUCT='HP' Then 
		 Case 
		     When CITY='DELHI' Then PRICE-(PRICE*0.3)   
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.25)
			 ELSE PRICE
		END
		Else 0
	END 


    Select * from [dbo].[Company_City]


-----------


    Select PRODUCT, CITY, PRICE,
	CASE When PRODUCT='APPLE' Then                  
		Case 
		     When CITY='BANGALORE' Then PRICE-(PRICE*0.2 )  
		     When CITY='DELHI' Then PRICE-(PRICE*0.15 )    
	         When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
	     when PRODUCT='DELL' Then 
		 Case 
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.2   )
		     When CITY='MUMBAI' Then PRICE-(PRICE*0.15)      
	         When CITY='CHENNAI' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
		when PRODUCT='HP' Then 
		 Case 
		     When CITY='DELHI' Then PRICE-(PRICE*0.3)   
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.25)
			 ELSE PRICE
		END
		Else 0
	END  AS Updated_Price

from [dbo].[Company_City]
   where CASE When PRODUCT='APPLE' Then                  
		Case 
		     When CITY='BANGALORE' Then PRICE-(PRICE*0.2 )  
		     When CITY='DELHI' Then PRICE-(PRICE*0.15 )    
	         When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
	     when PRODUCT='DELL' Then 
		 Case 
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.2   )
		     When CITY='MUMBAI' Then PRICE-(PRICE*0.15)      
	         When CITY='CHENNAI' Then PRICE-(PRICE*0.1 )
			 ELSE PRICE
		END
		when PRODUCT='HP' Then 
		 Case 
		     When CITY='DELHI' Then PRICE-(PRICE*0.3)   
		     When CITY='BHUBANESWAR' Then PRICE-(PRICE*0.25)
			 ELSE PRICE
		END
		Else 0
	END <30000



create table department1
(
id int,
Dname Varchar(100)
)
insert into department1 values(1, 'CS')
insert into department1 values(1, 'IS')
insert into department1 values(1, 'ME')
insert into department1 values(1, 'EC')
insert into department1 values(1, 'CIVIL')
Select * from department1

Update department1
Set Dname=
          (Case 
			when Dname='CS' then 'Computer Science'          
			when Dname='IS' then 'Information Science'
			when Dname='ME' then 'mechanical Science'
			when Dname='EC' then 'Electronics  and communi'
			Else Dname
		  END )

Select * from department1	

	
------------------
	-------------------


CREATE TABLE EMPLOYEE1
(
   EmpCode      INT Primary Key,
   EmpFName     VARCHAR(15),
   EmpLName     VARCHAR(15),
   Job          VARCHAR(45),
   Manager      VARCHAR(4),
   HireDate     DATE,
   Salary       INT,
   Commission   INT,
   DEPTCODE     INT
);

INSERT INTO EMPLOYEE1

VALUES (9369, 'TONY', 'STARK', 'SOFTWARE ENGINEER', 7902, '1980-12-17', 2800,0,20),
       (9499, 'TIM', 'ADOLF', 'SALESMAN', 7698, '1981-02-20', 1600, 300,30),    
       (9566, 'KIM', 'JARVIS', 'MANAGER', 7839, '1981-04-02', 3570,0,20),
       (9654, 'SAM', 'MILES', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
       (9782, 'KEVIN', 'HILL', 'MANAGER', 7839, '1981-06-09', 2940,0,10),
       (9788, 'CONNIE', 'SMITH', 'ANALYST', 7566, '1982-12-09', 3000,0,20),
       (9839, 'ALFRED', 'KINSLEY', 'PRESIDENT', 7566, '1981-11-17', 5000,0, 10),
       (9844, 'PAUL', 'TIMOTHY', 'SALESMAN', 7698, '1981-09-08', 1500,0,30),
       (9876, 'JOHN', 'ASGHAR', 'SOFTWARE ENGINEER', 7788, '1983-01-12',3100,0,20),
       (9900, 'ROSE', 'SUMMERS', 'TECHNICAL LEAD', 7698, '1981-12-03', 2950,0, 20),
       (9902, 'ANDREW', 'FAULKNER', 'ANALYST', 7566, '1981-12-03', 3000,0, 10),
       (9934, 'KAREN', 'MATTHEWS', 'SOFTWARE ENGINEER', 7782, '1982-01-23', 3300,0,20),
       (9591, 'WENDY', 'SHAWN', 'SALESMAN', 7698, '1981-02-22', 500,0,30),
       (9698, 'BELLA', 'SWAN', 'MANAGER', 7839, '1981-05-01', 3420, 0,30),
       (9777, 'MADII', 'HIMBURY', 'ANALYST', 7839, '1981-05-01', 2000, 200, NULL),
       (9860, 'ATHENA', 'WILSON', 'ANALYST', 7839, '1992-06-21', 7000, 100, 50),
       (9861, 'JENNIFER', 'HUETTE', 'ANALYST', 7839, '1996-07-01', 5000, 100, 50);
	  
	  INSERT INTO EMPLOYEE1  
VALUES(9999, 'Babu', 'VK', 'ANALYST', 7839, '1981-05-01', 2000, 200, NULL)

Select * from EMPLOYEE1

Select sum(salary) from EMPLOYEE1  -- 51930

Select distinct JOB from EMPLOYEE1

--------------
Select JOB,EmpCode,sum(salary) from EMPLOYEE1
Group by JOB

--What is include in the group by column only those columns should be in a select and rest in an agg format
----------

Select EmpFName, Sum(salary) from EMPLOYEE1   -- No because we can't combine agg and non agg columns without group
--Group by EmpFName

Select sum(salary), sum(commission) from EMPLOYEE1    -- row

Select JOB, sum(salary), sum(commission) from EMPLOYEE1  -- 6 rows 3 columns
Group by JOB

Select sum(salary), sum(commission) from EMPLOYEE1     -- 6 rows 2 column 
Group by JOB


Select JOB,sum(salary), sum(commission) from EMPLOYEE1   -- NO
Group by EmpFName

Select EmpFName,JOB,sum(salary), sum(commission) from EMPLOYEE1 
Group by EmpFName, JOB

--Group by agg 
-- EmpFName, JOB, Sum(sal) sum(comm)	

Select JOB,Count(EmpCode) as cnt_Emp from EMPLOYEE 
where Commission>0
GROUP BY JOB


		  
Select JOB,Count(EmpCode) as cnt_Emp from EMPLOYEE1 
where Commission>0
GROUP BY JOB

-- get me total salary of each JOB where Emp's commission is more then 0

Select JOB, Sum(salary) as sumsal from EMPLOYEE
Where Commission>0 
group by JOB 

-- get me total salary of each JOB where Emp's commission is more then 0 and sum of salary is grater then 10000
Select JOB, Sum(salary) as sumsal from EMPLOYEE1
Where Commission>0
group by JOB 
HAVING Sum(salary)>10000


-- get me total salary of each JOB where Emp's commission is more then 0 and JOB is ANALYST and SOFTWARE ENGINEER

Select JOB, SUm(Salary) from EMPLOYEE1
Where Commission>0
AND JOB in ('ANALYST', 'SOFTWARE ENGINEER')
Group by JOB


Select JOB, SUm(Salary) from EMPLOYEE1
where Commission>0
Group by JOB
having JOB in ('ANALYST', 'SOFTWARE ENGINEER')

-- having is used to filterout aggrigated columns or grouped columns columns and after group by 
-- Group by treats all nulls are equal similar to disctinct and unique 
Select * from EMPLOYEE1

select Distinct DEPTCODE from EMPLOYEE1

select DEPTCODE, Sum(Salary) from EMPLOYEE1
group by DEPTCODE




Select Company,sum(spent_Amount) from MED_TAB
Group by Company

Select GENDER, sum(spent_Amount) from MED_TAB
group by GENDER

Select distinct GENDER, COMPANY from MED_TAB

Select COMPANY, GENDER,sum(spent_Amount) from MED_TAB
group by  COMPANY, GENDER


Select Company, sum(spent_Amount)  from MED_TAB
Group by Company
Having sum(spent_Amount)>190000


Select Company, sum(spent_Amount) as sum_spdamt  from MED_TAB
Group by Company
Having  sum(spent_Amount)>190000		  
	


  -------------
  -------------	


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

-- Q1: Get the list of customers who placed orders with product and amount details.
     
     SELECT SalesRep,
     case 
     when SalesRep in ('Alice','Bob') then 'Top Performer'
     when SalesRep = 'Carol' then 'consistent'
     ELSE 'New Joiner'
     END AS PerformancesStatus
     FROM Sales;

/* Write an SQL query to display the SalesRep, Region, SalesAmount, and a calculated column BonusAmount based on the following conditions:

If the region is 'North', bonus is 10% of the SalesAmount

If the region is 'South', bonus is 8% of the SalesAmount

If the region is 'East', bonus is 5% of the SalesAmount

For all other regions, the bonus should be 0
*/
     
     SELECT SalesRep,Region,SalesAmount,
     case
     when Region= 'North' then SalesAmount*0.10
     when Region= 'South' then SalesAmount*0.08
     when Region= 'East'  then SalesAmount*0.05
     ELSE 0
     END AS BonusAmount
     FROM Sales;

/* Write an SQL query to display Product, SalesAmount, and derive two new columns:

ProductGroup:

If the product is 'Laptop', label it as 'Electronics-A'

If the product is 'Mobile' or 'Tablet', label it as 'Electronics-B'

Otherwise, label it as 'Other'

HighValueSale:

If SalesAmount is greater than 40,000, mark as 'YES'

Else, mark as 'NO'

Use CASE statements to implement the logic.
*/

     
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


--------


    create table Employee_NN_CK_DC_UC
(
E_Id int not null unique,
E_Name Varchar(100) Check (len(E_Name)>2) unique,
Experiance tinyint,
gender Char(6),
E_DOB Date,
E_Age tinyint Check (E_Age>20 AND E_Age<70),
[Phone Number] bigint not null Check (len([Phone Number])=10),
Email_Id varchar(100) not null Check (Email_Id like '__%@___%.%') unique,
Is_Married bit,
[Cast] varchar(10) Constraint Employee_NN_CK_DC_UC_Cast_DF Default 'General',
join_date datetime not null Check (join_date<='2025-06-21'),
CityName Nvarchar(100),
Constraint Employee_NN_CK_DC_UC_Phone_uniqueCheck unique([Phone Number])
)


insert into Employee_NN_CK_DC_UC values
(1234, 'Babu', 11, 'male', '1990-08-03', 35, 9035192617, 'babuvk@gmail.com', 'TRUE','2A', '2025-06-01 09:04:06',N'ಬೆಂಗಳೂರು')

insert into Employee_NN_CK_DC_UC values
(1235, 'Ram', 11, 'male', '1990-08-03', 35, 9035192618, 'babuv@gmail.com', 'TRUE',null, '2025-06-01 09:04:06',N'ಬೆಂಗಳೂರು')

insert into Employee_NN_CK_DC_UC(E_Id,E_Name,Experiance,gender,E_DOB,E_Age,[Phone Number],Email_Id,Is_Married,join_date, CityName)
values
(1237, null, 11, 'male', '1990-08-03', 35, 9035192678, 'babuvk67@gmail.com', 'TRUE', '2025-06-01 09:04:06',N'ಬೆಂಗಳೂರು')


Select * from Employee_NN_CK_DC_UC
