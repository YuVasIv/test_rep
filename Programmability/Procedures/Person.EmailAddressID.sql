SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Person].[EmailAddressID] 
  @EmailAddress VARCHAR(30) = '%'
AS
  DECLARE @EmailAddressList VARCHAR(30)
  SELECT
    email.EmailAddressID AS EmailID
  FROM Person.EmailAddress email
  WHERE email.EmailAddress LIKE @EmailAddress;
GO