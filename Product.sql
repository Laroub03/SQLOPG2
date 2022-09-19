--Ayoub Laroub
use ERD_TestDB
go

-- Full name
select FirstName, LastName from customer order by firstname asc

-- Uppercase Company name
CREATE PROCEDURE allcompanies
as
select upper(CompanyName) from Supplier

 --Product Price
CREATE PROCEDURE product_price @input int
AS
SELECT * FROM Product WHERE UnitPrice > @input;
GO

-- insert customer
CREATE PROCEDURE insertcustomer
	@firstname nvarchar(30),
	@lastname nvarchar(30),
	@city nvarchar(30),
	@country nvarchar(30),
	@phone nvarchar(12),
	@id int OUTPUT
AS
	INSERT INTO Customer VALUES(@firstname,@lastname,@city,@country,@phone)

	SELECT @id = SCOPE_IDENTITY()