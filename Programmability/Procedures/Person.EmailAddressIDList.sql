SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Person].[EmailAddressIDList] 
  @EmailAddress VARCHAR(30) = '%'
AS
  SELECT
    email.EmailAddressID AS EmailID
  FROM Person.EmailAddress email
  WHERE email.EmailAddress LIKE @EmailAddress;
GO