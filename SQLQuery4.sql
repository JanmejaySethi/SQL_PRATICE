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




/*
200>200+
500>500+
1000>1000+
<200 less then 200
*/


Select GENDER, spent_Amount,
Case when spent_Amount>1000 then '1000+'
     when spent_Amount>500 then '500+'
	 when spent_Amount>200 then '200+'
	 when spent_Amount<=200 then 'Less then 200'
	 else 'NA'
	 END as SPEND_bucket
from MED_TAB 

------------

Select  
Case when spent_Amount>1000 then '1000+'
     when spent_Amount>500 then '500+'
	 when spent_Amount>200 then '200+'
	 when spent_Amount<=200 then 'Less then 200'
	 else 'NA'
	 END as SPEND_bucket, Sum(Spent_amount) as spendsum
from MED_TAB
Group by
Case when spent_Amount>1000 then '1000+'
     when spent_Amount>500 then '500+'
	 when spent_Amount>200 then '200+'
	 when spent_Amount<=200 then 'Less then 200'
	 else 'NA'
	 END

---------------
---- from employee1 table

Select
case 
	when Salary>5000 then '5000+'
	when Salary>3000 then '3000+'
	when Salary<=3000 then 'less then 3000'
END as Salary_bucket,
Count(*)
from EMPLOYEE1
Group by 
case 
	when Salary>5000 then '5000+'
	when Salary>3000 then '3000+'
	when Salary<=3000 then 'less then 3000'
END 


---------------

Select
case 
	when Salary>5000 then '5000+'
	when Salary>3000 then '3000+'
	when Salary<=3000 then 'less then 3000'
END as Salary_bucket,
Count(*)
from EMPLOYEE1
Group by 
case 
	when Salary>5000 then '5000+'
	when Salary>3000 then '3000+'
	when Salary<=3000 then 'less then 3000'
END
HAVING 
case 
	when Salary>5000 then '5000+'
	when Salary>3000 then '3000+'
	when Salary<=3000 then 'less then 3000'
END in ('3000+','less then 3000')	

	------------------------

select
Datepart(Year, CARD_REG_DATE) AS YEAR,
Datepart(Month, CARD_REG_DATE) as MONTH,
Count(Customer_id) as noofpplregistered
from MED_TAB
Group by Datepart(Year, CARD_REG_DATE),
Datepart(Month, CARD_REG_DATE)


-- how many registeration happend on weekend and how many happend on weekday 

SELECT
CASE
WHEN DATENAME(WEEKDAY,CARD_REG_DATE) IN ('SATURDAY','SUNDAY') THEN 'WEEKEND'
WHEN DATENAME(WEEKDAY,CARD_REG_DATE) NOT IN ('SATURDAY','SUNDAY') THEN 'WEEKDAY'
ELSE 'NA'
END
, COUNT(CUSTOMER_ID)
FROM MED_TAB
GROUP BY 
CASE
WHEN DATENAME(WEEKDAY,CARD_REG_DATE) IN ('SATURDAY','SUNDAY') THEN 'WEEKEND'
WHEN DATENAME(WEEKDAY,CARD_REG_DATE) NOT IN ('SATURDAY','SUNDAY') THEN 'WEEKDAY'
ELSE 'NA'
END


----------------------------

USE AdventureWorks2017

SELECT * FROM [Sales].[SalesOrderHeader]

-- How many orders are delivered on time , late , before time 

SELECT 
 CASE
   WHEN ShipDate<DueDate THEN 'BEFOR TIME'
   WHEN ShipDate=DueDate THEN 'ON TIME'
   WHEN ShipDate>DueDate THEN 'LATE'
   ELSE 'NA'
 END DELIVERY_STATUS, COUNT(SALESORDERID)
FROM [Sales].[SalesOrderHeader]
GROUP BY
 CASE
   WHEN ShipDate<DueDate THEN 'BEFOR TIME'
   WHEN ShipDate=DueDate THEN 'ON TIME'
   WHEN ShipDate>DueDate THEN 'LATE'
   ELSE 'NA'
 END
  
--  how mnay Sales Order Number ending with 0 , 1 2, 3, 4 5,6 789

SELECT 
 CASE
   WHEN SALESORDERNUMBER LIKE '%0' THEN 0
   WHEN SALESORDERNUMBER LIKE '%1' THEN 1
   WHEN SALESORDERNUMBER LIKE '%2' THEN 2
   WHEN SALESORDERNUMBER LIKE '%3' THEN 3
   WHEN SALESORDERNUMBER LIKE '%4' THEN 4
   WHEN SALESORDERNUMBER LIKE '%5' THEN 5
   WHEN SALESORDERNUMBER LIKE '%6' THEN 6
   WHEN SALESORDERNUMBER LIKE '%7' THEN 7
   WHEN SALESORDERNUMBER LIKE '%8' THEN 8
   WHEN SALESORDERNUMBER LIKE '%9' THEN 9
   ELSE 'NA'
END AS ENDWITH, COUNT(SALESORDERNUMBER)
FROM [Sales].[SalesOrderHeader]
GROUP BY
  CASE
   WHEN SALESORDERNUMBER LIKE '%0' THEN 0
   WHEN SALESORDERNUMBER LIKE '%1' THEN 1
   WHEN SALESORDERNUMBER LIKE '%2' THEN 2
   WHEN SALESORDERNUMBER LIKE '%3' THEN 3
   WHEN SALESORDERNUMBER LIKE '%4' THEN 4
   WHEN SALESORDERNUMBER LIKE '%5' THEN 5
   WHEN SALESORDERNUMBER LIKE '%6' THEN 6
   WHEN SALESORDERNUMBER LIKE '%7' THEN 7
   WHEN SALESORDERNUMBER LIKE '%8' THEN 8
   WHEN SALESORDERNUMBER LIKE '%9' THEN 9
   ELSE 'NA'
END		  
		  
	


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

----------------------------------
		--------------

-- JOIN

CREATE TABLE PRODUCT(
ID INT IDENTITY PRIMARY KEY,
NAME NVARCHAR(50),
DESCRIPTION NVARCHAR(250)
)

CREATE TABLE PRODUCTSALES(
ID INT IDENTITY PRIMARY KEY,
PRODUCTID INT FOREIGN KEY REFERENCES PRODUCT(ID),
UNITPRICE INT,
QUANTITYSOLD INT
)


INSERT INTO PRODUCT VALUES('TV', '52 INCH BLACK COVER LCD TV')
INSERT INTO PRODUCT VALUES('LAPTOP', 'VERY THIN BLACK COLOR ACER LAPTOP')
INSERT INTO PRODUCT VALUES('DESKTOP', 'HP HIGH PERFORMANCE DESKTOP')

INSERT INTO PRODUCTSALES VALUES (3, 450, 5)
INSERT INTO PRODUCTSALES VALUES (2, 250, 7)
INSERT INTO PRODUCTSALES VALUES (3, 450, 4)
INSERT INTO PRODUCTSALES VALUES (3, 450, 9)

SELECT * FROM PRODUCT;
SELECT * FROM PRODUCTSALES;

SELECT NAME, UNITPRICE, QUANTITYSOLD FROM 
PRODUCT
CROSS JOIN
PRODUCTSALES    -- Cross join 

SELECT * FROM
PRODUCT
CROSS JOIN                
PRODUCTSALES    -- CROSS JOIN


Select PRODUCT.ID, 
PRODUCT.NAME, 
PRODUCTSALES.UNITPRICE,
PRODUCTSALES.QUANTITYSOLD  
from PRODUCT join PRODUCTSALES
on PRODUCT.ID=PRODUCTSALES.PRODUCTID


-----------

-- Table 1: Student Education

CREATE TABLE STU_EDUCATION (
    STU_ID VARCHAR(5),
    STU_NAME VARCHAR(50),
    GENDER VARCHAR(10),
    EDUCATION VARCHAR(20)
);


-- Table 2: Student Experience

CREATE TABLE STU_EXPERIENCE (
    STU_ID VARCHAR(5),
    YOE INT,
    COMPANY VARCHAR(50),
    SALARY INT,
);


INSERT INTO STU_EDUCATION (STU_ID, STU_NAME, GENDER, EDUCATION) VALUES
('S1', 'GAURABH', 'MALE', 'BTECH'),
('S2', 'NIRUPA', 'FEMALE', 'BCOM'),
('S3', 'LAXMI', 'FEMALE', 'BSC'),
('S4', 'BIJAY', 'MALE', 'MCA'),
('S5', 'KARAN', 'MALE', 'MTECH'),
('S6', 'ABHISHEK', 'MALE', 'NPHARMA'),
('S7', 'DEBASHIS', 'MALE', 'MBA');


INSERT INTO STU_EXPERIENCE (STU_ID, YOE, COMPANY, SALARY) VALUES
('S1', 4, 'JP MORGAN', 125000),
('S2', 5, 'MORGAN STANLEY', 152000),
('S3', 2, 'BCG', 145000),
('S4', 3, 'MCKENSEY', 140000),
('S5', 6, 'HUL', 168000),
('S8', 7, 'ITC', 100000),
('S9', 1, 'HSBC', 172000);


Select * from STU_EDUCATION
Select * from STU_EXPERIENCE

-- INNER JOIN

Select  ED.STU_ID,
ED.STU_NAME,
ED.EDUCATION,
--EX.STU_ID,
EX.COMPANY,
EX.SALARY
from STU_EDUCATION AS ED
inner join 
STU_EXPERIENCE AS EX
on ED.STU_ID=EX.STU_ID

--- LEFT JOIN

Select ED.STU_ID,
ED.STU_NAME,
ED.EDUCATION,
--EX.STU_ID,
EX.COMPANY,
EX.SALARY
from STU_EDUCATION AS ED
Left join 
STU_EXPERIENCE AS EX
on ED.STU_ID=EX.STU_ID

-- RIGHT JOIN

Select  --ED.STU_ID,
ED.STU_NAME,
ED.EDUCATION,
EX.STU_ID,
EX.COMPANY,
EX.SALARY
from STU_EDUCATION AS ED
Right join 
STU_EXPERIENCE AS EX
on ED.STU_ID=EX.STU_ID


---

-- i want students who didn't placed 

Select  ED.STU_ID,
ED.STU_NAME,
ED.EDUCATION,
--EX.STU_ID,
EX.COMPANY,
EX.SALARY
from STU_EDUCATION AS ED
Left join 
STU_EXPERIENCE AS EX
on ED.STU_ID=EX.STU_ID
Where EX.COMPANY is null

----

CREATE TABLE EMP_DETAILS (
    EMP_ID     VARCHAR(15),
    COMPANY    VARCHAR(20),
    GENDER     VARCHAR(10),
    AGE        INT,
    STATE_CODE VARCHAR(10)
);

CREATE TABLE EMP_EXPERIENCE (
    EMP_ID     VARCHAR(15) NOT NULL,
    DEPARTMENT VARCHAR(20),
    EDUCATION  VARCHAR(20),
    EXPERIENCE INT,
    SALARY     INT
);


INSERT INTO EMP_DETAILS 
 (EMP_ID, COMPANY, GENDER, AGE, STATE_CODE)

VALUES
('1000032547','DELL','Female',29,'QLD'),
('1000032548','DELL','Female',39,'WA'),
('1000032549','DELL','Female',54,'NSW'),
('1000032550','DELL','Male',35,'VIC'),
('1000032551','DELL','Male',34,'VIC'),
('1000032552','DELL','Female',26,'NSW'),
('1000032553','DELL','Female',26,'VIC'),
('1000032554','DELL','Male',26,'QLD'),
('1000032555','HP','Male',55,'NSW'),
('1000032556','HP','Female',61,'ACT'),
('1000032557','HP','Female',28,'QLD'),
('1000032558','HP','Male',57,'VIC'),
('1000032559','HP','Female',34,'VIC'),
('1000032560','HP','Female',28,'NSW'),
('1000032561','HP','Female',51,'QLD'),
('1000032562','ASUS','Female',61,'VIC'),
('1000032563','ASUS','Female',48,'QLD'),
('1000032564','ASUS','Female',65,'NSW'),
('1000032565','ASUS','Female',63,'NSW'),
('1000032566','ASUS','Male',64,'NSW'),
('1000032567','ASUS','Male',41,'NSW'),
('1000032568','ASUS','Female',24,'VIC'),
('1000032569','ASUS','Female',62,'NSW');



INSERT INTO EMP_EXPERIENCE
 (EMP_ID, DEPARTMENT, EDUCATION, EXPERIENCE, SALARY)

VALUES
('1000032547','MKT','BTECH',  7,  47495),
('1000032548','MKT','MBA',   17, 134385),
('1000032549','MKT','MTECH', 32, 286464),
('1000032550','OPS','MBA',   13,  99047),
('1000032551','OPS','MCA',   12,  87996),
('1000032552','OPS','MTECH',  4,  26528),
('1000032553','OPS','MTECH',  4,  24100),
('1000032554','SALES','MTECH',4,  36460),
('1000032555','SALES','BBA',  33, 198264),
('1000032556','SALES','BBA',  39, 330759),
('1000032557','SALES','BBA',   6,  56382),
('1000032558','IT','BBA',     35, 263795),
('1000032559','IT','BCA',     12,  68112),
('1000032560','IT','BCA',      6,  33084),
('1000032570','IT','BCA',     29, 157702),
('1000032571','IT','BSC',     39, 298662),
('1000032572','SALES','BSC',  26, 138892),
('1000032573','SALES','BSC',  43, 422432),
('1000032574','SALES','BSC',  41, 221892),
('1000032575','SALES','BSC',  42, 271572),
('1000032576','SALES','MBA',  19, 121866),
('1000032577','MKT','MBA',     2,  17474),
('1000032578','MKT','MBA',    40, 271280);


SELECT * FROM EMP_DETAILS
SELECT * FROM EMP_EXPERIENCE

-- get me gender and education wise taotal salary, where education is "BBA" and salary is 100000 or more

Select left(ED.GENDER,1), EE.EDUCATION, SUM(EE.SALARY) AS TotalSal,
Case 
     when SUM(EE.SALARY)>400000 then '4 lak bucket'
     when SUM(EE.SALARY)>300000 then '3 lak bucket'
     else 'NA'
END AS Salbucket

from EMP_DETAILS AS ED
inner join EMP_EXPERIENCE AS EE
ON ED.EMP_ID=EE.EMP_ID
Where EE.EDUCATION='BBA'
Group by left(ED.GENDER,1), EE.EDUCATION
Having SUM(EE.SALARY)>=100000


----

CREATE TABLE PERF_202001 (
    ACCOUNT_NUMBER BIGINT PRIMARY KEY,
    STATUS VARCHAR(5),
    YEARMO INT
);


CREATE TABLE PERF_202002 (
    ACCOUNT_NUMBER BIGINT PRIMARY KEY,
    STATUS CHAR(2),
    YEARMO INT
);


INSERT INTO PERF_202001
 (ACCOUNT_NUMBER, STATUS, YEARMO)

VALUES
(1000032547, 'D', 202001),
(1000032548, 'D', 202001),
(1000032549, 'ND', 202001),
(1000032550, 'ND', 202001),
(1000032551, 'ND', 202001),
(1000032552, 'ND', 202001),
(1000032553, 'D', 202001),
(1000032554, 'D', 202001),
(1000032555, 'D', 202001),
(1000032556, 'ND', 202001),
(1000032557, 'ND', 202001),
(1000032558, 'ND', 202001),
(1000032559, 'D', 202001),
(1000032560, 'D', 202001),
(1000032561, 'D', 202001),
(1000032562, 'D', 202001),
(1000032563, 'ND', 202001),
(1000032564, 'ND', 202001),
(1000032565, 'ND', 202001),
(1000032566, 'ND', 202001),
(1000032567, 'ND', 202001),
(1000032568, 'ND', 202001);


INSERT INTO PERF_202002
(ACCOUNT_NUMBER, STATUS, YEARMO)

VALUES
(1000032547, 'ND', 202002),
(1000032548, 'D', 202002),
(1000032549, 'ND', 202002),
(1000032550, 'D', 202002),
(1000032551, 'D', 202002),
(1000032552, 'ND', 202002),
(1000032553, 'D', 202002),
(1000032554, 'ND', 202002),
(1000032555, 'ND', 202002),
(1000032556, 'ND', 202002),
(1000032557, 'D', 202002),
(1000032558, 'ND', 202002),
(1000032559, 'D', 202002),
(1000032560, 'D', 202002),
(1000032561, 'D', 202002),
(1000032562, 'D', 202002),
(1000032563, 'D', 202002),
(1000032569, 'ND', 202002),
(1000032570, 'ND', 202002),
(1000032571, 'ND', 202002),
(1000032572, 'ND', 202002),
(1000032573, 'ND', 202002),
(1000032574, 'ND', 202002);


Select * from PERF_202001
Select * from PERF_202002

Select * from PERF_202001 as J
inner join PERF_202002 as F
on J.ACCOUNT_NUMBER=F.ACCOUNT_NUMBER
WHERE J.STATUS != F.STATUS

Select * from PERF_202001 as J
Right join PERF_202002 as F
on J.ACCOUNT_NUMBER=F.ACCOUNT_NUMBER
Where J.ACCOUNT_NUMBER is null


Select J.ACCOUNT_NUMBER from PERF_202001 as J
Left join PERF_202002 as F
on J.ACCOUNT_NUMBER=F.ACCOUNT_NUMBER
Where F.ACCOUNT_NUMBER is null

-------

-- Create table PROD_UNITS
CREATE TABLE PROD_UNITS (
    Product VARCHAR(20),
    City    VARCHAR(30),
    Units   BIGINT
);

-- Create table PROD_PRICE

CREATE TABLE PROD_PRICE (
    PRODUCT VARCHAR(20),
    CITY    VARCHAR(30),
    PRICE   BIGINT
);

-- Insert all rows IN PROD_UNITS

INSERT INTO PROD_UNITS
 (Product, City, Units)
 
 VALUES
('APPLE', 'BANGALORE', 16100),
('APPLE', 'CHENNAI', 89100),
('APPLE', 'NEW DELHI', 72700),
('APPLE', 'MUMBAI', 77700),
('APPLE', 'HYDERABAD', 12500),
('DELL',  'BANGALORE', 47600),
('DELL',  'CHENNAI', 84200),
('DELL',  'NEW DELHI', 44400),
('DELL',  'MUMBAI', 33800),
('DELL',  'HYDERABAD', 63000),
('HP',    'BANGALORE', 28800),
('HP',    'CHENNAI', 55300),
('HP',    'NEW DELHI', 86900),
('HP',    'MUMBAI', 28700),
('HP',    'HYDERABAD', 44900);


-- Insert all rows IN PROD_PRICE

INSERT INTO PROD_PRICE
 (PRODUCT, CITY, PRICE)

 VALUES
('APPLE', 'BANGALORE', 90000),
('APPLE', 'CHENNAI', 92000),
('APPLE', 'NEW DELHI', 88000),
('APPLE', 'MUMBAI', 89000),
('APPLE', 'HYDERABAD', 95000),
('DELL',  'BANGALORE', 56000),
('DELL',  'CHENNAI', 50000),
('DELL',  'NEW DELHI', 49000),
('DELL',  'MUMBAI', 50000),
('DELL',  'HYDERABAD', 67000),
('ASUS',  'BANGALORE', 69000),
('ASUS',  'CHENNAI', 45000),
('ASUS',  'NEW DELHI', 78000),
('ASUS',  'MUMBAI', 89000),
('ASUS',  'HYDERABAD', 67000);

SELECT * FROM PROD_UNITS
SELECT * FROM PROD_PRICE

Select U.PRODUCT, Sum(U.UNITS*P.PRICE) AS Sales from PROD_UNITS AS U 
inner join PROD_PRICE AS P 
on U.PRODUCT=P.PRODUCT
AND U.CITY=P.CITY
--Where U.PRODUCT='APPLE'
Group by U.PRODUCT



------------------------
------------------------

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

--------------------------------------

CREATE TABLE SELF_JOIN_DATA (
    EMP_NAME      VARCHAR(20) NOT NULL,
    EMP_ID        INT         NOT NULL,
    MANAGER_NAME  VARCHAR(20) NOT NULL,
    MANAGER_ID    INT         NOT NULL,
    PRIMARY KEY (EMP_ID)
);


INSERT INTO SELF_JOIN_DATA
  (EMP_NAME, EMP_ID, MANAGER_NAME, MANAGER_ID)
 VALUES
('BLAKE',  7698, 'KING',  7839),
('CLARK',  7782, 'KING',  7839),
('JONES',  7566, 'KING',  7839),

('MARTIN', 7654, 'BLAKE', 7698),
('ALLEN',  7499, 'BLAKE', 7698),
('TURNER', 7844, 'BLAKE', 7698),
('JAMES',  7900, 'BLAKE', 7698),
('WARD',   7521, 'BLAKE', 7698),

('FORD',   7902, 'JONES', 7566),
('SMITH',  7369, 'FORD',  7902),

('SCOTT',  7788, 'JONES', 7566),
('ADAMS',  7876, 'SCOTT', 7788),

('MILLER', 7934, 'CLARK', 7782);


SELECT * FROM SELF_JOIN_DATA

select C1.EMP_NAME, C1.MANAGER_NAME, C2.MANAGER_NAME as M_M_NAME from 
SELF_JOIN_DATA AS C1
Inner join SELF_JOIN_DATA AS C2
On C1.MANAGER_ID= C2.EMP_ID


--------------------------

create table OrderS(
   Id                   int                  ,
   OrderDate            datetime             not null,
   OrderNumber          nvarchar(10)         ,
   CustomerId           int                  not null,
   TotalAmount          decimal(12,2)        
   )

   insert into OrderS Values
(1,'07-04-2012',542378,85,440),
(2,'07-04-2012',542379,79,1863.4),
(3,'07-04-2012',542380,34,1813),
(4,'07-04-2012',542381,84,670.8),
(5,'07-05-2012',542382,79,3730),
(6,'07-05-2012',542383,34,1444.8),
(7,'07-05-2012',542384,14,625.2),
(8,'07-05-2012',542385,68,2490.5),
(9,'07-06-2012',542386,88,517.8),
(10,'07-06-2012',542387,79,1119.9),
(11,'07-06-2012',542388,20,2018.6),
(12,'07-06-2012',542389,85,2018.6)

Select * from OrderS
-- which all customer did continues 2 days transctions 

Select C1.CustomerId, C1.OrderDate as Day1, C2.OrderDate as Day2 from OrderS AS C1
Inner join OrderS AS C2
On C1.CustomerId=C2.CustomerId
AND Dateadd(day, 1,C1.OrderDate) = C2.OrderDate

-- which all customer did continues 3 days transctions 


Select C1.CustomerId, C1.OrderDate as Day1,
C2.OrderDate as Day2,
C3.OrderDate as day3
from OrderS as C1
inner join OrderS AS C2
ON C1.CustomerId=C2.CustomerId
AND dateadd(day,1,C1.OrderDate)=C2.OrderDate
Inner join OrderS AS C3
on C2.CustomerId=C3.CustomerId
AND dateadd(day,1,C2.OrderDate)=C3.OrderDate

------------------------

Create Table PRODUCT_N
(
 [Id] int,
 [Name] nvarchar(50),
 [Description] nvarchar(250)
)

Create Table PRODUCTSALES_N
(
 Id int ,
 ProductId int,
 UnitPrice int,
 QuantitySold int
)

Insert into PRODUCT_N values (null,'TV', '52 inch black color LCD TV')
Insert into PRODUCT_N values (null,'Laptop', 'Very thin black color acer laptop')
Insert into PRODUCT_N values (1,'Desktop', 'HP high performance desktop')
Insert into PRODUCT_N values (2,'Radio', 'HP high performance Radio')

Insert into PRODUCTSALES_N values(1,null, 450, 5)
Insert into PRODUCTSALES_N values(2,2, 250, 7)
Insert into PRODUCTSALES_N values(3,null, 450, 4)
Insert into PRODUCTSALES_N values(4,3, 450, 9)
Insert into PRODUCTSALES_N values(5,1, 450, 9)
Insert into PRODUCTSALES_N values(6,1, 450, 9)

Select * from PRODUCT_N
Select * from PRODUCTSALES_N

Select ProductId, Sum(QuantitySold) as totalQSa from PRODUCTSALES_N
Group by ProductId

Select P.Name, sum(S.QuantitySold) as totalQSa  from PRODUCT_N AS P
inner join PRODUCTSALES_N AS S
on P.Id=S.ProductId
Group by P.Name


Select P.Name, sum(S.QuantitySold) as totalQSa  from PRODUCT_N AS P
left join PRODUCTSALES_N AS S
on P.Id=S.ProductId
Group by P.Name


-- Order BY -- Sorts the result 

Select P.Name, sum(S.QuantitySold) as totalQSa  from PRODUCT_N AS P
left join PRODUCTSALES_N AS S
on P.Id=S.ProductId
Group by P.Name
Order by totalQSa Desc, Name ASC

-----------------------------------------------------------
-----------------------------------------------------------


use OrderDB;

Select Count(Id) from Customer
-- 91
-- Sales 
Select Sum(totalamount)  AS TOTAL_REVENUE from [dbo].[Order]

select (FirstName+Space(1)+LastName) as C_NAME , Count(O.ID) 
From Customer AS C Inner JOIN [ORDER] AS O
ON C.ID=O.CustomerID
group by (FirstName+Space(1)+LastName)


select C.ID, (FirstName+Space(1)+LastName) as C_NAME , Count(O.ID) as TotalOrder , SUM(O.[TotalAmount]) as Sales
From Customer AS C Inner JOIN [ORDER] AS O
ON C.ID=O.CustomerID
group by C.ID,(FirstName+Space(1)+LastName)


--segment the customer 
-- Get me a cutstomer and his segment cnt transaction and amount  
-- 10 Transaction and 10000 i like Gold 
-- 10 Transactions OR 10000 i like Silver 
-- 10 trsanction No and No 10000 then branze 

Gold  20
Silver 30 
Branze 40
-- Not going to work
-- 
Select 
[CustomerId],
Case 
	when Count(ID)>=10 AND SUm([TotalAmount])>=10000 Then 'Gold'
	when Count(ID)>=10 OR SUm([TotalAmount])>=10000 Then 'Silver'
	when Count(ID)<10 AND SUm([TotalAmount])<10000 Then 'Branze'
	Else 'NA'
END  AS Customer_Segment,
Count([CustomerId]) as cnt,
SUm([TotalAmount]) as amount
From [dbo].[Order]
group by 
[CustomerId]

select * from [dbo].[Product] as P 
left join [dbo].[OrderItem] AS OI 
on P.Id=OI.ProductId
Where OI.Id is null


select P.Id, COunt(OI.ID) from [dbo].[Product] as P 
left join [dbo].[OrderItem] AS OI 
on P.Id=OI.ProductId
group by P.Id
Having COunt(OI.ID)=0


Select 
C.Id as Customer_ID,
C.FirstName,
C.LastName,
C.Country as customer_country,
C.City,
C.Phone as Customer_Phone,
O.Id as ORDERID,
O.OrderDate,
O.OrderNumber,
O.TotalAmount,
OI.Id,
OI.ProductId,
OI.Quantity,
OI.UnitPrice,
P.IsDiscontinued,
P.Package,
P.ProductName,
P.SupplierId,
P.UnitPrice,
S.City,
S.CompanyName,
S.Country,
S.ContactName,
S.Fax,
S.Phone as Supplier_Phone
from Customer AS C
inner join [dbo].[Order] AS O
on C.Id=O.CustomerId
Inner join [dbo].[OrderItem] as OI
on O.Id=OI.OrderId
Inner join Product as P
on OI.ProductId=P.Id
Inner join Supplier as S
on P.SupplierId=S.Id
Order by ProductId
--Where C.id=1

----------------

-- SET_Operators 
-- Union 
-- Union All
-- Except 
-- Intersect 

-- Union 
create table tblindiacustomer (
id int,
Name nVarchar(100),
Email nVarchar(100)
)

insert into tblindiacustomer 
values (1, 'Raj', 'Raj@gmail.com'),
 (2, 'Sam', 'Sam@gmail.com'),
(3, 'Sam', 'Sam@gmail.com')

create table tblUScustomer (
id int,
Name nVarchar(100),
Email nVarchar(100)
)
insert into tblUScustomer values 
(1, 'Ben', 'Ben@gmail.com'),
(2, 'Sam', 'Sam@gmail.com')

CONDITION OF Set operation 
-- No of column same and datatype should be same 

-- Union all keep duplicate and union remove duplicate
-- Union will give result in a sorted order 
-- Union is faster then union all 

Select id, Name, Email from tblindiacustomer
union ALL
Select id, Name, Email from tblUScustomer


Select id, Name, Email from tblindiacustomer
union
Select id, Name, Email from tblUScustomer


-- intersection 
 
 
Select id, Name, Email from tblindiacustomer
--Intersect
Select id, Name, Email from tblUScustomer

Select id, from tblindiacustomer
Intersect
Select id from tblUScustomer

--except   -- in first table not in 2nd table

 
Select id, Name, Email from tblindiacustomer
Except
Select id, Name, Email from tblUScustomer

Select id from tblindiacustomer
Except
Select id from tblUScustomer




Select id from tblUScustomer
Except
Select id from tblindiacustomer




-- sales / probelm / late 
-- Bnaglore   -- SQL SErver
union 
-- Hyd        -- SQL SErver
union
-- Chy        -- SQL SErver

-- Union Except and intersect -- Duplicate / Sort 
-- union union all -- union all 
-- no of column and respective datatype should be same 

create table tblUKcustomer (
id int,
Name nVarchar(100),
Email nVarchar(100)
)
insert into tblUKcustomer values 
(1, 'Ben', 'Ben@gmail.com'),
(2, 'Ram', 'Ram@gmail.com')

--insert into tblUKcustomer values(2, 'Ram', 'Ram@gmail.com')


Select id, Name, Email from tblindiacustomer
Select id, Name, Email from tblUScustomer
Select id, Name, Email from tblUKcustomer


Select id, Name, Email from tblindiacustomer
union all
Select id, Name, Email from tblUScustomer
Union ALL
Select id, Name, Email from tblUKcustomer


Select id, Name, Email from tblindiacustomer
union 
Select id, Name, Email from tblUScustomer
Union 
Select id, Name, Email from tblUKcustomer


Select id, Name, Email from tblindiacustomer
intersect 
Select id, Name, Email from tblUScustomer
Intersect 
Select id, Name, Email from tblUKcustomer


Select id, Name, Email from tblindiacustomer
Except 
Select id, Name, Email from tblUScustomer
Except 
Select id, Name, Email from tblUKcustomer



(Select id, Name, Email from tblindiacustomer
union 
Select id, Name, Email from tblUScustomer)
intersect 
Select id, Name, Email from tblUKcustomer



create table Set1(
S1_ID int
)
insert into Set1 Values(1)
insert into Set1 Values(1)
insert into Set1 Values(2)
insert into Set1 Values(3)
insert into Set1 Values(4)
insert into Set1 Values(4)
insert into Set1 Values(null)

create table Set2(
S2_ID int
)
insert into Set2 Values(1)
insert into Set2 Values(2)
insert into Set2 Values(2)
insert into Set2 Values(3)
insert into Set2 Values(5)
insert into Set2 Values(5)
insert into Set2 Values(null)


create table Set3(
S3_ID int
)
insert into Set3 Values(1)
insert into Set3 Values(2)
insert into Set3 Values(2)
insert into Set3 Values(3)
insert into Set3 Values(5)
insert into Set3 Values(5)
insert into Set3 Values(null)
insert into Set3 Values(null)


Select * from Set1
Select * from Set2
Select * from Set3

-- Distinct -- All are same 
-- unique -- All nulls are same 
-- join -- as its defination 
-- Agg -- ignore the null 
-- Set -- All nulls are same 


Select * from Set1
union 
Select * from Set2
union 
Select * from Set3

Select * from Set1
union ALl
Select * from Set2
union All
Select * from Set3

-- Get me Product which is not sold at all 
-- join and Set 
-- get me customer who didn't ordered at all
-- Join and set 

-- USING JOIN
SELECT * FROM [dbo].[OrderItem] AS OI
RIGHT JOIN [dbo].[Product] AS P
ON
OI.PRODUCTID = P.ID
WHERE OI.ORDERID IS NULL


-- USING SET
SELECT ID FROM [dbo].[Product]
EXCEPT
SELECT PRODUCTID  FROM [dbo].[OrderItem]

-----------------------

Select * from Set2
union all
Select * from Set1
union all
Select * from Set3


Select * from Set2
union
Select * from Set1
union
Select * from Set3


Select * from Set2
except
Select * from Set1
intersect
Select * from Set3

--Intersect 
--Union Except

Select * from Set1 as S1
inner join Set2 as S2
on S1.S1_ID<>S2.S2_ID
inner join Set3 as S3 
on S1.S1_ID<=S3.S3_ID


----------

create table Matches (
Team varchar(100)
)

Insert into Matches
 (TEAM)
values
('RCB'),
('MI'),
('CSK'),
('SRH')


SELECT M1.TEAM AS TEAM1, M2.TEAM AS TEAM2 FROM MATCHES AS M1
CROSS JOIN MATCHES AS M2
WHERE M1.TEAM>M2.TEAM



-----------------------------------------------
-----------------------------------------------


Select * from EMPLOYEE

-- 2nd max salary 

Select Max(Salary) from EMPLOYEE
Where Salary<(Select Max(Salary) from EMPLOYEE)



-- 3rd highest salary  -- 3570
Select Max(Salary) from EMPLOYEE
where Salary<(Select Max(Salary) from EMPLOYEE
Where Salary<(Select Max(Salary) from EMPLOYEE))
Order by Max(Salary)

-- Order by sorting the result 


Select Max(Salary) from EMPLOYEE
	where Salary<
		(Select Max(Salary) from EMPLOYEE
			Where Salary<
				(Select Max(Salary) from EMPLOYEE))
Order by Max(Salary)

-- Scalar value 
-- multi valued sub quesry 
-- Table value sub quesry 

Select Max(salary) from EMPLOYEE
WHere Salary!=(Select Max(salary) from EMPLOYEE)

-- if sub quer gives u one row of result then it is called sclar valued sub q


--How many units/ Quntity of Chai is sold 


-- How many Qunty of Konbu is sold 

Select Sum(Quantity) from [dbo].[OrderItem]
where ProductId=(
Select Id from Product
WHere ProductName='Konbu')




-- get me total no of units sold on Supplier "Exotic Liquids"


select sum(Quantity) from [dbo].[OrderItem]
Where ProductId in (select Id from Product Where SupplierId=     -- multi valued sub query 
(Select Id from Supplier where CompanyName='Exotic Liquids')     -- Scalare or single valued sub Q
)

select sum(Quantity) from [dbo].[OrderItem] as Oi 
inner join Product as P on P.Id=Oi.ProductId
inner join Supplier as S on S.Id=P.SupplierId
where CompanyName='Exotic Liquids'




select * from [dbo].[OrderItem]
Where ProductId in (select Id from Product Where SupplierId in     -- multi valued sub query 
(Select Id from Supplier )     -- Scalare or single valued sub Q
)

select * from [dbo].[OrderItem] as Oi 
inner join Product as P on P.Id=Oi.ProductId
inner join Supplier as S on S.Id=P.SupplierId
--where CompanyName='Exotic Liquids'

-- Sub quesry can be repleced with Joins 

-- 1 table 1M    2nd has 1000 records -- SubQ
-- 1M    0.5  -- joins 



select sum(Quantity) from [dbo].[OrderItem]
Where ProductId in (1,
2,
3)




Select sum(UnitPrice) 
from 
(select 
oi.OrderId,
oi.Id as OID,
P.Id as PID,
Oi.UnitPrice ,
S.CompanyName
from [dbo].[OrderItem] as Oi 
inner join Product as P on P.Id=Oi.ProductId
inner join Supplier as S on S.Id=P.SupplierId) AS A   -- Table valued sub query 

Only one column 
Single valued = != 
Multi valued in not in 

Table valued SQ -- more thenone column tahta will act like a table 
From u must have aliace name 




Create Table tblProducts_subQ
(
 [Id] int identity primary key,
 [Name] nvarchar(50),
 [Description] nvarchar(250)
)

Create Table tblProductSales_SubQ
(
 Id int primary key identity,
 ProductId int foreign key references tblProducts_subQ(Id),
 UnitPrice int,
 QuantitySold int
)

Insert into tblProducts_subQ values ('TV', '52 inch black color LCD TV')
Insert into tblProducts_subQ values ('Laptop', 'Very thin black color acer laptop')
Insert into tblProducts_subQ values ('Desktop', 'HP high performance desktop')

Insert into tblProductSales_SubQ values(3, 450, 5)
Insert into tblProductSales_SubQ values(2, 250, 7)
Insert into tblProductSales_SubQ values(3, 450, 4)
Insert into tblProductSales_SubQ values(3, 450, 9)

Select * from tblProducts_subQ
Select * from tblProductSales_SubQ

-- total quntisold product TV 
-- join 

select sum(QuantitySold) from tblProductSales_SubQ as S
inner join tblProducts_subQ as P 
on S.Productid=P.Id
WHere P.Name='Laptop'


select sum(QuantitySold) from tblProductSales_SubQ 
Where Productid=(Select id from tblProducts_subQ where name='Laptop')

-- get a productid which is not sold at all 

-- Joins 
-- SUBQ
-- Set operators 

-- joins 
select P.* from tblProductSales_SubQ as S
Right join tblProducts_subQ as P 
on S.ProductId=P.Id
Where S.id is null

-- SubQ
select * from tblProducts_subQ
where id not in (Select distinct Productid from tblProductSales_SubQ)

-- Set opeartors 
Select * from tblProducts_subQ where Id=
(select id from tblProducts_subQ
Except 
Select Productid from tblProductSales_SubQ)

--------------------------------------------------------
--------------------------------------------------------



-- SIngle Sclared value 
-- Multi vaued 
-- Table value  -- more ten one column it will act like other table 



Select * from 
(Select * from tblProductSales_SubQ Where Id>2) A



CREATE TABLE EMPLOYEE_SUBQ
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


INSERT INTO EMPLOYEE_SUBQ
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


CREATE TABLE DEPARTMENT_SUBQ
(
   DEPTCODE   INT Primary Key,
   DeptName   Varchar(30),
   LOCATION   VARCHAR(33)
);

  INSERT INTO DEPARTMENT_SUBQ VALUES (10, 'FINANCE', 'EDINBURGH'),
                              (20,'SOFTWARE','PADDINGTON'),
                              (30, 'SALES', 'MAIDSTONE'),
                              (40,'MARKETING', 'DARLINGTON'),
                              (50,'ADMIN', 'BIRMINGHAM');

Select * from EMPLOYEE_SUBQ
Select * from DEPARTMENT_SUBQ

--get me all the emp details who's department is SORTWARE

Select * from EMPLOYEE_SUBQ where DEPTCODE=(select DEPTCODE from DEPARTMENT_SUBQ Where DEPTNAME='SOFTWARE')


Select * from EMPLOYEE_SUBQ where DEPTCODE in (select DEPTCODE from DEPARTMENT_SUBQ Where DEPTNAME in ('SOFTWARE', 'FINANCE'))

any   OR 
All   AND 

-- i want  list of Emp Who's salary is more any one of the TONY TIM

Select * from EMPLOYEE_SUBQ Where Salary> 2800 OR Salary> 1600

Select * from EMPLOYEE_SUBQ Where Salary> (Select Salary from EMPLOYEE_SUBQ where EmpFName='TONY')
                                OR Salary> (Select Salary from EMPLOYEE_SUBQ where EmpFName='TIM')


Select * from EMPLOYEE_SUBQ Where Salary > ANY (Select Salary from EMPLOYEE_SUBQ where EmpFName in ('TONY','TIM' ))


WENDY
SAM
TIM

1600>2800
or 1600>1600

MADII


Select * from EMPLOYEE_SUBQ Where Salary> 2800 AND Salary> 1600

Select * from EMPLOYEE_SUBQ Where Salary> (Select Salary from EMPLOYEE_SUBQ where EmpFName='TONY')
                                AND Salary> (Select Salary from EMPLOYEE_SUBQ where EmpFName='TIM')


Select * from EMPLOYEE_SUBQ Where Salary > ALL (Select Salary from EMPLOYEE_SUBQ where EmpFName in ('TONY','TIM' ))

-- Error 
Select * from EMPLOYEE_SUBQ
Where EmpCode in (Select EmpCode, EmpFname from EMPLOYEE_SUBQ where Salary>3000)


-- COrrelated SubQuesry 
-- inner Quesry / Nested Quesry / Sub QUesry will be dependent on outer QUesry 

Select * from tblProducts_subQ
Select * from tblProductSales_SubQ

Select Name , Sum(QuantitySold)
from tblProducts_subQ as P left join 
tblProductSales_SubQ AS S on 
P.id=S.ProductId
Group by Name


Select Name,
(Select Sum(QuantitySold) from tblProductSales_SubQ Where ProductId=2)
from tblProducts_subQ

tblProducts_subQ
1	TV	52 inch black color LCD TV
2	Laptop	Very thin black color acer laptop

TV Null
Laptop 7


-- get me product id which is not sold 
-- join 
-- Except -- Set op[erators 
-- Sub QUesry Not in 

Select ID from [dbo].[Product] as P
where not Exists  
(Select * From OrderItem  as OI Where OI.ProductId=P.Id)

--segment the customer 
-- Get me a cutstomer and his segment cnt transaction and amount  
-- 10 Transaction and 10000 i like Gold 
-- 10 Transactions OR 10000 i like Silver 
-- 10 trsanction No and No 10000 then branze 

--Customer, Total Transaction  Total amount 


Select C.*, O.*,
Case 
	when O.Total_Transactio>=10 And O.To_Sales>=10000 Then 'Gold'
	when O.Total_Transactio>=10 OR O.To_Sales>=10000 Then 'Silver'
	when O.Total_Transactio<10 AND O.To_Sales<10000 Then 'Branze'
	ELSE 'NA' 
END as Customer_Seg
from Customer AS C
inner join 
(Select CustomerId, 
Count(id) as Total_Transactio,
Sum(TotalAmount) as To_Sales
from [dbo].[Order]
Group by CustomerId) AS O
on C.Id=O.CustomerId
Order by C.Id

	
-------------------------------------------------------
-------------------------------------------------------	

-- window functions


Select *, Round((Cast(Salary as Decimal(10,2))/Cast(Sumsalary as Decimal(10,2)))*100,2) as Percentage_Contr from EMPLOYEE_SUBQ
Cross join
(Select Sum(salary) as Sumsalary  from EMPLOYEE_SUBQ) AS Sales

Step 1  -- Sales  Sumsalary one row 51930 
Step2  -- from EMPLOYEE_SUBQ
Step 3 Cross join  E.*+ Sales*
Step 4 Select *

select 2800.00 /51930
        Decimal  Int

		/*
Syntax
Window_Functions(Expression)
OVER([Partition by Cluse Experssions ]
     [ORDER by Cluse Experssions ]
	 ROW or RANGES Clause
*/


Select EmpCode, EmpFName, EmpLName, JOB, Manager, Salary, Commission,
Sum(Salary) Over() as SumSal
from EMPLOYEE_SUBQ

-- I want Each Emp Contribution with respect to JOB Title 


Select A.*, B.Sumsal from EMPLOYEE_SUBQ as A
inner join
(Select JOB, SUm(salary) as Sumsal from EMPLOYEE_SUBQ
group by JOB) AS B
on A.Job=B.Job

---

-- Using Join

Select A.*, B.Sumsal, ((Cast(Salary as decimal(10,2))/Cast(Sumsal as decimal(10,2)))*100) as PerCont from EMPLOYEE_SUBQ AS A
inner join
(Select JOB, SUm(salary) as Sumsal from EMPLOYEE_SUBQ
group by JOB) AS B
ON A.JOB=B.JOB


---- Using corelated SubQuery

Select * , ((Cast(Salary as decimal(10,2))/Cast(Sumsal as decimal(10,2)))*100) as PerCount
from 
(
Select *,
(Select SUm(salary) from EMPLOYEE_SUBQ
Where JOB=A.Job
group by JOB) as Sumsal
from EMPLOYEE_SUBQ AS A
) B


-- Window Function 


Select *,
Cast(salary as Decimal(10,2))/Cast(sumSalary_All_rows_as_window as Decimal(10,2))*100 as Per_Contru_All,
Cast(salary as Decimal(10,2))/Cast(sumSalary_JOB_Window as Decimal(10,2))*100 as Per_Contru_JOB
From
(Select *,
Sum(salary) OVER() as sumSalary_All_rows_as_window,
Sum(salary) OVER(Partition by JOB) as sumSalary_JOB_Window
from EMPLOYEE_SUBQ) AS EMP

-- Types of window functions 
-- Aggregated Sum min Max Avg Count 
-- Ranking Window -- RANK denseRank Rownumber 
-- Valued Windo function 
-- Lead lag 

-- i want 

Select Distinct Country from [dbo].[Customer]
cross join
Select Count(Id) as totalCustomers from [dbo].[Customer]
inner join
select Country, Count(Id) from [dbo].[Customer]
Group by Country


Select CP.Country,
 (cast(CP.People AS Decimal(10,2))/ cast(CT.Total AS Decimal(10,2)) * 100) AS Percentage
 FROM
 (
 Select Country, Count(Id) AS People from [dbo].[Customer]
   Group BY Country
) AS CP
Inner join
(
 Select Count(Id) AS Total From [dbo].[Customer]
) AS CT
ON cp.country=country;


--- window function

Select Country, Cast(totalCustomers_Country as decimal(10,2))/Cast(totalCustomers as decimal(10,2))*100
From
(Select Distinct Country,
Count(Id) Over() as totalCustomers,
Count(Id) Over(Partition by Country) as totalCustomers_Country
from [dbo].[Customer]) AS A

--
--segment the customer 
-- Get me a cutstomer and his segment cnt transaction and amount  
--  Transaction is more then Avg Transaction  and Amount is more then avg i like Gold 
-- 10 Transactions OR 10000 i like Silver 
-- 10 trsanction No and No 10000 then branze 

-- 
--Select Customer_ID,COunt(Transa), Sum(amount), Avg(tran), Avg(amount) Status 

Select *,
Case 
     when TAmount>=AVG_Amount AND TTran>=AVG_Trans Then 'GOLD'
	 when TAmount>=AVG_Amount OR TTran>=AVG_Trans Then 'Silver'
	 when TAmount<AVG_Amount AND TTran<AVG_Trans Then 'Branze'
	 ELSE 'NA'
END as Customer_Segment
from 
(
Select *,
Avg(TAmount) OVER() as AVG_Amount,
AVG(TTran) OVER() AS AVG_Trans
from 
(
Select CustomerId, 
    sum([TotalAmount]) as TAmount,
	Count([Id]) as TTran
from [Order]
Group by CustomerId
)AS A
) AS B




----------------------------------------
----------------------------------------

-- how window function works 
-- Agg Window 
-- Ranking Window 
-- Valued Windo function

-- Agg -- Select Group Sum 
-- Group by or u just sum()
-- Agg partition by 

Select *,
Sum(Salary) OVER() As TotalSal ,
Sum(Salary) Over(Partition by JOb) AS JobTotalSal,
Max(Salary) Over(Partition by JOb) AS MaxSal
from EMPLOYEE_SUBQ


Select *,
Sum(Salary) OVER() As TotalSal ,
Sum(Salary) Over(Partition by JOb) AS JobTotalSal,
Sum(Salary) OVER(Order by EmpFName) as RunningTotal, -- Range between Unbounded preceding and Current rows 
Sum(Salary) Over(Partition by JOB Order by EmpFName) as runningtoalbyjob
from EMPLOYEE_SUBQ


-- Product wise sum of sales 
-- Product Name , Sum(sales)


Select *,
sum(Sales) Over(Order by Sales Desc) as Running_Total
from
(select P.ProductName, Sum(OI.UnitPrice* Quantity) AS SAles	 from Product AS P 
inner join OrderItem as OI 
on P.Id=OI.ProductId
Group by ProductName) AS PS



-- How many Min number customers Contribute 80% Sales 

-- running total of sales from decending order 
-- 36
Select Count(*)
from (
Select *,
sum(Sales) Over(Order by Sales Desc) as Running_Total,
Sum(Sales) Over() as TotalSales
from
(select P.ProductName, Sum(OI.UnitPrice* Quantity) AS SAles	 from Product AS P 
inner join OrderItem as OI 
on P.Id=OI.ProductId
Group by ProductName) AS PS
) AS RT
Where (Running_Total/TotalSales)*100<=81

-- Window Functions 
-- Aggrigated Window 
-- Ranking 
-- Valued Window Fun
-- Aggrigated Window 
-- Group by 
-- 

Select Job, sum(Salary) as Sumsal
from EMPLOYEE_SUBQ
Group by Job

ANALYST	20000
MANAGER	9930
PRESIDENT	5000
SALESMAN	4850
SOFTWARE ENGINEER	9200
TECHNICAL LEAD	2950

Select *, (Cast(Salary as decimal(10,2))/SumSal)*100 as PerShare
---             Int                        int 
---          Explicit Convert            Implicitly        
From 
(
Select *,
sum(Salary) Over(Partition by JOB) as SumSal
from EMPLOYEE_SUBQ
) A

Select JOB,Sum(salary) from EMPLOYEE_SUBQ
Group by JOB

Select *,
Sum(Salary) OVER()  as OverallSal,
Sum(salary) Over(Order by Salary) as RunOrSalSum,
Sum(Salary) OVER(Partition by JOB)  as JobWiseSal,
Sum(Salary) OVER(Partition by JOB Order by Salary Desc)  as RangeRUnJobWiseSal,
Sum(Salary) OVER(Partition by JOB Order by Salary Desc
Rows between UNBOUNDED PRECEDING AND CURRENT ROW)  as RowsRUnJobWiseSal,
Avg(Salary) OVER(Partition by JOB Order by Salary Desc
Range between UNBOUNDED PRECEDING AND CURRENT ROW)
 as RangesRunAvg, -- Default Ranges all duplicates will be taken into account as same 
Avg(Salary) OVER(Partition by JOB Order by Salary Desc 
Rows between UNBOUNDED PRECEDING AND CURRENT ROW) as RowsRunAvg
from EMPLOYEE_SUBQ


-- Order by COlumn Ranges unbounded preceding and Current row 
-- Rows -- Squancial  and Ranges -- All duplicated values 



Select *, cast(salary as decimal(10,2))/cast(OverallSal as decimal(10,2))*100 as OverPerShare,
cast(salary as decimal(10,2))/cast(JobWiseSal as decimal(10,2))*100 as JobWisePerShare
From 
(
Select *,
Sum(Salary) OVER()  as OverallSal,
-- Sum(salary) Over(Order by Salary) as OrSalSum,
Sum(Salary) OVER(Partition by JOB)  as JobWiseSal
from EMPLOYEE_SUBQ
)A


select *, 
MIN(Salary) OVER(Partition by JOB Order by Salary Desc
Rows Between unbounded PRECEDING AND CURRENT row) as Max_sal_on_JOB_Order_Sales
From EMPLOYEE_SUBQ


select *, 
MIN(Salary) OVER(Partition by JOB Order by Salary Desc
Rows Between unbounded PRECEDING AND UNBOUNDED FOLLOWING) as Max_sal_on_JOB_Order_Sales
From EMPLOYEE_SUBQ


select *, 
MIN(Salary) OVER(Partition by JOB Order by Salary Desc
Rows Between 1 PRECEDING AND 1 FOLLOWING) as Max_sal_on_JOB_Order_Sales
From EMPLOYEE_SUBQ



-----------------------------------------------------------------
-----------------------------------------------------------------



--WindowFun(Exper) Over(Partition by ------ Order BY Salary Ranges between unbounded preceding and current row)


-- Orders DB 
-- segment customer 
-- if customer total sales > Avg_totalsales and customer_transaction>Avg_transaction gold 
-- if customer total sales > Avg_totalsales OR customer_transaction>Avg_transaction Silver 
-- if customer total sales < Avg_totalsales and customer_transaction<Avg_transaction gold

--All transaction details  Sales Transaction AvgSales Avg_Transaction

Select *,
Case 
	when Sales>=AvgSales AND NoOfTran>=AvgNoOfTran Then 'Gold'
	when Sales>=AvgSales OR NoOfTran>=AvgNoOfTran Then 'Silver'
	when Sales !>AvgSales AND NoOfTran!>AvgNoOfTran Then 'Branze'
	Else 'NA'
END AS Customer_Segment
from 
(
Select * ,
Avg(Sales) Over() as AvgSales,
Avg(NoOfTran) Over() as AvgNoOfTran
from 
(
Select C.Id, C.FirstName, C.LastName,O.OrderDate, O.OrderNumber, O.TotalAmount,
sum(TotalAmount) Over(Partition by C.id) as Sales,
Count(OrderNumber) Over(Partition by C.ID) as NoOfTran
from Customer AS C 
inner join [dbo].[Order] as O
on C.Id=O.CustomerId
) AS A
)AS B



use company

Select *,
Avg(Age) Over(partition by Company, GENDER Order by Age) as Avg_Age
from EMP_DETAILS

-- Ranking Window Function 
-- Row_numner()
-- Rank()
-- Dense_rank()

Select *,
Row_number() Over(Order by Salary Desc) as RN,
Dense_RANK() Over(Order by Salary Desc) as DR,
RANK() Over(Order by Salary Desc) as RR
from EMPLOYEE_SUBQ
