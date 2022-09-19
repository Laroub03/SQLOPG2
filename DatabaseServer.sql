USE [Master]
GO
CREATE DATABASE [Sales]
GO
USE [Sales]
GO
CREATE TABLE [dbo].[Product]
(
[ProductId] [uniqueidentifier] DEFAULT NEWID() NOT NULL,
[ProductName] [nchar](50) NULL,
[ProductDescription] [nchar](3000) NULL,
[ProductPrice] MONEY NULL
) ON [PRIMARY]
GOUSE [Sales]
GO
WHILE (1=1)
 BEGIN
 TRUNCATE TABLE [Sales].[dbo].[Product]
 DECLARE @Record INT
 SET @Record=1
 WHILE @Record<=10000
 BEGIN
 INSERT INTO [Sales].[dbo].[Product]
 ([ProductName] ,[ProductDescription],[ProductPrice])
 VALUES ('Product ' + STR(@Record), 'Description ' + STR(@Record), @Record*100/3)
 SET @RECORD = @RECORD+1
 END
 SELECT COUNT(ProductID) as RecordsCreated FROM [Sales].[dbo].[Product]
END

USE Sales
CREATE lOGIN OH WITH PASSWORD = 'Login1234'
CREATE USER [Ole Hansen] FROM LOGIN OH
GRANT SELECT to[Ole Hansen]

CREATE LOGIN LP WITH PASSWORD = 'Login1234'
CREATE USER [Lis Petersen] FROM LOGIN LP
GRANT SELECT, INSERT to [Lis Petersen]

CREATE LOGIN LL WITH PASSWORD = 'Login1234'
CREATE USER [Lars Larsen] FROM LOGIN LL
GRANT DELETE, SELECT, INSERT TO [Lars Larsen]

CREATE LOGIN AL WITH PASSWORD = 'Login1234'
CREATE USER [Ayoub] FROM LOGIN AL
GRANT CONTROL, ALTER to  [Ayoub]

SELECT CURRENT_TIMESTAMP;
SELECT * from Product
SELECT CURRENT_TIMESTAMP;


--1. Hvem behøver en database?
-- Alle der har data, der skal opbevares. For det meste virksomheder, der bruger databaser som SQL eller FTP

--2. Hvad er en database?
-- Hvor du kan opbevarer dine data. 

--3. Hvad er forskellen på en database og et regneark?
-- Ofte er der ikke så meget data i regnearket. Database giver flere personer adgang til data på samme tid

--4. Hvad er SQL?
-- Structured Query Language er et sprog der bruges til databaseoperationer.

--5. Hvad er SQL – DDL?
-- Data Definition Language bruges til CREATE, DELETE og RENAME.

--6. Hvad er SQL – DML?
-- Data Manipulation Language bruges til at manipulere tabeller, indsætte opdateringer og slette tabeller.

--7. Hvad er SQL – DCL?
-- Data Control Language er et sprog, der giver de rettigheder der skal bruges ved hjælp af GRANT og REVOKE

--8. Hvad er en Stored Procedure
-- Med gemt procedure kan du SELCT eller INSERT. Sig blot navnet på den procedure, du vil oprette.

--9. Hvad er et view
-- Views er ligsom et gemte selected

--10. Hvad er DBMS
-- Det et interface til at få adgang til databaser.