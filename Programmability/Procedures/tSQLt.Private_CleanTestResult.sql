SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [tSQLt].[Private_CleanTestResult]
AS
BEGIN
   DELETE FROM tSQLt.TestResult;
END;
GO