SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Person].[EmailAdderessList] 
  @EmailDomainName VARCHAR(30) = 'adventure-works.com'
, @EmailPersonName VARCHAR(50) = '%'
AS
  SELECT
    email.EmailAddressID AS EmailID,
    email.EmailAddress AS EmailAddress
  FROM Person.EmailAddress email
  WHERE LEFT(email.EmailAddress, CHARINDEX('@', email.EmailAddress) - 1)
  LIKE @EmailPersonName
  AND RIGHT(email.EmailAddress, LEN(email.EmailAddress) - CHARINDEX('@', email.EmailAddress))
  LIKE @EmailDomainName;
GO