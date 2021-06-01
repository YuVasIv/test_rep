SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE   VIEW [Sales].[vwCustomer]
AS
SELECT        LastName, Phone, Email, Address, Zip, State
FROM            Sales.Customer
GO